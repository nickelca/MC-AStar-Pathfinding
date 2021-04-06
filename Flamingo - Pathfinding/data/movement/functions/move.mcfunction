#--------------#
# By: Flamingo #
# 5 April 2021 #
#--------------#

execute as @e[tag=target,limit=1,distance=..0.3] at @s run function movement:next_marker
execute facing entity @e[tag=target] feet run tp @s ^ ^ ^.1 facing entity @e[tag=target,limit=1]