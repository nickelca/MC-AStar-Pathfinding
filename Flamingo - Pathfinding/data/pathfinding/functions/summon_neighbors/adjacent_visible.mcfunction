#--------------#
# By: Flamingo #
# 5 April 2021 #
#--------------#

execute positioned ~ ~ ~1 if block ~ ~ ~ #pathfinding:allowed unless entity @e[tag=pfind,tag=explore,distance=..0.3] run summon armor_stand ~ ~ ~ {Tags: ["pfind", "explore", "z", "+z", "new", "adj"], NoGravity: 1b, Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:lime_concrete",Count:1b}],Small:1b}

execute positioned ~ ~ ~-1 if block ~ ~ ~ #pathfinding:allowed unless entity @e[tag=pfind,tag=explore,distance=..0.3] run summon armor_stand ~ ~ ~ {Tags: ["pfind", "explore", "z", "-z", "new", "adj"], NoGravity: 1b, Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:lime_concrete",Count:1b}],Small:1b}

execute positioned ~1 ~ ~ if block ~ ~ ~ #pathfinding:allowed unless entity @e[tag=pfind,tag=explore,distance=..0.3] run summon armor_stand ~ ~ ~ {Tags: ["pfind", "explore", "x", "+x", "new", "adj"], NoGravity: 1b, Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:lime_concrete",Count:1b}],Small:1b}

execute positioned ~-1 ~ ~ if block ~ ~ ~ #pathfinding:allowed unless entity @e[tag=pfind,tag=explore,distance=..0.3] run summon armor_stand ~ ~ ~ {Tags: ["pfind", "explore", "x", "-x", "new", "adj"], NoGravity: 1b, Invulnerable:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:lime_concrete",Count:1b}],Small:1b}

execute if score $diagonal pfind.var matches 1 run function pathfinding:summon_neighbors/diagonal_visible
execute if score $3d pfind.var matches 1 run function pathfinding:summon_neighbors/3d_visible