##Activated when someone draws in a round of solos (rounds mode)

##Tellraws
tellraw @a[tag=playing] [{"translate":"Draw!","color":"aqua"}]
title @a[tag=playing] title [{"translate":"Draw!","color":"aqua"}]


##Sounds
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 10000 0.561231
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 10000 0.667420
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 10000 0.840896
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 10000 1.122462

execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 10000 0.561231
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 10000 0.667420
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 10000 0.840896


execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 0.25 0.561231
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 0.25 0.667420
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 0.25 0.840896

execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.5 0.561231
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.5 0.667420
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.5 0.840896