#--------------#
# By: Flamingo #
# 5 April 2021 #
#--------------#

execute positioned ~ ~1 ~1 if block ~ ~ ~ #pathfinding:allowed unless block ~ ~-1 ~ #pathfinding:allowed unless entity @e[tag=pfind,tag=explore,distance=..0.3] run summon area_effect_cloud ~ ~ ~ {Tags: ["pfind", "explore", "yz", "+y_+z", "new"], Duration: 2147483647}

execute positioned ~ ~1 ~-1 if block ~ ~ ~ #pathfinding:allowed unless block ~ ~-1 ~ #pathfinding:allowed unless entity @e[tag=pfind,tag=explore,distance=..0.3] run summon area_effect_cloud ~ ~ ~ {Tags: ["pfind", "explore", "yz", "+y_-z", "new"], Duration: 2147483647}

execute positioned ~1 ~1 ~ if block ~ ~ ~ #pathfinding:allowed unless block ~ ~-1 ~ #pathfinding:allowed unless entity @e[tag=pfind,tag=explore,distance=..0.3] run summon area_effect_cloud ~ ~ ~ {Tags: ["pfind", "explore", "yx", "+y_+x", "new"], Duration: 2147483647}

execute positioned ~-1 ~1 ~ if block ~ ~ ~ #pathfinding:allowed unless block ~ ~-1 ~ #pathfinding:allowed unless entity @e[tag=pfind,tag=explore,distance=..0.3] run summon area_effect_cloud ~ ~ ~ {Tags: ["pfind", "explore", "yx", "+y_-x", "new"], Duration: 2147483647}


execute positioned ~ ~-1 ~1 if block ~ ~ ~ #pathfinding:allowed unless block ~ ~-1 ~ #pathfinding:allowed unless entity @e[tag=pfind,tag=explore,distance=..0.3] run summon area_effect_cloud ~ ~ ~ {Tags: ["pfind", "explore", "yz", "-y_+z", "new"], Duration: 2147483647}

execute positioned ~ ~-1 ~-1 if block ~ ~ ~ #pathfinding:allowed unless block ~ ~-1 ~ #pathfinding:allowed unless entity @e[tag=pfind,tag=explore,distance=..0.3] run summon area_effect_cloud ~ ~ ~ {Tags: ["pfind", "explore", "yz", "-y_-z", "new"], Duration: 2147483647}

execute positioned ~1 ~-1 ~ if block ~ ~ ~ #pathfinding:allowed unless block ~ ~-1 ~ #pathfinding:allowed unless entity @e[tag=pfind,tag=explore,distance=..0.3] run summon area_effect_cloud ~ ~ ~ {Tags: ["pfind", "explore", "yx", "-y_+x", "new"], Duration: 2147483647}

execute positioned ~-1 ~-1 ~ if block ~ ~ ~ #pathfinding:allowed unless block ~ ~-1 ~ #pathfinding:allowed unless entity @e[tag=pfind,tag=explore,distance=..0.3] run summon area_effect_cloud ~ ~ ~ {Tags: ["pfind", "explore", "yx", "-y_-x", "new"], Duration: 2147483647}