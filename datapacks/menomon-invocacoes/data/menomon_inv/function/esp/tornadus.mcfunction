execute if score @s menomon_inv_cd matches 1.. run return run tellraw @s [{"translate":"menomon_inv.msg.cooldown","fallback":"The legendary energy is still recovering... wait %ss.","color":"gray","with":[{"score":{"name":"@s","objective":"menomon_inv_cd"},"color":"yellow"}]}]
execute if biome ~ ~ ~ #cobblemon:is_mountain run return run function menomon_inv:invocar {especie:"tornadus",nome:"Tornadus"}
tellraw @s {"translate":"menomon_inv.msg.wrong_place.mountain","fallback":"Nothing answered the call. %s only answers on a mountain.","color":"gray","italic":true,"with":[{"text":"Tornadus"}]}
