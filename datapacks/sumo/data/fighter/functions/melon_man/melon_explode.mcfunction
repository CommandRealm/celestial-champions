##Called when the melon explodes.


##stun
execute if entity @s[tag=about_to_stun] as @a[distance=..3,gamemode=adventure,tag=is_fighter] at @s unless entity @s[scores={calculate=0}] run function fighter:melon_man/melon_stun

##particles
execute if entity @s[tag=melon_costume_0] run particle item melon_slice ~ ~ ~ 0.15 0.15 0.15 0.35 100
execute if entity @s[tag=melon_costume_0] run particle item melon_seeds ~ ~ ~ 0.15 0.15 0.15 0.25 10
execute if entity @s[tag=melon_costume_0] run particle item melon ~ ~ ~ 0.15 0.15 0.15 0.3 50

execute if entity @s[tag=melon_costume_1] run particle item pufferfish ~ ~ ~ 0.15 0.15 0.15 0.35 100

execute if entity @s[tag=melon_costume_2] run particle item hay_block ~ ~ ~ 0.15 0.15 0.15 0.35 100
execute if entity @s[tag=melon_costume_2] run particle item wheat ~ ~ ~ 0.15 0.15 0.15 0.25 10

execute if entity @s[tag=melon_costume_3] run particle item netherrack ~ ~ ~ 0.15 0.15 0.15 0.35 100
execute if entity @s[tag=melon_costume_3] run particle item fire_charge ~ ~ ~ 0.15 0.15 0.15 0.25 10

execute if entity @s[tag=melon_costume_4] run particle item green_wool ~ ~ ~ 0.15 0.15 0.15 0.35 100
execute if entity @s[tag=melon_costume_4] run particle item lime_wool ~ ~ ~ 0.15 0.15 0.15 0.25 10


##sound
playsound minecraft:block.honey_block.break master @a ~ ~ ~ 1 0.75
playsound minecraft:block.honey_block.break master @a ~ ~ ~ 1 1.25
playsound minecraft:block.wood.break master @s ~ ~ ~ 1 0.8
playsound minecraft:block.wood.break master @s ~ ~ ~ 1 0.6

##kill
function fighter:entity_death_timer_over
