##called to do an animation for the items
execute at @e[type=area_effect_cloud,tag=item_spawn] run particle soul_fire_flame ~ ~-0.75 ~ 0.05 0.05 0.05 0.15 2
execute at @e[type=area_effect_cloud,tag=item_spawn] run particle dust 0.922 0.82 0.255 1 ~ ~-0.75 ~ 0.05 10 0.05 0.15 25 force @a

##Tp
execute as @e[type=area_effect_cloud,tag=item_spawn] at @s run tp @s ~ ~-0.15 ~ ~10 ~

##Sound
execute at @e[type=area_effect_cloud,tag=item_spawn] run playsound minecraft:block.beacon.ambient master @a ~ ~ ~ 0.25


##Timer and particles
scoreboard players add @e[type=area_effect_cloud,tag=item_spawn] random_cooldown 1
execute as @e[type=area_effect_cloud,tag=item_spawn,scores={random_cooldown=1}] at @s run particle firework ^ ^ ^1 0 0 0 0 1
execute as @e[type=area_effect_cloud,tag=item_spawn,scores={random_cooldown=2}] at @s run particle firework ^ ^ ^1.15 0 0 0 0 1
execute as @e[type=area_effect_cloud,tag=item_spawn,scores={random_cooldown=3}] at @s run particle firework ^ ^ ^1.3 0 0 0 0 1
execute as @e[type=area_effect_cloud,tag=item_spawn,scores={random_cooldown=4}] at @s run particle firework ^ ^ ^1.45 0 0 0 0 1
execute as @e[type=area_effect_cloud,tag=item_spawn,scores={random_cooldown=5}] at @s run particle firework ^ ^ ^1.60 0 0 0 0 1
execute as @e[type=area_effect_cloud,tag=item_spawn,scores={random_cooldown=6}] at @s run particle firework ^ ^ ^1.75 0 0 0 0 1
execute as @e[type=area_effect_cloud,tag=item_spawn,scores={random_cooldown=7}] at @s run particle firework ^ ^ ^1.60 0 0 0 0 1
execute as @e[type=area_effect_cloud,tag=item_spawn,scores={random_cooldown=8}] at @s run particle firework ^ ^ ^1.45 0 0 0 0 1
execute as @e[type=area_effect_cloud,tag=item_spawn,scores={random_cooldown=9}] at @s run particle firework ^ ^ ^1.3 0 0 0 0 1
execute as @e[type=area_effect_cloud,tag=item_spawn,scores={random_cooldown=10}] at @s run particle firework ^ ^ ^1.15 0 0 0 0 1
execute as @e[type=area_effect_cloud,tag=item_spawn,scores={random_cooldown=11}] at @s run particle firework ^ ^ ^1 0 0 0 0 1
execute as @e[type=area_effect_cloud,tag=item_spawn,scores={random_cooldown=1}] at @s run particle firework ^ ^ ^-1 0 0 0 0 1
execute as @e[type=area_effect_cloud,tag=item_spawn,scores={random_cooldown=2}] at @s run particle firework ^ ^ ^-1.15 0 0 0 0 1
execute as @e[type=area_effect_cloud,tag=item_spawn,scores={random_cooldown=3}] at @s run particle firework ^ ^ ^-1.3 0 0 0 0 1
execute as @e[type=area_effect_cloud,tag=item_spawn,scores={random_cooldown=4}] at @s run particle firework ^ ^ ^-1.45 0 0 0 0 1
execute as @e[type=area_effect_cloud,tag=item_spawn,scores={random_cooldown=5}] at @s run particle firework ^ ^ ^-1.60 0 0 0 0 1
execute as @e[type=area_effect_cloud,tag=item_spawn,scores={random_cooldown=6}] at @s run particle firework ^ ^ ^-1.75 0 0 0 0 1
execute as @e[type=area_effect_cloud,tag=item_spawn,scores={random_cooldown=7}] at @s run particle firework ^ ^ ^-1.60 0 0 0 0 1
execute as @e[type=area_effect_cloud,tag=item_spawn,scores={random_cooldown=8}] at @s run particle firework ^ ^ ^-1.45 0 0 0 0 1
execute as @e[type=area_effect_cloud,tag=item_spawn,scores={random_cooldown=9}] at @s run particle firework ^ ^ ^-1.3 0 0 0 0 1
execute as @e[type=area_effect_cloud,tag=item_spawn,scores={random_cooldown=10}] at @s run particle firework ^ ^ ^-1.15 0 0 0 0 1
execute as @e[type=area_effect_cloud,tag=item_spawn,scores={random_cooldown=11}] at @s run particle firework ^ ^ ^-1 0 0 0 0 1

scoreboard players set @e[type=area_effect_cloud,tag=item_spawn,scores={random_cooldown=12}] random_cooldown 0


##Killing if we hit ground
execute as @e[type=area_effect_cloud,tag=item_spawn] at @s unless block ~ ~-0.1 ~ air run scoreboard players set @s[scores={death_timer=2..}] death_timer 1

