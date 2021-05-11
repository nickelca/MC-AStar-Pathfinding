#--------------#
# By: Flamingo #
# 5 April 2021 #
#--------------#

#> Save tags of end stand, then transfer to aec
data modify storage flamingo:pathfind enode.tags set from entity @e[tag=pfind,tag=explore,distance=..0.3,limit=1] Tags
kill @e[tag=pfind,tag=explore,distance=..0.3,limit=1]
summon area_effect_cloud ~ ~ ~ {Tags:["new","pfind"], Duration: 2147483647}
execute as @e[tag=pfind,tag=new,distance=..0.3] run data modify entity @s Tags set from storage flamingo:pathfind enode.tags

#> Start the trace back
execute if score $f_end pfind.var matches 0 run schedule function pathfinding:trace_back/schedule_context 1t append