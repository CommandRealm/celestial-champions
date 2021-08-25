##Called when a laser is active

##Movement
execute as @e[type=area_effect_cloud,tag=turret_laser] at @s run tp @s ^ ^ ^0.75

##Player detection
execute as @e[type=area_effect_cloud,tag=turret_laser] at @s if entity @a[tag=is_fighter,gamemode=adventure,distance=..5] run function item:turret/check_player_position

##Particle
execute at @e[type=area_effect_cloud,tag=turret_laser] run particle dust 1 0 0 1.25 ~ ~ ~ 1 1 1 0 10