##Called to use the toggle function of an ability.

##Incend
execute if entity @s[scores={fighter=7,ability_type=0}] run function fighter:incend/toggle_mode

##Gene answer
execute if score @s fighter matches 11 if score @s ability_type matches 0 if score @s ability_state matches 1 run function fighter:gene/answer_question