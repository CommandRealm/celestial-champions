##Called when time runs out on a duel

tellraw @s [{"translate":"☀","bold":false,"color":"white"},{"translate":":","color":"gray"},{"translate":" Time is up!","color":"aqua","bold":false}]

##Sounds
playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1000 0.5

##Making players die
execute as @a[tag=playing,gamemode=adventure,distance=..300] at @s run function game:die
function game:duels/check_duel_result