##Starting cooldown
scoreboard players set $time cooldown 100

scoreboard players set @s fake_criteria 0

##Setting lives to 0 for everyone else
scoreboard players set @a[tag=playing,tag=is_fighter] lives 0

##Set lives to 100
scoreboard players set @s lives 100

##Setting gamemode to spectator
execute if entity @s[tag=on_red_team] run gamemode spectator @a[tag=playing,tag=is_fighter,scores={lives=0},tag=!on_red_team]
execute if entity @s[tag=on_blue_team] run gamemode spectator @a[tag=playing,tag=is_fighter,scores={lives=0},tag=!on_blue_team]
execute if entity @s[tag=on_yellow_team] run gamemode spectator @a[tag=playing,tag=is_fighter,scores={lives=0},tag=!on_yellow_team]
execute if entity @s[tag=on_green_team] run gamemode spectator @a[tag=playing,tag=is_fighter,scores={lives=0},tag=!on_green_team]
execute if entity @s[tag=on_cyan_team] run gamemode spectator @a[tag=playing,tag=is_fighter,scores={lives=0},tag=!on_cyan_team]
execute if entity @s[tag=on_orange_team] run gamemode spectator @a[tag=playing,tag=is_fighter,scores={lives=0},tag=!on_orange_team]
execute if entity @s[tag=on_pink_team] run gamemode spectator @a[tag=playing,tag=is_fighter,scores={lives=0},tag=!on_pink_team]
execute if entity @s[tag=on_purple_team] run gamemode spectator @a[tag=playing,tag=is_fighter,scores={lives=0},tag=!on_purple_team]
execute if entity @s[tag=on_white_team] run gamemode spectator @a[tag=playing,tag=is_fighter,scores={lives=0},tag=!on_white_team]
execute if entity @s[tag=on_gray_team] run gamemode spectator @a[tag=playing,tag=is_fighter,scores={lives=0},tag=!on_gray_team]

##Resetting death cooldown
scoreboard players reset @a[tag=playing,tag=is_fighter,scores={death_cooldown=1..}] death_cooldown


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