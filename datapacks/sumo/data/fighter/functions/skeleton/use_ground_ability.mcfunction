##Called when theo uses his ground ability

##Scores

##Setting the ability state to active
scoreboard players set @s ability_state 2

##Showing how long the ability lasts for
scoreboard players set @s ability_timer 80

##Clarifying it as a ground ability (0 is ground, 1 is air)
scoreboard players set @s ability_type 0




##Tellraw
tellraw @s[tag=!no_ability_msg] [{"translate":"--------------------------","color":"aqua"},{"translate":"\nGround Ability: ","color":"gray","bold":true},{"translate":"Arrow Barrage\n","color":"white"},{"translate":"(Hover for description.)\n","color":"#bd9b4b","italic":true,"hoverEvent":{"action":"show_text","value":{"translate":"Fire 9 arrows in front of you."}}},{"translate":"--------------------------","color":"aqua"}]


##Sounds
playsound minecraft:entity.arrow.shoot master @a ~ ~ ~ 1 0.75
playsound minecraft:entity.arrow.shoot master @a ~ ~ ~ 1 1.0
playsound minecraft:entity.arrow.shoot master @a ~ ~ ~ 1 1.25



##Shooting arrows

tag @s add used_ability
##Shooting arrows


##Called to shoot an arrow with motion
execute positioned ^ ^ ^1 run summon arrow ~ ~-.15 ~ {Tags:["needs_motion","additional_damage_2","skeleton_arrow"]}
execute positioned ^0.25 ^ ^1 run summon arrow ~ ~ ~ {Tags:["needs_motion","additional_damage_2","skeleton_arrow"]}
execute positioned ^-0.25 ^ ^1 run summon arrow ~ ~ ~ {Tags:["needs_motion","additional_damage_2","skeleton_arrow"]}
execute positioned ^0.125 ^ ^1 run summon arrow ~ ~ ~ {Tags:["needs_motion","additional_damage_2","skeleton_arrow"]}
execute positioned ^-0.125 ^ ^1 run summon arrow ~ ~ ~ {Tags:["needs_motion","additional_damage_2","skeleton_arrow"]}
execute positioned ^0.5 ^ ^1 run summon arrow ~ ~ ~ {Tags:["needs_motion","additional_damage_2","skeleton_arrow"]}
execute positioned ^-0.5 ^ ^1 run summon arrow ~ ~ ~ {Tags:["needs_motion","additional_damage_2","skeleton_arrow"]}
execute positioned ^-0.375 ^ ^1 run summon arrow ~ ~ ~ {Tags:["needs_motion","additional_damage_2","skeleton_arrow"]}
execute positioned ^0.375 ^ ^1 run summon arrow ~ ~ ~ {Tags:["needs_motion","additional_damage_2","skeleton_arrow"]}





##Copying UUID
execute as @e[type=arrow,tag=needs_motion] at @s run data modify entity @s Owner set from entity @s UUID




##Store positions (players)
execute store result score @s pos_x run data get entity @s Pos[0] 100
execute store result score @s pos_y run data get entity @s Pos[1] 100
execute store result score @s pos_z run data get entity @s Pos[2] 100

##Store positions (arrow)
execute as @e[type=arrow,tag=needs_motion] at @s store result score @s pos_x run data get entity @s Pos[0] 100
execute as @e[type=arrow,tag=needs_motion] at @s store result score @s pos_y run data get entity @s Pos[1] 100
execute as @e[type=arrow,tag=needs_motion] at @s store result score @s pos_z run data get entity @s Pos[2] 100

##Tp
execute as @e[type=arrow,tag=needs_motion] at @s run tp @s ~ ~1.75 ~

##Subtracting
execute as @e[type=arrow,tag=needs_motion] at @s run scoreboard players operation @s pos_x -= @p[tag=used_ability] pos_x
execute as @e[type=arrow,tag=needs_motion] at @s run scoreboard players operation @s pos_y -= @p[tag=used_ability] pos_y
execute as @e[type=arrow,tag=needs_motion] at @s run scoreboard players operation @s pos_z -= @p[tag=used_ability] pos_z

##Applying motion
execute as @e[type=arrow,tag=needs_motion] at @s store result entity @s Motion[0] double 0.015 run scoreboard players get @s pos_x
execute as @e[type=arrow,tag=needs_motion] at @s store result entity @s Motion[1] double 0.0015 run scoreboard players get @s pos_y
execute as @e[type=arrow,tag=needs_motion] at @s store result entity @s Motion[2] double 0.015 run scoreboard players get @s pos_z

##Removing tag
tag @e[type=arrow,tag=needs_motion] remove needs_motion









tag @s remove used_ability