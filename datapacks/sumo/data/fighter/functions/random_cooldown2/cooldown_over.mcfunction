##Called when a random cooldown is over.
scoreboard players reset @s random_cooldown2

##Elytra for drakier
##execute if entity @s[scores={fighter=8}] run function fighter:drakier/get_firework

##Shooting with Gene
##execute if entity @s[scores={fighter=11}] run function fighter:gene/shoot_letter  