#--------------#
# By: Flamingo #
# 5 April 2021 #
#--------------#

execute store success score $3d pfind.var if score $3d pfind.var matches 0
execute if score $3d pfind.var matches 1 run tellraw @s {"text": "The path now works on the y axis!","color": "blue"}
execute if score $3d pfind.var matches 0 run tellraw @s {"text": "The path no longer works on the y axis!","color": "blue"}