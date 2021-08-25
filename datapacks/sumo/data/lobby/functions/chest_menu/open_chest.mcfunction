##Called when a player opens an ender chest. This function clears the ender chest and determines what the start screen should be.

##Reset score
scoreboard players reset @s open_echest

##Fighter menu
execute if entity @e[distance=..6,type=area_effect_cloud,tag=fighter_select_chest] run function lobby:chest_menu/fighter_selection/start


##Normal menu
execute unless entity @e[distance=..6,type=area_effect_cloud,tag=fighter_select_chest] run function lobby:chest_menu/start


##Sound

playsound minecraft:block.ender_chest.open master @s ~ ~ ~ 1 0