scoreboard players set @s menomon_inv_ok 0
execute store result score @s menomon_inv_rng run random value 1..4096
$execute if score @s menomon_inv_rng matches 1 positioned ^ ^ ^3 store success score @s menomon_inv_ok run spawnpokemon $(especie) level=70 min_perfect_ivs=3 shiny=yes
$execute unless score @s menomon_inv_rng matches 1 positioned ^ ^ ^3 store success score @s menomon_inv_ok run spawnpokemon $(especie) level=70 min_perfect_ivs=3
execute if score @s menomon_inv_ok matches 0 run return run tellraw @s {"translate":"menomon_inv.msg.failed","fallback":"The summon failed (no free space?). The item was not consumed; try another spot.","color":"red"}
$clear @s minecraft:carrot_on_a_stick[minecraft:custom_data={menomon_invocacao:"$(especie)"}] 1
scoreboard players set @s menomon_inv_cd 600
playsound minecraft:block.end_portal.spawn player @a[distance=..48] ~ ~ ~ 0.6 1.2
particle minecraft:end_rod ^ ^1 ^3 0.6 1 0.6 0.05 60 force
$tellraw @a[distance=..96] [{"text":"✦ ","color":"gold"},{"translate":"menomon_inv.msg.summoned","fallback":"%s summoned %s!","color":"gold","with":[{"selector":"@s","color":"yellow"},{"text":"$(nome)","color":"light_purple","bold":true}]}]
