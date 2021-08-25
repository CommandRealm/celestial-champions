##Displaying winner
scoreboard objectives remove fake_criteria
scoreboard objectives add fake_criteria dummy
scoreboard players set $check_place fake_criteria 0
execute as @a[tag=playing] at @s run scoreboard players operation @s fake_criteria = @s criteria
execute as @a[tag=playing] at @s run scoreboard players operation $check_place fake_criteria > @s criteria
execute as @a[tag=playing] at @s run scoreboard players operation @s fake_criteria -= $check_place fake_criteria




##Starting cooldown
scoreboard players set $time cooldown 100

##Setting lives to 0 for everyone
scoreboard players set @a[tag=playing,tag=is_fighter] lives 0

##Set lives to 100
scoreboard players set @a[tag=playing,scores={fake_criteria=0}] lives 100

##Setting gamemode to spectator
gamemode spectator @a[tag=playing,tag=is_fighter,scores={lives=0}]

##Resetting death cooldown
scoreboard players reset @a[tag=playing,tag=is_fighter,scores={lives=0}] death_cooldown

##Bossbar
bossbar set minecraft:game visible false

##Sounds
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 10000 0.561231
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 10000 0.707107
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 10000 0.840896
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 10000 1.122462

execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 10000 0.561231
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 10000 0.707107
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 10000 0.840896


execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 0.25 0.561231
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 0.25 0.707107
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 0.25 0.840896

execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.5 0.561231
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.5 0.707107
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.5 0.840896