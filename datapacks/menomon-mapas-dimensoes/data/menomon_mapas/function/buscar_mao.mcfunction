$execute in minecraft:$(d) positioned $(x) 64 $(z) run loot replace entity @s $(s) loot menomon_mapas:$(m)
$execute unless items entity @s $(s) minecraft:filled_map run tellraw @s {"text":"Nenhuma estrutura encontrada por perto. Tente de novo em outra area.","color":"red"}
$execute if items entity @s $(s) minecraft:filled_map run tellraw @s {"text":"Estrutura localizada! Veja o marcador no mapa.","color":"green"}
