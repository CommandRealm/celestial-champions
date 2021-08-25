##Tag
tag @s add blaze_fireball_motion

##Finding target

##Copying player ids to calculate
execute as @a[tag=is_fighter,gamemode=adventure] run scoreboard players operation @s calculate = @s id
##Subtraction
execute as @a[tag=is_fighter,gamemode=adventure] run scoreboard players operation @s calculate -= @e[type=zombie,tag=blaze_fireball_motion,sort=nearest,limit=1] id

##Tagging nearest target
tag @p[scores={calculate=1..},tag=is_fighter,gamemode=adventure] add temporary_tag
tag @p[scores={calculate=..-1},tag=is_fighter,gamemode=adventure] add temporary_tag
execute if entity @p[scores={calculate=..-1},tag=is_fighter,gamemode=adventure] if entity @p[scores={calculate=1..},tag=is_fighter,gamemode=adventure] run tag @a[tag=is_fighter,gamemode=adventure,sort=furthest,limit=1] remove temporary_tag



##Calverin's fireball tech
execute store result score @s pos_x run data get entity @s Pos[0] 100
execute as @p[tag=temporary_tag] at @s store result score @s pos_x run data get entity @s Pos[0] 100
scoreboard players operation @s pos_x -= @e[tag=temporary_tag,limit=1,sort=nearest] pos_x
execute store result score @s pos_y run data get entity @s Pos[1] 100
execute as @p[tag=temporary_tag] at @s store result score @s pos_y run data get entity @s Pos[1] 101
scoreboard players operation @s pos_y -= @e[tag=temporary_tag,limit=1,sort=nearest] pos_y
execute store result score @s pos_z run data get entity @s Pos[2] 100
execute as @p[tag=temporary_tag] at @s store result score @s pos_z run data get entity @s Pos[2] 100
scoreboard players operation @s pos_z -= @e[tag=temporary_tag,limit=1,sort=nearest] pos_z
execute at @s unless block ^ ^ ^-1 air run function fighter:blaze/fireball_needs_adjusted_movement


##Making sure the scores aren't above 10.
execute if score @s pos_x matches 1000.. run scoreboard players set @s pos_x 999
execute if score @s pos_y matches 1000.. run scoreboard players set @s pos_y 999
execute if score @s pos_z matches 1000.. run scoreboard players set @s pos_z 999
execute if score @s pos_x matches ..-1000 run scoreboard players set @s pos_x -999
execute if score @s pos_y matches ..-1000 run scoreboard players set @s pos_y -999
execute if score @s pos_z matches ..-1000 run scoreboard players set @s pos_z -999

##If there is no target
execute unless entity @p[tag=temporary_tag] run function fighter:blaze/fireball_no_target

##Applying motion
execute at @s if block ^ ^ ^-1 air store result entity @s Motion[0] double -0.00085 run scoreboard players get @s pos_x
execute at @s if block ^ ^ ^-1 air store result entity @s Motion[1] double -0.00085 run scoreboard players get @s pos_y
execute at @s if block ^ ^ ^-1 air store result entity @s Motion[2] double -0.00085 run scoreboard players get @s pos_z



##Particle
execute at @s run particle minecraft:flame ~ ~1 ~ 0 0 0 1 0 normal



##Removing tag
tag @a remove temporary_tag
tag @s remove blaze_fireball_motion