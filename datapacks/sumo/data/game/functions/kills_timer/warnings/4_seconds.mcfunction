##4 second warning timer.

##Tellraw
tellraw @a[tag=playing] [{"translate":"☀","bold":false,"color":"white"},{"translate":":","color":"gray"},{"translate":" Four seconds remaining!","color":"aqua","bold":false}]

##Sounds
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1000 0.5
schedule function game:kills_timer/warnings/extra_sound 5t