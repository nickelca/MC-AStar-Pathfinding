#--------------#
# By: Flamingo #
# 5 April 2021 #
#--------------#

tag @s remove target
tag @s add used

execute if entity @s[tag=path,tag=pfind] run tag @e[tag=pfind,tag=!used,sort=nearest,limit=1] add target
execute if entity @s[tag=pfind,tag=end] run function movement:end