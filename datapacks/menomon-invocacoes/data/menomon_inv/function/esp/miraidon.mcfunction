execute if score @s menomon_inv_cd matches 1.. run return run tellraw @s [{"translate":"menomon_inv.msg.cooldown","fallback":"The legendary energy is still recovering... wait %ss.","color":"gray","with":[{"score":{"name":"@s","objective":"menomon_inv_cd"},"color":"yellow"}]}]
execute if dimension minecraft:the_end run return run function menomon_inv:invocar {especie:"miraidon",nome:"Miraidon"}
tellraw @s {"translate":"menomon_inv.msg.wrong_place.end","fallback":"Nothing answered the call. %s only answers in the End.","color":"gray","italic":true,"with":[{"text":"Miraidon"}]}
