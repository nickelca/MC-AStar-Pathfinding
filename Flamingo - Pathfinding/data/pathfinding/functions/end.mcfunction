#--------------#
# By: Flamingo #
# 5 April 2021 #
#--------------#

scoreboard players operation $Time.Sec pfind.var /= #20 const
tellraw @a [{"text": "Successful! Found the optimal path in ","color": "dark_green"},{"score":{"objective": "pfind.var","name": "$Time.Sec"}},{"text": " seconds."}]
playsound minecraft:block.note_block.harp master @s
kill @e[tag=pfind,tag=explore,tag=!path]
scoreboard players set $f_end pfind.var 1