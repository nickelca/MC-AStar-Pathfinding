#--------------#
# By: Flamingo #
# 5 April 2021 #
#--------------#

execute if entity @s[tag=+x] positioned ~-1 ~ ~ as @e[tag=pfind,tag=explore,distance=..0.3] run function pathfinding:trace_back/main
execute if entity @s[tag=-x] positioned ~1 ~ ~ as @e[tag=pfind,tag=explore,distance=..0.3] run function pathfinding:trace_back/main