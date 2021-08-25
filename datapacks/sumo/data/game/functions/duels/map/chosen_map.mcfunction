##Called by an area effect cloud marking a chosen map.
execute if entity @s[tag=duel_map_1] run tp @s -4000 71 2000
execute if entity @s[tag=duel_map_2] run tp @s -4000 71 1000
execute if entity @s[tag=duel_map_3] run tp @s -4000 71 0
execute if entity @s[tag=duel_map_4] run tp @s -4000 71 -1000
execute if entity @s[tag=duel_map_5] run tp @s -4000 71 -2000
execute if entity @s[tag=duel_map_6] run tp @s -4000 71 -3000
execute if entity @s[tag=duel_map_7] run tp @s -5000 71 2000
execute if entity @s[tag=duel_map_8] run tp @s -5000 71 1000
execute if entity @s[tag=duel_map_9] run tp @s -5000 71 0
execute if entity @s[tag=duel_map_10] run tp @s -5000 71 -1000
execute if entity @s[tag=duel_map_11] run tp @s -5000 71 -2000
execute if entity @s[tag=duel_map_12] run tp @s -5000 71 -3000
execute if entity @s[tag=duel_map_13] run tp @s -6000 71 2000
execute if entity @s[tag=duel_map_14] run tp @s -6000 71 1000
execute if entity @s[tag=duel_map_15] run tp @s -6000 71 0
execute if entity @s[tag=duel_map_16] run tp @s -6000 71 -1000
execute if entity @s[tag=duel_map_17] run tp @s -6000 71 -2000
execute if entity @s[tag=duel_map_18] run tp @s -6000 71 -3000
execute if entity @s[tag=duel_map_19] run tp @s -7000 71 2000
execute if entity @s[tag=duel_map_20] run tp @s -7000 71 1000
execute if entity @s[tag=duel_map_21] run tp @s -7000 71 0
execute if entity @s[tag=duel_map_22] run tp @s -7000 71 -1000
execute if entity @s[tag=duel_map_23] run tp @s -7000 71 -2000
execute if entity @s[tag=duel_map_24] run tp @s -7000 71 -3000
execute if entity @s[tag=duel_map_25] run tp @s -8000 71 0

##Giving us duration and map marker tag
data merge entity @s {Age:-2147483648,Duration:-1,WaitTime:-2147483648}
tag @s add map_marker

##Tp random player to us
execute at @s run tp @r[tag=playing,tag=!in_duels_map] @s

##Moving players opponent to us.
execute at @s run tag @p[distance=..5,tag=playing] add temporary_tag
execute as @a[tag=playing,tag=!temporary_tag] at @s if score @s id = @p[tag=temporary_tag] duels run tp @s @p[tag=temporary_tag]

execute at @s run tag @a[distance=..5,tag=playing] add in_duels_map
execute at @s as @p[distance=..5,tag=playing] at @s run tp @s ~7 ~ ~ facing ~-7 ~ ~
execute at @s as @p[distance=..5,tag=playing] at @s run tp @s ~-7 ~ ~ facing ~7 ~ ~




##Removing tag
tag @a remove temporary_tag

##Resetting check score (it's used to see if we need to generate another map.)
scoreboard players set $check duels 0

##Seeing if we still have players who aren't in a map.
execute as @a[tag=playing,tag=!in_duels_map] at @s unless entity @s[scores={duels=..0}] run scoreboard players set $check duels 1

##Run this again if there is still players.
execute if score $check duels matches 1 as @e[type=area_effect_cloud,tag=duel_map_point,sort=random,limit=1,tag=!map_marker] at @s run function game:duels/map/chosen_map