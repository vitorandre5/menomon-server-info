# barra de chefe do Rayquaza (como a do dragao): roda como o Rayquaza, dentro de execute in the_end
# sem PersistenceRequired o despawner do Cobblemon pode remover o Rayquaza
execute unless data entity @s {PersistenceRequired:1b} run data merge entity @s {PersistenceRequired:1b}
# vida real do Pokemon (Pokemon.Health); o maximo e o maior valor ja visto neste Rayquaza
execute store result score #hp menomon_end run data get entity @s Pokemon.Health
execute if score #hp menomon_end > #hpmax menomon_end run scoreboard players operation #hpmax menomon_end = #hp menomon_end
execute store result bossbar menomon_end:ray max run scoreboard players get #hpmax menomon_end
execute store result bossbar menomon_end:ray value run scoreboard players get #hp menomon_end
bossbar set menomon_end:ray visible true
bossbar set menomon_end:ray players @a[distance=0..]
