#--------------#
# By: Flamingo #
# 5 April 2021 #
#--------------#

execute as @e[tag=pather] run tp @s ~ -100 ~
execute as @e[tag=pather] run kill @s
scoreboard players set $mov.running pfind.var 0