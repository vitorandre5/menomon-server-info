schedule function menomon_end:loop 20t replace
execute store result score #now menomon_end run time query gametime
scoreboard players set #r menomon_end 0
execute in minecraft:the_end if entity @e[type=cobblemon:pokemon,x=0,y=64,z=0,distance=..4096,nbt={Pokemon:{Species:"cobblemon:rayquaza"}}] run scoreboard players set #r menomon_end 1
execute if score #r menomon_end matches 1 run scoreboard players operation #last menomon_end = #now menomon_end
execute if score #r menomon_end matches 0 in minecraft:the_end if entity @a unless score #last menomon_end = #last menomon_end run function menomon_end:spawn_rayquaza
execute if score #r menomon_end matches 0 if score #last menomon_end = #last menomon_end run function menomon_end:cooldown
