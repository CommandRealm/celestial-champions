##Tps player back to their area effect cloud.


tag @e[type=area_effect_cloud,tag=start_lock_position_cloud] add lock_position_check

##Saves player rotation

execute store result score $x player_rotation run data get entity @s Rotation[0]
execute store result score $y player_rotation run data get entity @s Rotation[1]


##Applies rotation to entities
execute as @e[type=area_effect_cloud,tag=lock_position_check] at @s store result entity @s Rotation[0] float 1 run scoreboard players get $x player_rotation
execute as @e[type=area_effect_cloud,tag=lock_position_check] at @s store result entity @s Rotation[1] float 1 run scoreboard players get $y player_rotation

##Teleport player to entity
execute as @e[type=area_effect_cloud,tag=lock_position_check] at @s if score @s id = @p[tag=lock_position_check] id run tp @p[tag=lock_position_check] @s