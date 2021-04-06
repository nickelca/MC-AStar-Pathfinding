#--------------#
# By: Flamingo #
# 5 April 2021 #
#--------------#

execute positioned ~1 ~ ~1 if block ~ ~ ~ #pathfinding:allowed if block ~-1 ~ ~ #pathfinding:allowed if block ~ ~ ~-1 #pathfinding:allowed unless entity @e[tag=pfind,tag=explore,distance=..0.1] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ["pfind", "explore", "new", "xz", "+x_+z"], Duration: 2147483647}

execute positioned ~-1 ~ ~-1 if block ~ ~ ~ #pathfinding:allowed if block ~1 ~ ~ #pathfinding:allowed if block ~ ~ ~1 #pathfinding:allowed unless entity @e[tag=pfind,tag=explore,distance=..0.1] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ["pfind", "explore", "new", "xz", "-x_-z"], Duration: 2147483647}

execute positioned ~1 ~ ~-1 if block ~ ~ ~ #pathfinding:allowed if block ~-1 ~ ~ #pathfinding:allowed if block ~ ~ ~1 #pathfinding:allowed unless entity @e[tag=pfind,tag=explore,distance=..0.1] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ["pfind", "explore", "new", "xz", "+x_-z"], Duration: 2147483647}

execute positioned ~-1 ~ ~1 if block ~ ~ ~ #pathfinding:allowed if block ~1 ~ ~ #pathfinding:allowed if block ~ ~ ~-1 #pathfinding:allowed unless entity @e[tag=pfind,tag=explore,distance=..0.1] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ["pfind", "explore", "new", "xz", "+x_-z"], Duration: 2147483647}