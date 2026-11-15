execute store result score #x mb_tmp run data get entity @s Pos[0] 1
execute store result score #z mb_tmp run data get entity @s Pos[2] 1
execute if dimension minecraft:overworld run scoreboard players operation #x mb_tmp /= #8 mb_tmp
execute if dimension minecraft:overworld run scoreboard players operation #z mb_tmp /= #8 mb_tmp
execute if dimension minecraft:the_end run scoreboard players set #x mb_tmp 0
execute if dimension minecraft:the_end run scoreboard players set #z mb_tmp 0
execute store result storage menomon_mapas:t x int 1 run scoreboard players get #x mb_tmp
execute store result storage menomon_mapas:t z int 1 run scoreboard players get #z mb_tmp
data modify storage menomon_mapas:t d set value "the_nether"
$data modify storage menomon_mapas:t m set value "$(m)"
function menomon_mapas:buscar with storage menomon_mapas:t
