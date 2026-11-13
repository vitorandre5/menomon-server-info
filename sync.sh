#!/bin/bash
# Espelho só-leitura do servidor Menomon -> github.com/vitorandre5/menomon-server-info
set -euo pipefail
SRV=/opt/crafty/servers/3d6d9629-0853-41da-a44d-585119aadb61
R=/root/menomon-mirror/repo
export GIT_SSH_COMMAND="ssh -i /root/.ssh/menomon_mirror_ed25519 -o IdentitiesOnly=yes -o StrictHostKeyChecking=accept-new"
cd "$R"
git pull -q --rebase origin main 2>/dev/null || true
find . -mindepth 1 -maxdepth 1 ! -name .git ! -name README.md -exec rm -r -- {} +

# config/ revisado: fora anti-xray, auth, skins, perfis, UUIDs de jogadores e assets de cliente
tar -C "$SRV" -cf - \
  --exclude='config/MinerTrack' --exclude='config/skinrestorer' --exclude='config/authme.jsonc' \
  --exclude='config/resourceful-config-web.json' --exclude='config/cobbleaction_optout.json' \
  --exclude='config/journeymap-server.json' --exclude='config/emotecraft_emote_map.json' \
  --exclude='config/polymer' --exclude='config/fancymenu' \
  --exclude='*.bak*' --exclude='*.orig*' --exclude='*.log' \
  config | tar -xf -

# datapacks do mundo (sem backups)
mkdir -p datapacks
find "$SRV/world_menomon2/datapacks" -mindepth 1 -maxdepth 1 ! -name '*.bak*' ! -name '*.v2*bak' ! -name '*.desativado' \
  -exec cp -r -- {} datapacks/ \;

# lista de mods (jars grandes demais para git)
python3 - "$SRV/mods" > mods.md <<'PY'
import sys, os, zipfile, json, hashlib
d = sys.argv[1]
print("# Mods do servidor\n\nAtivos e desativados (`.disabled`). Hash sha256 abreviado.\n")
print("| arquivo | modid | versão | estado | MB | sha256 |\n|---|---|---|---|---|---|")
for f in sorted(os.listdir(d), key=str.lower):
    p = os.path.join(d, f)
    if not os.path.isfile(p) or ".jar" not in f: continue
    st = "ativo" if f.endswith(".jar") else "desativado"
    mid = ver = ""
    try:
        with zipfile.ZipFile(p) as z:
            j = json.loads(z.read("fabric.mod.json").decode("utf-8", "replace"), strict=False)
            mid, ver = j.get("id", ""), str(j.get("version", ""))
    except Exception: pass
    h = hashlib.sha256(open(p, "rb").read()).hexdigest()[:16]
    print(f"| {f} | {mid} | {ver} | {st} | {os.path.getsize(p)/1e6:.1f} | {h} |")
PY

git add -A
if ! git diff --cached --quiet; then
  git commit -q -m "sync $(date -u +%Y-%m-%dT%H:%MZ)"
  git push -q origin HEAD:main
  echo "SYNC: enviado"
else
  echo "SYNC: sem mudanças"
fi
