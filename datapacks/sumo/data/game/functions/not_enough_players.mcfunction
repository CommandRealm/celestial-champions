##called when not enough people are playing
scoreboard objectives setdisplay sidebar
function game:end
tellraw @a [{"text":"⚡ ","color":"gold"},{"text":"Insufficient amount of players to complete the game.","color":"red"}]

##sound
playsound minecraft:block.note_block.flute master @a 0 66 0 100000 0