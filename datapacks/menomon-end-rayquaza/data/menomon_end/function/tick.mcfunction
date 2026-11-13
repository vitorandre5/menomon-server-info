attribute @e[type=minecraft:ender_dragon,limit=1,tag=!zerohp] minecraft:generic.max_health base set 0
data modify entity @e[type=ender_dragon,tag=!zerohp,limit=1] Health set value 0
data merge entity @e[type=ender_dragon,tag=!zerohp,limit=1] {Tags:["zerohp"]}
