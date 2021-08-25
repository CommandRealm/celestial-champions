##Called when a player hits a player with a trident

##Set combo score
scoreboard players set @s combo 8

##Calling upgrade kb function
function fighter:damage/used_combo

##Reset random_cooldown score to get back trident
scoreboard players set @s random_cooldown 1

##Clear
clear @s light_gray_stained_glass_pane{ignore:1b}


advancement revoke @s only advancements:damage/trident_damage