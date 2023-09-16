##called when a spectator wants to go back to the lobby

##basic stuff
effect clear @s
gamemode adventure @s
clear @s
tp @s 0 67 0 0 -10

##rank
function general:rank

##msg
tellraw @s {"translate":"Returned to lobby.","color":"gray"}

##sound
execute at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0