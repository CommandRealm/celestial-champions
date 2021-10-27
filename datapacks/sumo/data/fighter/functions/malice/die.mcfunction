##called to kill our detonator
tag @s add used_ability
execute as @e[type=area_effect_cloud,tag=malice_detonation] at @s run scoreboard players operation @s calculate = @s id
execute as @e[type=area_effect_cloud,tag=malice_detonation] at @s run scoreboard players operation @s calculate -= @p[tag=used_ability] id
tag @s remove used_ability

kill @e[type=area_effect_cloud,tag=malice_detonation,scores={calculate=0}]