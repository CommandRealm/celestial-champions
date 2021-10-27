##Called when callidus's active ability is over

##An ability type score of 0 means it was a ground ability. 1 means air ability.

##Remove tag
tag @s[scores={ability_type=0}] remove pause_needs_costume

##Remove boots
clear @s[scores={ability_type=0}] iron_boots{costume:1b}

##Reset knockback after dash
execute if entity @s[scores={ability_type=0}] run tag @s remove use_set_knockback

#Check if our kb is too high and fix it
execute if entity @s[scores={ability_type=0}] if score @s calc_knockback > @s max_knockback run scoreboard players operation @s calc_knockback = @s max_knockback
execute if entity @s[scores={ability_type=0}] run function fighter:damage/upgrade_knockback




##Set up cooldown
scoreboard players set @s[scores={ability_type=0}] ability_timer 400


##Change state
scoreboard players set @s ability_state 2