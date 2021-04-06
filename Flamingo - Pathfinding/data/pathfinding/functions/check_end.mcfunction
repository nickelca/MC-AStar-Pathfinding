#--------------#
# By: Flamingo #
# 5 April 2021 #
#--------------#

execute at @e[tag=pfind,tag=end] store success score $i_end pfind.var if entity @e[tag=pfind,tag=explore,distance=..0.3]
execute if score $i_end pfind.var matches 1 if score $f_end pfind.var matches 0 at @e[tag=pfind,tag=end] run function pathfinding:init_end
execute if score $i_end pfind.var matches 0 if score $f_end pfind.var matches 0 run function pathfinding:loop