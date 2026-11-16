execute store result score #a mb_tmp run clear @s minecraft:map 0
$execute in minecraft:$(d) positioned $(x) 64 $(z) run loot give @s loot menomon_mapas:$(m)
execute store result score #b mb_tmp run clear @s minecraft:map 0
execute if score #b mb_tmp > #a mb_tmp run tellraw @s {"text":"Nenhuma estrutura encontrada por perto. Tente de novo em outra area.","color":"red"}
execute unless score #b mb_tmp > #a mb_tmp run tellraw @s {"text":"Estrutura localizada! Veja o marcador no mapa.","color":"green"}
