#--------------#
# By: Flamingo #
# 5 April 2021 #
#--------------#

#> Time Counter
scoreboard players add $Time.Sec pfind.var 1

#> Modify Tags
tag @s remove SchedContext
tag @s add current

#> Summon the new explore entities
execute if score $visible pfind.var matches 1 run function pathfinding:summon_neighbors/adjacent_visible
execute if score $visible pfind.var matches 0 run function pathfinding:summon_neighbors/adjacent_invisible
execute as @e[tag=pfind,tag=new] at @s run function pathfinding:cost/total_cost
tag @e[tag=pfind,tag=explore,tag=new] remove new

#> Add used tag + Remove current tag
tag @e[tag=pfind,tag=current] add used
tag @e[tag=pfind,tag=current] remove current

#> Find entity with lowest total cost
scoreboard players set $lowest pfind.var 2147483647
scoreboard players operation $lowest pfind.var < @e[tag=explore,tag=!used] pfind.cost_to
execute as @e[tag=pfind,tag=explore,tag=!used] if score @s pfind.cost_to = $lowest pfind.var at @s run function pathfinding:check_end