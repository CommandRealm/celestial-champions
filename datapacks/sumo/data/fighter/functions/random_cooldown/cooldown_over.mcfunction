##Called when a random cooldown is over.
scoreboard players reset @s random_cooldown

##Other functions may need to be here in the future depending on the fighter.
execute if entity @s[scores={fighter=5}] run clear @s #minecraft:combo_weapon{Weapon:"combo"}
execute if entity @s[scores={fighter=7}] run clear @s #minecraft:combo_weapon{Weapon:"combo"}

##Elytra for drakier
execute if entity @s[scores={fighter=8}] run function fighter:drakier/get_elytra

##Callidus sound for trident coming back.
execute if entity @s[scores={fighter=10}] run function fighter:callidus/get_trident_back

##Gene swap banner
execute if entity @s[scores={fighter=11}] run function fighter:gene/swap_banner

##Melon ground pound
execute if entity @s[scores={fighter=12}] run function fighter:melon_man/ground_pound