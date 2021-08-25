##Called to find our aec and tp to it

##tag
tag @s add temporary_tag

execute as @e[type=area_effect_cloud,tag=item_spawn] at @s run scoreboard players operation @s calculate = @s id
execute as @e[type=area_effect_cloud,tag=item_spawn] at @s run scoreboard players operation @s calculate -= @e[type=item,tag=temporary_tag,sort=nearest,limit=1] id

tp @s @e[type=area_effect_cloud,tag=item_spawn,scores={calculate=0},sort=nearest,limit=1]


##tag
tag @s remove temporary_tag