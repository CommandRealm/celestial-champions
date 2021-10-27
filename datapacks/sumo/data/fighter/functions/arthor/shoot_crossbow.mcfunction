##Called when we shoot our bow.

##Tag
tag @s add copy_id

##Timer for recall item
scoreboard players set @s[scores={random_stat=0}] random_cooldown 3
scoreboard players set @s[scores={random_stat=1}] random_cooldown 60
scoreboard players set @s[scores={random_stat=2}] random_cooldown 175
scoreboard players set @s[scores={random_stat=3}] random_cooldown 200
scoreboard players set @s[scores={random_stat=4}] random_cooldown 120
clear @s crossbow{Weapon:"combo"}
clear @s stick{Weapon:"combo"}

execute if score @s random_stat matches 0 run tag @e[type=arrow,tag=temporary_match_0,tag=temporary_match_1,tag=temporary_match_2,tag=temporary_match_3] add fire_arrow

execute if score @s random_stat matches 4 run tag @e[type=arrow,tag=temporary_match_0,tag=temporary_match_1,tag=temporary_match_2,tag=temporary_match_3] add darkness_arrow

execute if score @s random_stat matches 2 run tag @e[type=arrow,tag=temporary_match_0,tag=temporary_match_1,tag=temporary_match_2,tag=temporary_match_3] add earth_arrow

scoreboard players operation @e[type=arrow,tag=temporary_match_0,tag=temporary_match_1,tag=temporary_match_2,tag=temporary_match_3] id = @s id

tag @s remove copy_id