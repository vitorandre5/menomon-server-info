execute if score @s menomon_inv_cd matches 1.. run return run tellraw @s [{"translate":"menomon_inv.msg.cooldown","fallback":"The legendary energy is still recovering... wait %ss.","color":"gray","with":[{"score":{"name":"@s","objective":"menomon_inv_cd"},"color":"yellow"}]}]
execute if biome ~ ~ ~ #cobblemon:is_forest run return run function menomon_inv:invocar {especie:"fezandipiti",nome:"Fezandipiti"}
tellraw @s {"translate":"menomon_inv.msg.wrong_place.forest","fallback":"Nothing answered the call. %s only answers in a forest.","color":"gray","italic":true,"with":[{"text":"Fezandipiti"}]}
