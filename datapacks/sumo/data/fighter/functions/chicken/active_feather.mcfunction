##Called when the falling feathers are alive.

##Tp
execute as @e[type=armor_stand,tag=chicken_feather] at @s run tp @s ~ ~-0.05 ~ ~15 ~

##Particle
execute as @e[type=armor_stand,tag=chicken_feather] at @s run particle item feather ~ ~1.85 ~ 0 0 0 0.05 1