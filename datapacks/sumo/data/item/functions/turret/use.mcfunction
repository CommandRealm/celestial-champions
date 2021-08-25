##Called to summon a turret

summon skeleton ~ ~ ~ {NoAI:1b,Tags:["on_death_timer","needs_death_timer","turret"],Invulnerable:1b,ArmorItems:[{id:"minecraft:netherite_boots",Count:1b},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:8471877}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:7500402}}},{Count:1b,id:"minecraft:observer"}],HandItems:[{id:"minecraft:bow",Count:1b},{}]}

##Tp
tp @e[type=skeleton,tag=needs_death_timer] @s
execute as @e[type=skeleton,tag=needs_death_timer] at @s run tp @s ^ ^ ^1

##id copy
scoreboard players operation @e[type=skeleton,tag=needs_death_timer] id = @s id

##Random stat
scoreboard players set @e[type=skeleton,tag=needs_death_timer] random_stat 10

##Death timer setup
scoreboard players set @e[type=skeleton,tag=needs_death_timer] death_timer 100
tag @e[type=skeleton,tag=needs_death_timer] remove needs_death_timer