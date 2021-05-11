#--------------#
# By: Flamingo #
# 5 April 2021 #
#--------------#

#> Calculate the distance
execute if data storage flamingo:pathfind {heuristic:"manhattan"} run function math:dist_mhtn
execute if data storage flamingo:pathfind {heuristic:"euclidean"} run function math:dist_euc