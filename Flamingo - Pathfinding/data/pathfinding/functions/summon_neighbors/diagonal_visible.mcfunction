#--------------#
# By: Flamingo #
# 5 April 2021 #
#--------------#

execute positioned ~1 ~ ~1 if block ~ ~ ~ #pathfinding:allowed if block ~-1 ~ ~ #pathfinding:allowed if block ~ ~ ~-1 #pathfinding:allowed unless entity @e[tag=pfind,tag=explore,distance=..0.1] run summon minecraft:armor_stand ~ ~ ~ {Tags: ["pfind", "explore", "new", "xz", "+x_+z", "diag"], NoGravity:1b, Invulnerable:1b, Invisible:1b, ArmorItems:[{},{},{},{id:"minecraft:lime_concrete",Count:1b}],Small:1b}

execute positioned ~-1 ~ ~-1 if block ~ ~ ~ #pathfinding:allowed if block ~1 ~ ~ #pathfinding:allowed if block ~ ~ ~1 #pathfinding:allowed unless entity @e[tag=pfind,tag=explore,distance=..0.1] run summon minecraft:armor_stand ~ ~ ~ {Tags: ["pfind", "explore", "new", "xz", "-x_-z", "diag"], NoGravity:1b, Invulnerable:1b, Invisible:1b, ArmorItems:[{},{},{},{id:"minecraft:lime_concrete",Count:1b}],Small:1b}

execute positioned ~1 ~ ~-1 if block ~ ~ ~ #pathfinding:allowed if block ~-1 ~ ~ #pathfinding:allowed if block ~ ~ ~1 #pathfinding:allowed unless entity @e[tag=pfind,tag=explore,distance=..0.1] run summon minecraft:armor_stand ~ ~ ~ {Tags: ["pfind", "explore", "new", "xz", "+x_-z", "diag"], NoGravity:1b, Invulnerable:1b, Invisible:1b, ArmorItems:[{},{},{},{id:"minecraft:lime_concrete",Count:1b}],Small:1b}

execute positioned ~-1 ~ ~1 if block ~ ~ ~ #pathfinding:allowed if block ~1 ~ ~ #pathfinding:allowed if block ~ ~ ~-1 #pathfinding:allowed unless entity @e[tag=pfind,tag=explore,distance=..0.1] run summon minecraft:armor_stand ~ ~ ~ {Tags: ["pfind", "explore", "new", "xz", "+x_-z", "diag"], NoGravity:1b, Invulnerable:1b, Invisible:1b, ArmorItems:[{},{},{},{id:"minecraft:lime_concrete",Count:1b}],Small:1b}