#--------------#
# By: Flamingo #
# 5 April 2021 #
#--------------#

#                                               #
#   This uses the manhattan distance formula    #
# distance = |x1 - x2| + |y1 - y2| + |z1 - z2|  #
#                                               #

data modify storage flamingo:pathfind pos.node set from entity @s Pos

execute store result score #node.x pfind.cost run data get storage flamingo:pathfind pos.node[0] 100
execute store result score #node.y pfind.cost run data get storage flamingo:pathfind pos.node[1] 100
execute store result score #node.z pfind.cost run data get storage flamingo:pathfind pos.node[2] 100

execute store result score #x pfind.cost run scoreboard players operation #node.x pfind.cost -= #end.x pfind.cost
execute store result score #y pfind.cost run scoreboard players operation #node.y pfind.cost -= #end.y pfind.cost
execute store result score #z pfind.cost run scoreboard players operation #node.z pfind.cost -= #end.z pfind.cost

execute if score #x pfind.cost matches ..-1 run scoreboard players operation #x pfind.cost *= #-1 const
execute if score #y pfind.cost matches ..-1 run scoreboard players operation #y pfind.cost *= #-1 const
execute if score #z pfind.cost matches ..-1 run scoreboard players operation #z pfind.cost *= #-1 const

scoreboard players operation @s pfind.cost = #x pfind.cost
scoreboard players operation @s pfind.cost += #y pfind.cost
scoreboard players operation @s pfind.cost += #z pfind.cost