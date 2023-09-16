##Called to combat a bug where the armor stand would randomly vanish

##Gamemode
gamemode adventure @s

##Effect clear
effect clear @s

##Clear
clear @s

##Tp
tp @s 32 66 0 -90 0

##Tellraw and sound
tellraw @s [{"translate":"⚡ ","color":"gold"},{"translate":"Oops! This wasn't supposed to happen. Please try again.","color":"red"}]
playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 100 0.75