##Called to see which float spot is ours and tp us to it.

##tag
tag @s add temporary_tag

##Copying aec ids to calculate
execute as @e[type=area_effect_cloud,tag=blaze_floating_spot] at @s run scoreboard players operation @s calculate = @s id
##Subtraction
execute as @e[type=area_effect_cloud,tag=blaze_floating_spot] at @s run scoreboard players operation @s calculate -= @p[tag=temporary_tag] id

tp @s @e[type=area_effect_cloud,tag=blaze_floating_spot,limit=1,sort=nearest,scores={calculate=0}]


##Tag removal
tag @s remove temporary_tag