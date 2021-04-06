#--------------#
# By: Flamingo #
# 5 April 2021 #
#--------------#

#> Resets full end score
scoreboard players set $f_end pfind.var 0

#> Checks the number of Start and End points
execute store result score $strt.count pfind.var if entity @e[tag=pfind,tag=start]
execute store result score $end.count pfind.var if entity @e[tag=pfind,tag=end]
execute if score $end.count pfind.var matches 0 run tellraw @s [{"text":"ERROR: ","color":"red","bold":true},{"text":"You need to have an end point placed!","bold":false}]
execute if score $strt.count pfind.var matches 0 run tellraw @s [{"text":"ERROR: ","color":"red","bold":true},{"text":"You need to have a start point placed!","bold":false}]
execute if score $end.count pfind.var matches 2.. run tellraw @s [{"text":"ERROR: ","color":"red","bold":true},{"text":"You can only have one end point placed! Please remove the extras.","bold":false}]
execute if score $strt.count pfind.var matches 2.. run tellraw @s [{"text":"ERROR: ","color":"red","bold":true},{"text":"You can only have one start point placed! Please remove the extras.","bold":false}]
execute if score $end.count pfind.var matches 1 if score $strt.count pfind.var matches 1 as @e[tag=pfind,tag=start] at @s run function pathfinding:start