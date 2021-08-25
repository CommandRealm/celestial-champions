##Called to see if we have a detonator spot or an arrow

##tag
tag @s add temporary_tag


##If we have detonator
execute as @e[type=area_effect_cloud,tag=malice_detonation] at @s run scoreboard players operation @s calculate = @s id
execute as @e[type=area_effect_cloud,tag=malice_detonation] at @s run scoreboard players operation @s calculate -= @p[tag=temporary_tag] id

execute if entity @e[type=area_effect_cloud,tag=malice_detonation,scores={calculate=0}] run tag @s add temporary_tag_2

execute as @e[type=arrow,tag=malice_arrow] at @s run scoreboard players operation @s calculate = @s id
execute as @e[type=arrow,tag=malice_arrow] at @s run scoreboard players operation @s calculate -= @p[tag=temporary_tag] id

execute if entity @e[type=arrow,tag=malice_arrow,scores={calculate=0}] run tag @s add temporary_tag_2

##If we don't have an arrow, give us an arrow
scoreboard players set @s[tag=!temporary_tag_2] arrow_timer 1


##tag remove
tag @s remove temporary_tag
tag @s remove temporary_tag_2