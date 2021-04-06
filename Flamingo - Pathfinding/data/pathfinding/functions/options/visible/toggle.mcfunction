execute store success score $visible pfind.var if score $visible pfind.var matches 0
execute if score $visible pfind.var matches 1 run tellraw @s {"text": "The path will now be visible!","color": "blue"}
execute if score $visible pfind.var matches 0 run tellraw @s {"text": "The path will now not be visible!","color": "blue"}