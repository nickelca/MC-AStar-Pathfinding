#--------------#
# By: Flamingo #
# 5 April 2021 #
#--------------#

#> Get Distance to the End point
function pathfinding:cost/end_distance

#> Get the Path cost
function pathfinding:cost/path_cost

#> Add the costs
scoreboard players operation @s pfind.cost_to = @s pfind.cost_ds
scoreboard players operation @s pfind.cost_to += @s pfind.cost_de