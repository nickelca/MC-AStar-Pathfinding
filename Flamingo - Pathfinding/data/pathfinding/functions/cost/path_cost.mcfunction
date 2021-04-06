#--------------#
# By: Flamingo #
# 5 April 2021 #
#--------------#

#> Calculate the path cost
#> pcost = previous + 1
scoreboard players operation @s pfind.cost_ds = @e[tag=current,limit=1,sort=nearest] pfind.cost_ds
scoreboard players operation @s pfind.cost_ds += #100 const