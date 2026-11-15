execute as @a[tag=mb_h1,scores={mb_used=1..}] at @s run function menomon_mapas:nether {m:"blaine"}
execute as @a[tag=mb_h2,scores={mb_used=1..}] at @s run function menomon_mapas:end {m:"kanto_league"}
execute as @a[tag=mb_h3,scores={mb_used=1..}] at @s run function menomon_mapas:nether {m:"sandra"}
execute as @a[tag=mb_h4,scores={mb_used=1..}] at @s run function menomon_mapas:end {m:"johto_league"}
scoreboard players set @a[scores={mb_used=1..}] mb_used 0
tag @a remove mb_h1
tag @a remove mb_h2
tag @a remove mb_h3
tag @a remove mb_h4
tag @a[predicate=menomon_mapas:segura_1] add mb_h1
tag @a[predicate=menomon_mapas:segura_2] add mb_h2
tag @a[predicate=menomon_mapas:segura_3] add mb_h3
tag @a[predicate=menomon_mapas:segura_4] add mb_h4
