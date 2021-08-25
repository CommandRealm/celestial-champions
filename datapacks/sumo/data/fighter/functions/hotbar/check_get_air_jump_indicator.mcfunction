##Called to check what function we should run for our air jump indicator

##Defualt
execute unless entity @s[scores={fighter=8}] run function fighter:hotbar/get_air_jump_indicator

##Drakier
execute if entity @s[scores={fighter=8}] run function fighter:hotbar/drakier_get_air_jump_indicator