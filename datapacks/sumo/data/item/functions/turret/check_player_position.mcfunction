##Called to see if we have a nearby player who didn't shoot us.

##Tag
tag @s add temporary_tag

execute as @a[tag=is_fighter,gamemode=adventure,distance=..5] at @s run scoreboard players operation @s calculate = @s id

execute as @a[tag=is_fighter,gamemode=adventure,distance=..5] at @s run scoreboard players operation @s calculate -= @e[type=area_effect_cloud,tag=temporary_tag,sort=nearest,limit=1] id

execute if entity @a[tag=is_fighter,gamemode=adventure,scores={calculate=1..},distance=..5] run tag @s add about_to_explode
execute if entity @a[tag=is_fighter,gamemode=adventure,scores={calculate=..-1},distance=..5] run tag @s add about_to_explode
execute if entity @s[tag=about_to_explode] run function item:turret/explode

##Tag removal
tag @s remove temporary_tag