##Called to start a round of duels
##Function rounds at the start of every duel






gamemode adventure @a[tag=playing]
clear @a[tag=playing]
effect clear @a[tag=playing]


##Tag removals
tag @a remove in_duels_map
tag @a[tag=playing] remove is_fighter
tag @a[tag=playing] remove had_damage_id

scoreboard players reset @a[tag=playing] damaged_id

scoreboard players set @a[tag=playing] lives 1



##Modifying sidebar and list objectives to have a fancy title
scoreboard objectives modify sidebar displayname [{"text":"☀","color":"white","bold":false},{"text":" Wins ","color":"aqua","bold":true},{"text":"☀","color":"white","bold":false}]


##Resetting fighter scores
execute as @a[tag=playing] at @s run function fighter:reset_scores

##Giving back passive potion effects
execute as @a[tag=playing] at @s run function fighter:passive_effects

summon area_effect_cloud 0 0 0 {Duration:1,Tags:["duel_map_point","duel_map_1"]}
summon area_effect_cloud 0 0 0 {Duration:1,Tags:["duel_map_point","duel_map_2"]}
summon area_effect_cloud 0 0 0 {Duration:1,Tags:["duel_map_point","duel_map_3"]}
summon area_effect_cloud 0 0 0 {Duration:1,Tags:["duel_map_point","duel_map_4"]}
summon area_effect_cloud 0 0 0 {Duration:1,Tags:["duel_map_point","duel_map_5"]}
summon area_effect_cloud 0 0 0 {Duration:1,Tags:["duel_map_point","duel_map_6"]}
summon area_effect_cloud 0 0 0 {Duration:1,Tags:["duel_map_point","duel_map_7"]}
summon area_effect_cloud 0 0 0 {Duration:1,Tags:["duel_map_point","duel_map_8"]}
summon area_effect_cloud 0 0 0 {Duration:1,Tags:["duel_map_point","duel_map_9"]}
summon area_effect_cloud 0 0 0 {Duration:1,Tags:["duel_map_point","duel_map_10"]}
summon area_effect_cloud 0 0 0 {Duration:1,Tags:["duel_map_point","duel_map_11"]}
summon area_effect_cloud 0 0 0 {Duration:1,Tags:["duel_map_point","duel_map_12"]}
summon area_effect_cloud 0 0 0 {Duration:1,Tags:["duel_map_point","duel_map_13"]}
summon area_effect_cloud 0 0 0 {Duration:1,Tags:["duel_map_point","duel_map_14"]}
summon area_effect_cloud 0 0 0 {Duration:1,Tags:["duel_map_point","duel_map_15"]}
summon area_effect_cloud 0 0 0 {Duration:1,Tags:["duel_map_point","duel_map_16"]}
summon area_effect_cloud 0 0 0 {Duration:1,Tags:["duel_map_point","duel_map_17"]}
summon area_effect_cloud 0 0 0 {Duration:1,Tags:["duel_map_point","duel_map_18"]}
summon area_effect_cloud 0 0 0 {Duration:1,Tags:["duel_map_point","duel_map_19"]}
summon area_effect_cloud 0 0 0 {Duration:1,Tags:["duel_map_point","duel_map_20"]}
summon area_effect_cloud 0 0 0 {Duration:1,Tags:["duel_map_point","duel_map_21"]}
summon area_effect_cloud 0 0 0 {Duration:1,Tags:["duel_map_point","duel_map_22"]}
summon area_effect_cloud 0 0 0 {Duration:1,Tags:["duel_map_point","duel_map_23"]}
summon area_effect_cloud 0 0 0 {Duration:1,Tags:["duel_map_point","duel_map_24"]}
summon area_effect_cloud 0 0 0 {Duration:1,Tags:["duel_map_point","duel_map_25"]}

##Adding duels by one
scoreboard players add $duel duels 1

##Removing force loads
forceload remove all

##Changing our specific duel score to a general duel score
execute if score $duel duels matches 1 as @a[tag=playing] at @s run scoreboard players operation @s duels = @s duel_1
execute if score $duel duels matches 2 as @a[tag=playing] at @s run scoreboard players operation @s duels = @s duel_2
execute if score $duel duels matches 3 as @a[tag=playing] at @s run scoreboard players operation @s duels = @s duel_3
execute if score $duel duels matches 4 as @a[tag=playing] at @s run scoreboard players operation @s duels = @s duel_4
execute if score $duel duels matches 5 as @a[tag=playing] at @s run scoreboard players operation @s duels = @s duel_5
execute if score $duel duels matches 6 as @a[tag=playing] at @s run scoreboard players operation @s duels = @s duel_6
execute if score $duel duels matches 7 as @a[tag=playing] at @s run scoreboard players operation @s duels = @s duel_7
execute if score $duel duels matches 8 as @a[tag=playing] at @s run scoreboard players operation @s duels = @s duel_8
execute if score $duel duels matches 9 as @a[tag=playing] at @s run scoreboard players operation @s duels = @s duel_9
execute if score $duel duels matches 10 as @a[tag=playing] at @s run scoreboard players operation @s duels = @s duel_10
execute if score $duel duels matches 11 as @a[tag=playing] at @s run scoreboard players operation @s duels = @s duel_11

execute as @e[type=area_effect_cloud,tag=duel_map_point,sort=random,limit=1] at @s run function game:duels/map/chosen_map

##Title
team join gold @a[tag=playing]
title @a[tag=playing] title [{"text":"Fight ","color":"aqua","bold":true},{"score":{"objective":"duels","name":"$duel"},"color":"white","bold":false}]
execute as @a[tag=playing] at @s run function game:duels/subtitle

##Joining proper team

##Tag to make players join team
tag @a[tag=playing] add join_team
function game:join_solo_team
tag @a[tag=playing] remove join_team
##update teams suffixes
tag @a[tag=playing] add update_suffix
function game:suffix/update_suffix
tag @a[tag=playing] remove update_suffix

tag @a[tag=playing] add update_prefix
function game:prefix/update_prefix
tag @a[tag=playing] remove update_prefix

##Putting players on their bye team and moving them.
team join bye @a[tag=playing,scores={duels=..0}]
gamemode spectator @a[team=bye]
tp @a[team=bye] @r[tag=playing,team=!bye]


##Stat
scoreboard players add @a[tag=playing] stats_duels 1



##Kills
kill @e[type=area_effect_cloud,tag=duel_map_point,tag=!map_marker]

##Reset sidebar
scoreboard objectives setdisplay sidebar

##Settings timer (this is just for carry over from a long previous round.)
scoreboard players set @a[tag=playing] duels_timer 2400
