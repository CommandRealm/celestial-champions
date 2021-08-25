##Called to mark our death position

##tag
tag @s add temporary_tag

##summon
summon area_effect_cloud ~ ~ ~ {Tags:["mark_death_position"],Duration:2}

##Getting the aec to our death position
execute as @e[type=area_effect_cloud,tag=mark_death_position] at @s store result entity @s Pos[0] double 0.01 run scoreboard players get @p[tag=temporary_tag] death_pos_0
execute as @e[type=area_effect_cloud,tag=mark_death_position] at @s store result entity @s Pos[1] double 0.01 run scoreboard players get @p[tag=temporary_tag] death_pos_1
execute as @e[type=area_effect_cloud,tag=mark_death_position] at @s store result entity @s Pos[2] double 0.01 run scoreboard players get @p[tag=temporary_tag] death_pos_2

##Running summon function
function cosmetic:death_animation/summon



##removing tag and killing aec
tag @s remove temporary_tag
kill @e[type=area_effect_cloud,tag=mark_death_position]