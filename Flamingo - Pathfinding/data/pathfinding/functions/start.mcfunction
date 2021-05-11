#--------------#
# By: Flamingo #
# 5 April 2021 #
#--------------#

#> Save Positions of Start and End point
data modify storage flamingo:pathfind pos.strt set from entity @s Pos
data modify storage flamingo:pathfind pos.end set from entity @e[tag=pfind,tag=end,limit=1] Pos
execute store result score #strt.x pfind.cost_de run data get storage flamingo:pathfind pos.strt[0] 100
execute store result score #strt.y pfind.cost_de run data get storage flamingo:pathfind pos.strt[1] 100
execute store result score #strt.z pfind.cost_de run data get storage flamingo:pathfind pos.strt[2] 100
execute store result score #end.x pfind.cost_de run data get storage flamingo:pathfind pos.end[0] 100
execute store result score #end.y pfind.cost_de run data get storage flamingo:pathfind pos.end[1] 100
execute store result score #end.z pfind.cost_de run data get storage flamingo:pathfind pos.end[2] 100

#> Delete old path entities
function pathfinding:clear_path

#> Summon the first explore entity
summon area_effect_cloud ~ ~ ~ {Tags: ["pfind", "explore", "root"], Duration: 2147483647}
scoreboard players set @e[tag=pfind,tag=explore] cost 0

#> Run the loop function
execute as @e[tag=pfind,tag=explore] at @s run function pathfinding:loop