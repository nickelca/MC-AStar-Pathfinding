#--------------#
# By: Flamingo #
# 5 April 2021 #
#--------------#

kill @e[tag=pather]
execute at @e[tag=pfind,tag=start] run summon villager ~ ~ ~ {Tags:["pather"],NoAI:1b,CustomName:'{"text":"Jimbo"}',CustomNameVisible:1b,Invulnerable:1b}