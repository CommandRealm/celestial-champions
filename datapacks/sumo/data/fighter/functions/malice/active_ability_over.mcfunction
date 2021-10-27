##Called when Malice's active ability is over

##An ability type score of 0 means it was a ground ability. 1 means air ability.

##Removing fear
tag @s[scores={ability_type=0}] remove fear_level_1

##Set up cooldowns
scoreboard players set @s[scores={ability_type=0}] ability_timer 500
scoreboard players set @s[scores={ability_type=1}] ability_timer 500


##Change state
scoreboard players set @s ability_state 2