##Called when a honey trap is active

##If there is a player nearby
execute as @e[type=armor_stand,tag=honey_trap] at @s positioned ~ ~1.75 ~ if entity @a[tag=is_fighter,gamemode=adventure,distance=..1] run function item:honey_trap/check_player_position

##Particle
execute at @e[type=armor_stand,tag=honey_trap] run particle item honey_block ~ ~1.75 ~ 0.15 0.15 0.15 0.05 2