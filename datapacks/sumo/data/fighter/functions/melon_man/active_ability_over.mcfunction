##Called when Melon Man's active ability is over

##An ability type score of 0 means it was a ground ability. 1 means air ability.

##Cooldown for ground pound
scoreboard players set @s[scores={ability_type=1}] ability_timer 350


##Change state
scoreboard players set @s ability_state 2