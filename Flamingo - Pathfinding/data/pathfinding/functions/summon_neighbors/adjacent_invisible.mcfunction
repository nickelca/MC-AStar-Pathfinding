#--------------#
# By: Flamingo #
# 5 April 2021 #
#--------------#

execute positioned ~ ~ ~1 if block ~ ~ ~ #pathfinding:allowed unless entity @e[tag=pfind,tag=explore,distance=..0.3] run summon area_effect_cloud ~ ~ ~ {Tags: ["pfind", "explore", "z", "+z", "new"], Duration: 2147483647}

execute positioned ~ ~ ~-1 if block ~ ~ ~ #pathfinding:allowed unless entity @e[tag=pfind,tag=explore,distance=..0.3] run summon area_effect_cloud ~ ~ ~ {Tags: ["pfind", "explore", "z", "-z", "new"], Duration: 2147483647}

execute positioned ~1 ~ ~ if block ~ ~ ~ #pathfinding:allowed unless entity @e[tag=pfind,tag=explore,distance=..0.3] run summon area_effect_cloud ~ ~ ~ {Tags: ["pfind", "explore", "x", "+x", "new"], Duration: 2147483647}

execute positioned ~-1 ~ ~ if block ~ ~ ~ #pathfinding:allowed unless entity @e[tag=pfind,tag=explore,distance=..0.3] run summon area_effect_cloud ~ ~ ~ {Tags: ["pfind", "explore", "x", "-x", "new"], Duration: 2147483647}

execute if score $diagonal pfind.var matches 1 run function pathfinding:summon_neighbors/diagonal_invisible
execute if score $3d pfind.var matches 1 run function pathfinding:summon_neighbors/3d_invisible