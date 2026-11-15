$execute in minecraft:$(d) positioned $(x) 64 $(z) run loot replace entity @s weapon.mainhand loot menomon_mapas:$(m)
execute unless items entity @s weapon.mainhand minecraft:filled_map[minecraft:map_decorations] run tellraw @s {"text":"Nenhuma estrutura encontrada por perto. Tente de novo em outra area.","color":"red"}
