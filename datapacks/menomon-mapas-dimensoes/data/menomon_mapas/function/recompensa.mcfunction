# As ligas de Kanto e Johto ficam no End; o mapa do proximo ginasio (Mundo Normal) precisa ser
# buscado no Mundo Normal, senao a busca falha e o jogador recebe um mapa vazio.
# Parte do ponto de renascimento do jogador (cama), ou do spawn do mundo se nao houver.
data modify storage menomon_mapas:r x set value 248
data modify storage menomon_mapas:r z set value -232
execute if data entity @s {SpawnDimension:"minecraft:overworld"} store result storage menomon_mapas:r x int 1 run data get entity @s SpawnX
execute if data entity @s {SpawnDimension:"minecraft:overworld"} store result storage menomon_mapas:r z int 1 run data get entity @s SpawnZ
$data modify storage menomon_mapas:r t set value "$(t)"
function menomon_mapas:recompensa_dar with storage menomon_mapas:r
