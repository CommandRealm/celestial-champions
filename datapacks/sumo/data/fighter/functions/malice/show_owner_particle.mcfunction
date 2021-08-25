##Called to show our owner the particle for where we will explode

##tag
tag @s add temporary_tag

##Finding our owner
execute as @a[gamemode=adventure,tag=is_fighter] at @s run scoreboard players operation @s calculate = @s id
execute as @a[gamemode=adventure,tag=is_fighter] at @s run scoreboard players operation @s calculate -= @e[type=area_effect_cloud,tag=malice_detonation,tag=temporary_tag,sort=nearest,limit=1] id

##Showing particle
particle dust 1 0 0 1 ~ ~ ~ 0.25 0.15 0.25 0 10 force @p[gamemode=adventure,tag=is_fighter,scores={calculate=0}]

##remove tag
tag @s remove temporary_tag