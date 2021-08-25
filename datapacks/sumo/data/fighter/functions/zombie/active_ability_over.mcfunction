##Called when theo's active ability is over

##An ability type score of 0 means it was a ground ability. 1 means air ability.

##Set up cooldown
scoreboard players set @s[scores={ability_type=1}] ability_timer 400
clear @s[scores={ability_type=1}] leather_chestplate{costume:1b}
clear @s[scores={ability_type=1}] leather_leggings{costume:1b}
clear @s[scores={ability_type=1}] leather_boots{costume:1b}
execute if entity @s[scores={ability_type=1}] run function fighter:costume/update_costume

##Change state
scoreboard players set @s ability_state 2