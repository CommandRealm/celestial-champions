##Checks to see if you're close enough to the area effect cloud.

##Adds tag so player can be referenced later
tag @s add lock_position_check

##Adds tag so entity can be referenced later


tag @e[type=area_effect_cloud,distance=..0.01,tag=start_lock_position_cloud] add lock_position_check

##Checks if the ids match
execute as @e[type=area_effect_cloud,tag=lock_position_check] at @s if score @s id = @p[tag=lock_position_check] id run tag @p[tag=lock_position_check] add lock_position_check_passed

##If they dont match run fix_position function

execute unless entity @s[tag=lock_position_check_passed] run function game:starting_countdown/fix_position


##Remove tags
tag @s remove lock_position_check
tag @s remove lock_position_check_passed
tag @e[type=area_effect_cloud,tag=lock_position_check] remove lock_position_check
