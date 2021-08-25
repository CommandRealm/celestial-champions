##called when a slime platform exists

##particles
execute at @e[type=armor_stand,tag=slime_platform] run particle sneeze ~ ~0.75 ~ 0.15 0.15 0.15 0.05 1

##Effect
execute at @e[type=armor_stand,tag=slime_platform,scores={death_timer=..99}] as @a[gamemode=adventure,tag=is_fighter,distance=..1] run function fighter:slime/launched_by_platform

##Tp
execute as @e[type=armor_stand,tag=slime_platform] at @s run tp @s ^ ^ ^0.35
