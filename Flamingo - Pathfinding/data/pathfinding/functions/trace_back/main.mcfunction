#--------------#
# By: Flamingo #
# 5 April 2021 #
#--------------#

tag @s add path
execute if entity @s[tag=x] run function pathfinding:trace_back/x
execute if entity @s[tag=z] run function pathfinding:trace_back/z
execute if entity @s[tag=yz] run function pathfinding:trace_back/yz
execute if entity @s[tag=yx] run function pathfinding:trace_back/yx
execute if entity @s[tag=xz] run function pathfinding:trace_back/xz
execute if score $f_end pfind.var matches 0 if entity @s[tag=root] run function pathfinding:end