##3 second warning timer.

##Tellraw
tellraw @a[tag=playing] [{"translate":"☀","bold":false,"color":"white"},{"translate":":","color":"gray"},{"translate":" Three seconds remaining!","color":"aqua","bold":false}]

##Sounds
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1000 0.6
schedule function game:kills_timer/warnings/three_second_extra_sound 5t