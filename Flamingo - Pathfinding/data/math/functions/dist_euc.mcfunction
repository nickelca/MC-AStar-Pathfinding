#--------------#
# By: Flamingo #
# 5 April 2021 #
#--------------#

#                                                          #
#         This uses the euclidean distance formula         #
# distance = sqrt[(x1 - x2)^2 + (y1 - y2)^2 + (z1 - z2)^2] #
#                                                          #

data modify storage flamingo:pathfind pos.node set from entity @s Pos

execute store result score #node.x pfind.cost run data get storage flamingo:pathfind pos.node[0] 100
execute store result score #node.y pfind.cost run data get storage flamingo:pathfind pos.node[1] 100
execute store result score #node.z pfind.cost run data get storage flamingo:pathfind pos.node[2] 100

execute store result score #x pfind.cost run scoreboard players operation #node.x pfind.cost -= #end.x pfind.cost
execute store result score #y pfind.cost run scoreboard players operation #node.y pfind.cost -= #end.y pfind.cost
execute store result score #z pfind.cost run scoreboard players operation #node.z pfind.cost -= #end.z pfind.cost

scoreboard players operation #x pfind.cost *= #x pfind.cost
scoreboard players operation #y pfind.cost *= #y pfind.cost
scoreboard players operation #z pfind.cost *= #z pfind.cost

scoreboard players operation in math = #x pfind.cost
scoreboard players operation in math += #y pfind.cost
scoreboard players operation in math += #z pfind.cost

function math:root
scoreboard players operation @s pfind.cost = out math