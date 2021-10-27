##Tag
tag @s add temporary_tag

##AEC summon
execute positioned ^ ^ ^0.3 run summon area_effect_cloud ~ ~ ~ {Tags:["temporary_tag"]}


##Store positions (self)
execute store result score @s pos_x run data get entity @s Pos[0] 100
execute store result score @s pos_y run data get entity @s Pos[1] 100
execute store result score @s pos_z run data get entity @s Pos[2] 100

##Store positions (area_effect_cloud)
execute as @e[type=area_effect_cloud,tag=temporary_tag] at @s store result score @s pos_x run data get entity @s Pos[0] 100
execute as @e[type=area_effect_cloud,tag=temporary_tag] at @s store result score @s pos_y run data get entity @s Pos[1] 100
execute as @e[type=area_effect_cloud,tag=temporary_tag] at @s store result score @s pos_z run data get entity @s Pos[2] 100


##Subtracting
execute as @e[type=area_effect_cloud,tag=temporary_tag] at @s run scoreboard players operation @s pos_x -= @e[tag=temporary_tag,sort=nearest,limit=1,type=spider] pos_x
execute as @e[type=area_effect_cloud,tag=temporary_tag] at @s run scoreboard players operation @s pos_y -= @e[tag=temporary_tag,sort=nearest,limit=1,type=spider] pos_y
execute as @e[type=area_effect_cloud,tag=temporary_tag] at @s run scoreboard players operation @s pos_z -= @e[tag=temporary_tag,sort=nearest,limit=1,type=spider] pos_z

##Applying motion
execute store result entity @s Motion[0] double 0.045 run scoreboard players get @e[type=area_effect_cloud,tag=temporary_tag,sort=nearest,limit=1] pos_x
data modify entity @s Motion[1] set value 0.5
execute store result entity @s Motion[2] double 0.045 run scoreboard players get @e[type=area_effect_cloud,tag=temporary_tag,sort=nearest,limit=1] pos_z

##Removing tags
kill @e[type=area_effect_cloud,tag=temporary_tag]
tag @s remove temporary_tag