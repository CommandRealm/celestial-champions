##Called when the cooldown ends. (This applies to the active cooldown as well as the inactive cooldown)

##Calling fighter functions for active ability ending
execute as @a[scores={ability_timer=0,ability_state=1}] at @s run function fighter:ability/active_ability_over


##Setting score so abilities can be run again
scoreboard players set @a[scores={ability_timer=0,ability_state=2}] ability_state 0