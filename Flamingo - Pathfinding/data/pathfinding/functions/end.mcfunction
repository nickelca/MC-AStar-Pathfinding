#--------------#
# By: Flamingo #
# 5 April 2021 #
#--------------#

tellraw @a [{"text": "Successful! Found the optimal path.","color": "dark_green"}]
playsound minecraft:block.note_block.harp master @s
kill @e[tag=pfind,tag=explore,tag=!path]
scoreboard players set $f_end pfind.var 1