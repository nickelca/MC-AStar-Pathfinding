#--------------#
# By: Flamingo #
# 5 April 2021 #
#--------------#

tellraw @a {"text": "Reloaded","color": "blue"}
##-----Pathfinding Setup-----##
scoreboard objectives add pfind.cost_ds dummy
scoreboard objectives add pfind.cost dummy
scoreboard objectives add pfind.var dummy
execute unless data storage flamingo:pathfind heuristic run data modify storage flamingo:pathfind heuristic set value "manhattan"
execute unless score $visible pfind.var matches 0..1 run scoreboard players set $visible pfind.var 1
execute unless score $diagonal pfind.var matches 0..1 run scoreboard players set $diagonal pfind.var 0
execute unless score $3d pfind.var matches 0..1 run scoreboard players set $3d pfind.var 1
##---------------------------##

##-----Math Scoreboard Setup-----##
scoreboard objectives add math dummy
scoreboard objectives add const dummy
scoreboard players set #-1 const -1
scoreboard players set #2 const 2
scoreboard players set #20 const 20
scoreboard players set #100 const 100
scoreboard players set #140 const 140
scoreboard players set #10000 const 10000
##-------------------------------##
#----------------------------------#
# Square Root Functions by yosho27 #
#----------------------------------#