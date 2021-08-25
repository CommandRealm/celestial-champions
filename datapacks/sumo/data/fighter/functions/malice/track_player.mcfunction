##Called when an area effect cloud needs to follow their tracked player

##tag
tag @s add temporary_tag



##Copying our random_stat to calculate
execute as @a[gamemode=adventure,tag=is_fighter] at @s run scoreboard players operation @s calculate = @s id
execute as @a[gamemode=adventure,tag=is_fighter] at @s run scoreboard players operation @s calculate -= @e[type=area_effect_cloud,tag=malice_detonation,tag=temporary_tag,sort=nearest,limit=1] random_stat

##whoever has a caluclate score of 0 is our target
tp @s @p[gamemode=adventure,tag=is_fighter,scores={calculate=0}]

##If there is no target
execute unless entity @p[gamemode=adventure,tag=is_fighter,scores={calculate=0}] run function fighter:entity_death_timer_over

##remove tag
tag @s remove temporary_tag