##Called to summon feathers (done in a separate function because of raycasting positioned)
summon armor_stand ~1 ~-1.75 ~ {Tags:["die","chicken_feather","needs_death_timer","on_death_timer"],ArmorItems:[{},{},{},{id:"minecraft:feather",Count:1b}],Invisible:1b,Marker:1b,Invulnerable:1b}
summon armor_stand ~ ~-1.75 ~1 {Tags:["die","chicken_feather","needs_death_timer","on_death_timer"],ArmorItems:[{},{},{},{id:"minecraft:feather",Count:1b}],Invisible:1b,Marker:1b,Invulnerable:1b}
summon armor_stand ~-1 ~-1.75 ~ {Tags:["die","chicken_feather","needs_death_timer","on_death_timer"],ArmorItems:[{},{},{},{id:"minecraft:feather",Count:1b}],Invisible:1b,Marker:1b,Invulnerable:1b}
summon armor_stand ~ ~-1.75 ~-1 {Tags:["die","chicken_feather","needs_death_timer","on_death_timer"],ArmorItems:[{},{},{},{id:"minecraft:feather",Count:1b}],Invisible:1b,Marker:1b,Invulnerable:1b}


##Random tps to change y-lvl.
execute as @e[type=armor_stand,tag=needs_death_timer,sort=random,limit=2] at @s run tp @s ~ ~0.25 ~
execute as @e[type=armor_stand,tag=needs_death_timer,sort=random,limit=2] at @s run tp @s ~ ~0.25 ~
execute as @e[type=armor_stand,tag=needs_death_timer,sort=random,limit=2] at @s run tp @s ~ ~-0.25 ~
execute as @e[type=armor_stand,tag=needs_death_timer,sort=random,limit=2] at @s run tp @s ~ ~-0.25 ~

execute as @e[type=armor_stand,tag=needs_death_timer,sort=random,limit=2] at @s run tp @s ~ ~0.25 ~
execute as @e[type=armor_stand,tag=needs_death_timer,sort=random,limit=2] at @s run tp @s ~ ~0.25 ~
execute as @e[type=armor_stand,tag=needs_death_timer,sort=random,limit=2] at @s run tp @s ~ ~-0.25 ~
execute as @e[type=armor_stand,tag=needs_death_timer,sort=random,limit=2] at @s run tp @s ~ ~-0.25 ~

execute as @e[type=armor_stand,tag=needs_death_timer,sort=random,limit=2] at @s run tp @s ~ ~0.15 ~
execute as @e[type=armor_stand,tag=needs_death_timer,sort=random,limit=2] at @s run tp @s ~ ~0.15 ~
execute as @e[type=armor_stand,tag=needs_death_timer,sort=random,limit=2] at @s run tp @s ~ ~-0.15 ~
execute as @e[type=armor_stand,tag=needs_death_timer,sort=random,limit=2] at @s run tp @s ~ ~-0.15 ~

execute as @e[type=armor_stand,tag=needs_death_timer,sort=random,limit=2] at @s run tp @s ~ ~0.15 ~
execute as @e[type=armor_stand,tag=needs_death_timer,sort=random,limit=2] at @s run tp @s ~ ~0.15 ~
execute as @e[type=armor_stand,tag=needs_death_timer,sort=random,limit=2] at @s run tp @s ~ ~-0.15 ~
execute as @e[type=armor_stand,tag=needs_death_timer,sort=random,limit=2] at @s run tp @s ~ ~-0.15 ~

##Setting death timer
scoreboard players set @e[type=armor_stand,tag=needs_death_timer] death_timer 40
scoreboard players add @e[type=armor_stand,tag=needs_death_timer,sort=random,limit=2] death_timer 3
scoreboard players remove @e[type=armor_stand,tag=needs_death_timer,sort=random,limit=2] death_timer 3
scoreboard players add @e[type=armor_stand,tag=needs_death_timer,sort=random,limit=2] death_timer 2
scoreboard players remove @e[type=armor_stand,tag=needs_death_timer,sort=random,limit=2] death_timer 2
scoreboard players add @e[type=armor_stand,tag=needs_death_timer,sort=random,limit=2] death_timer 1
scoreboard players remove @e[type=armor_stand,tag=needs_death_timer,sort=random,limit=2] death_timer 1

tag @e[type=armor_stand,tag=needs_death_timer] remove needs_death_timer