scoreboard players set @s menomon_inv_ok 0
execute store result score @s menomon_inv_rng run random value 1..4096
tag @e[type=cobblemon:pokemon,distance=..32] add menomon_inv_antes
$execute rotated ~ 0 positioned ^ ^ ^3 if block ~ ~ ~ #menomon_inv:livre if block ~ ~1 ~ #menomon_inv:livre unless block ~ ~ ~ #menomon_inv:perigoso unless block ~ ~1 ~ #menomon_inv:perigoso run return run function menomon_inv:spawn {especie:"$(especie)",nome:"$(nome)"}
$execute rotated ~ 0 positioned ^ ^ ^2 if block ~ ~ ~ #menomon_inv:livre if block ~ ~1 ~ #menomon_inv:livre unless block ~ ~ ~ #menomon_inv:perigoso unless block ~ ~1 ~ #menomon_inv:perigoso run return run function menomon_inv:spawn {especie:"$(especie)",nome:"$(nome)"}
$execute rotated ~ 0 positioned ^ ^ ^1 if block ~ ~ ~ #menomon_inv:livre if block ~ ~1 ~ #menomon_inv:livre unless block ~ ~ ~ #menomon_inv:perigoso unless block ~ ~1 ~ #menomon_inv:perigoso run return run function menomon_inv:spawn {especie:"$(especie)",nome:"$(nome)"}
$function menomon_inv:spawn {especie:"$(especie)",nome:"$(nome)"}
