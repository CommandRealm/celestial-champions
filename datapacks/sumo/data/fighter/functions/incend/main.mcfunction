##This function runs whenever a player is using Incend

##Using shield
execute as @a[scores={use_shield=1..,fighter=7}] at @s run function fighter:incend/use_shield

##Tnt active
execute if entity @e[tag=incend_tnt] run function fighter:incend/active_tnt

