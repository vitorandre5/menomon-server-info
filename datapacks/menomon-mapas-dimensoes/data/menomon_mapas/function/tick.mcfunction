# O mod Nether Map trata o clique do mapa vazio em todas as dimensoes. Quando o mapa usado era o
# ultimo da pilha (sobrevivencia), ele conta a estatistica no item 'air' e deixa um filled_map comum
# na mesma mao: trocamos esse mapa pelo mapa de exploracao. Com pilha maior ou no criativo a
# estatistica cai em 'map' e o mapa nomeado continua na mao: entregamos o mapa localizado a parte.
# As tags mb_hN/mb_oN dizem que mapa nomeado estava na mao/mao secundaria no tick anterior.
execute as @a[tag=mb_h1,scores={mb_air=1..}] at @s if items entity @s weapon.mainhand minecraft:filled_map[minecraft:map_decorations={}] run function menomon_mapas:nether {m:"blaine",modo:"mao",s:"weapon.mainhand"}
execute as @a[tag=mb_o1,tag=!mb_h1,tag=!mb_h2,tag=!mb_h3,tag=!mb_h4,scores={mb_air=1..}] at @s if items entity @s weapon.offhand minecraft:filled_map[minecraft:map_decorations={}] run function menomon_mapas:nether {m:"blaine",modo:"mao",s:"weapon.offhand"}
execute as @a[tag=mb_h1,scores={mb_used=1..}] at @s run function menomon_mapas:nether {m:"blaine",modo:"dar",s:"-"}
execute as @a[tag=mb_o1,tag=!mb_h1,tag=!mb_h2,tag=!mb_h3,tag=!mb_h4,scores={mb_used=1..}] at @s run function menomon_mapas:nether {m:"blaine",modo:"dar",s:"-"}
execute as @a[tag=mb_h2,scores={mb_air=1..}] at @s if items entity @s weapon.mainhand minecraft:filled_map[minecraft:map_decorations={}] run function menomon_mapas:end {m:"kanto_league",modo:"mao",s:"weapon.mainhand"}
execute as @a[tag=mb_o2,tag=!mb_h1,tag=!mb_h2,tag=!mb_h3,tag=!mb_h4,scores={mb_air=1..}] at @s if items entity @s weapon.offhand minecraft:filled_map[minecraft:map_decorations={}] run function menomon_mapas:end {m:"kanto_league",modo:"mao",s:"weapon.offhand"}
execute as @a[tag=mb_h2,scores={mb_used=1..}] at @s run function menomon_mapas:end {m:"kanto_league",modo:"dar",s:"-"}
execute as @a[tag=mb_o2,tag=!mb_h1,tag=!mb_h2,tag=!mb_h3,tag=!mb_h4,scores={mb_used=1..}] at @s run function menomon_mapas:end {m:"kanto_league",modo:"dar",s:"-"}
execute as @a[tag=mb_h3,scores={mb_air=1..}] at @s if items entity @s weapon.mainhand minecraft:filled_map[minecraft:map_decorations={}] run function menomon_mapas:nether {m:"sandra",modo:"mao",s:"weapon.mainhand"}
execute as @a[tag=mb_o3,tag=!mb_h1,tag=!mb_h2,tag=!mb_h3,tag=!mb_h4,scores={mb_air=1..}] at @s if items entity @s weapon.offhand minecraft:filled_map[minecraft:map_decorations={}] run function menomon_mapas:nether {m:"sandra",modo:"mao",s:"weapon.offhand"}
execute as @a[tag=mb_h3,scores={mb_used=1..}] at @s run function menomon_mapas:nether {m:"sandra",modo:"dar",s:"-"}
execute as @a[tag=mb_o3,tag=!mb_h1,tag=!mb_h2,tag=!mb_h3,tag=!mb_h4,scores={mb_used=1..}] at @s run function menomon_mapas:nether {m:"sandra",modo:"dar",s:"-"}
execute as @a[tag=mb_h4,scores={mb_air=1..}] at @s if items entity @s weapon.mainhand minecraft:filled_map[minecraft:map_decorations={}] run function menomon_mapas:end {m:"johto_league",modo:"mao",s:"weapon.mainhand"}
execute as @a[tag=mb_o4,tag=!mb_h1,tag=!mb_h2,tag=!mb_h3,tag=!mb_h4,scores={mb_air=1..}] at @s if items entity @s weapon.offhand minecraft:filled_map[minecraft:map_decorations={}] run function menomon_mapas:end {m:"johto_league",modo:"mao",s:"weapon.offhand"}
execute as @a[tag=mb_h4,scores={mb_used=1..}] at @s run function menomon_mapas:end {m:"johto_league",modo:"dar",s:"-"}
execute as @a[tag=mb_o4,tag=!mb_h1,tag=!mb_h2,tag=!mb_h3,tag=!mb_h4,scores={mb_used=1..}] at @s run function menomon_mapas:end {m:"johto_league",modo:"dar",s:"-"}
scoreboard players set @a[scores={mb_used=1..}] mb_used 0
scoreboard players set @a[scores={mb_air=1..}] mb_air 0
tag @a remove mb_h1
tag @a remove mb_o1
tag @a remove mb_h2
tag @a remove mb_o2
tag @a remove mb_h3
tag @a remove mb_o3
tag @a remove mb_h4
tag @a remove mb_o4
tag @a[predicate=menomon_mapas:segura_1] add mb_h1
tag @a[predicate=menomon_mapas:segura_o1] add mb_o1
tag @a[predicate=menomon_mapas:segura_2] add mb_h2
tag @a[predicate=menomon_mapas:segura_o2] add mb_o2
tag @a[predicate=menomon_mapas:segura_3] add mb_h3
tag @a[predicate=menomon_mapas:segura_o3] add mb_o3
tag @a[predicate=menomon_mapas:segura_4] add mb_h4
tag @a[predicate=menomon_mapas:segura_o4] add mb_o4
# Reposicao unica (2026-11-15): o mapa da Liga de Johto do vitor_andre virou mapa comum com o gatilho antigo.
execute as @a[name=vitor_andre,tag=!mb_repo1] run give @s minecraft:map[minecraft:item_name='"§3Johto League §e§o(End)"']
tag @a[name=vitor_andre,tag=!mb_repo1] add mb_repo1
