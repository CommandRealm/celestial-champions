##Swap banner color

##Adding score
scoreboard players add @s random_stat 1

##If it goes too high
scoreboard players reset @s[scores={random_stat=2..}] random_stat

##Clearing our current banner
clear @s blue_banner{Weapon:"combo"}
clear @s yellow_banner{Weapon:"combo"}

##getting new banner
function fighter:hotbar/get_combo_weapon