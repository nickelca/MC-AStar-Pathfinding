#--------------#
# By: Flamingo #
# 5 April 2021 #
#--------------#

#> Get Distance to the End point
execute if data storage flamingo:pathfind {heuristic:"manhattan"} run function math:dist_mhtn
execute if data storage flamingo:pathfind {heuristic:"euclidean"} run function math:dist_euc

#> Calculate the path cost
#> if adjacent, pcost = previous + 100
#> if diagonal, pcost = previous + 140
scoreboard players operation @s pfind.cost_ds = @e[tag=current,limit=1,sort=nearest] pfind.cost_ds
scoreboard players operation @s[tag=adj] pfind.cost_ds += #100 const
scoreboard players operation @s[tag=diag] pfind.cost_ds += #140 const

#> Add the costs
scoreboard players operation @s pfind.cost += @s pfind.cost_ds