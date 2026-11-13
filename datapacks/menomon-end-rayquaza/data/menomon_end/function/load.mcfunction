scoreboard objectives add menomon_end dummy
execute unless score #cd menomon_end = #cd menomon_end run scoreboard players set #cd menomon_end 1728000
execute in minecraft:the_end run forceload add -32 -32 32 32
schedule function menomon_end:loop 20t replace
