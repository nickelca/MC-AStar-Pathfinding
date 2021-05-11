#--------------#
# By: Flamingo #
# 5 April 2021 #
#--------------#

tellraw @a {"text": "Reloaded","color": "blue"}
##-----Pathfinding Setup-----##
scoreboard objectives add pfind.cost_de dummy
scoreboard objectives add pfind.cost_ds dummy
scoreboard objectives add pfind.cost_to dummy
scoreboard objectives add pfind.var dummy
execute unless data storage flamingo:pathfind heuristic run data merge storage flamingo:pathfind {heuristic:"manhattan"}
execute unless score $visible pfind.var matches 0..1 run scoreboard players set $visible pfind.var 1
execute unless score $diagonal pfind.var matches 0..1 run scoreboard players set $diagonal pfind.var 0
execute unless score $3d pfind.var matches 0..1 run scoreboard players set $3d pfind.var 1
##---------------------------##

##-----Math Scoreboard Setup-----##
scoreboard objectives add math_in dummy
scoreboard objectives add math_in_w dummy
scoreboard objectives add math_out dummy
scoreboard objectives add math_k1 dummy
scoreboard objectives add math_k2 dummy
scoreboard objectives add math_k3 dummy
scoreboard objectives add math_k4 dummy
scoreboard objectives add dist dummy
scoreboard objectives add const dummy
scoreboard players set #-1 const -1
scoreboard players set #20 const 20
scoreboard players set #100 const 100
##-------------------------------##
#----------------------------------#
# Square Root Functions by yosho27 #
#----------------------------------#