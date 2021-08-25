##Called when theo's active ability is over

##An ability type score of 0 means it was a ground ability. 1 means air ability.

##Get back jump boost from the dash
execute if entity @s[scores={ability_type=0}] run function fighter:passive_effects

##Set up cooldown
scoreboard players set @s[scores={ability_type=0}] ability_timer 400


##Change state
scoreboard players set @s ability_state 2