# Menomon: espelho do servidor (só leitura)

Cópia do que roda no servidor Menomon, para consulta. É atualizada pelo próprio servidor (`sync.sh`).
Os jogadores não aparecem aqui.

| pasta/arquivo | conteúdo |
|---|---|
| `mods.md` | todos os jars de `mods/` (ativos e `.disabled`), com modid, versão e sha256. Os jars não vêm junto (417 MB); os do cliente estão no modpack. |
| `datapacks/` | datapacks do mundo (`world_menomon2/datapacks`): estruturas, treinadores do RCT, loot, receitas, invocações etc. |
| `config/` | `config/` do servidor, já revisado |

## O que fica de fora

- `world/` inteiro: dados de jogadores (PCs, times, stats, conquistas) e arquivos de região
- `playerdata/`, `usercache.json`, `ops.json`, `whitelist.json`, `banned-*.json`, `server.properties` e os logs
- Do `config/`: MinerTrack (anti-xray), AuthMe, SkinRestorer, `resourceful-config-web.json`,
  `cobbleaction_optout.json`, `journeymap-server.json`, `emotecraft_emote_map.json`, `polymer/` e `fancymenu/`
  (têm UUIDs de jogadores, perfis, senhas ou só assets de cliente)
- Backups (`*.bak*`, `*.orig*`, `*.v24bak`)

Não há coordenadas aqui. Para achar estruturas, explore o mundo.
