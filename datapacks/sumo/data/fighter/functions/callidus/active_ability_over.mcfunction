##Called when callidus's active ability is over

##An ability type score of 0 means it was a ground ability. 1 means air ability.

##Remove tag
tag @s[scores={ability_type=0}] remove pause_needs_costume

##Remove boots
clear @s[scores={ability_type=0}] iron_boots{costume:1b}



##Set up cooldown
scoreboard players set @s[scores={ability_type=0}] ability_timer 340


##Change state
scoreboard players set @s ability_state 2