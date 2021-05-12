#--------------#
# By: Flamingo #
# 5 April 2021 #
#--------------#

tag @e[tag=target] remove target
tag @e[tag=used] remove used
scoreboard players set $mov.running pfind.var 1

function movement:summon_pather
tag @e[tag=start,tag=pfind] add used
execute as @e[tag=pather] at @s run tag @e[tag=path,tag=pfind,sort=nearest,limit=1] add target
execute as @e[tag=pather] at @s run function movement:move