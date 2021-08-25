##1 second warning timer.

##Tellraw
tellraw @a[tag=playing] [{"text":"☀","bold":false,"color":"white"},{"text":":","color":"gray"},{"text":" One second remaining!","color":"aqua","bold":false}]

##Sounds
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1000 0.8
schedule function game:kills_timer/warnings/one_second_extra_sound 5t