##called when a death animation is active

execute as @e[type=armor_stand,tag=death_animation] at @s store result score @s calculate run data get entity @s Rotation[0]
scoreboard players add @e[type=armor_stand,tag=death_animation] calculate 15
execute as @e[type=armor_stand,tag=death_animation] store result entity @s Rotation[0] float 1 run scoreboard players get @s calculate

##tp
execute as @e[type=armor_stand,tag=death_animation] at @s run tp @s ~ ~1.095 ~


##particles
execute at @e[type=armor_stand,tag=death_animation] run particle firework ~ ~ ~ 0.25 0.5 0.25 0.15 1


##beacon effect
execute as @e[type=armor_stand,tag=beacon_death_animation] at @s run function cosmetic:death_animation/beacon_tp