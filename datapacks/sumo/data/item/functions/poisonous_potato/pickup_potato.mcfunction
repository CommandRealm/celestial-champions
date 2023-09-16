##Called when we pick up a potato for the first time this cycle

tag @s add temporary_tag

tellraw @s[tag=!has_had_potato] [{"translate":"⚠ ","color":"yellow"},{"translate":"You have the potato! It will explode soon. Punch someone to give them the potato.","color":"#9fbf48","bold":false}]
tellraw @s[tag=has_had_potato] [{"translate":"⚠ ","color":"yellow"},{"translate":"You have the potato!","color":"#9fbf48","bold":false}]

##sounds
playsound minecraft:entity.cat.hiss master @a ~ ~ ~ 1 0.85
playsound minecraft:entity.cat.hiss master @a ~ ~ ~ 1 0.75
playsound minecraft:entity.cat.hiss master @a ~ ~ ~ 1 0.65

##Remove the has had potato tag from everyone if this is the first round of this (also clear potatoes from nearby players)
clear @a[distance=..500,tag=!temporary_tag] poisonous_potato
tag @a[distance=..500] remove has_potato
tag @s add has_potato
tag @s add has_had_potato


tag @s remove temporary_tag