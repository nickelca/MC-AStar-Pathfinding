#--------------#
# By: Flamingo #
# 5 April 2021 #
#--------------#

data modify storage flamingo:pathfind heuristic set value "euclidean"
tellraw @s {"text": "Changed the heuristic to Euclidean distance","color": "blue"}