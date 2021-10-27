##Main active laster function

##Particles at the laser
execute at @e[type=marker,tag=guardian_laser] positioned ~ ~0.75 ~ run particle dust 0.388 0.494 0.463 1 ~ ~ ~ 0.5 0.5 0.5 0 20
execute at @e[type=marker,tag=guardian_laser] positioned ~ ~0.75 ~ run particle dust 0.933 0.475 0.098 1 ~ ~ ~ 0.5 0.5 0.5 0 5

execute at @e[type=marker,tag=guardian_laser] positioned ~ ~0.75 ~ run playsound minecraft:block.beacon.ambient master @a ~ ~ ~ 0.15 2

execute as @e[type=marker,tag=guardian_laser] at @s positioned ~ ~0.75 ~ if entity @a[tag=is_fighter,gamemode=adventure,distance=..2] run function fighter:guardian/check_laser_position

execute as @e[type=marker,tag=guardian_laser] at @s run tp @s ^ ^ ^0.5

execute as @e[type=marker,tag=guardian_laser] at @s positioned ~ ~0.75 ~ if entity @a[tag=is_fighter,gamemode=adventure,distance=..2] run function fighter:guardian/check_laser_position

execute as @e[type=marker,tag=guardian_laser] at @s run tp @s ^ ^ ^0.5

execute as @e[type=marker,tag=guardian_laser] at @s positioned ~ ~0.75 ~ if entity @a[tag=is_fighter,gamemode=adventure,distance=..2] run function fighter:guardian/check_laser_position

execute as @e[type=marker,tag=guardian_laser] at @s run tp @s ^ ^ ^0.5