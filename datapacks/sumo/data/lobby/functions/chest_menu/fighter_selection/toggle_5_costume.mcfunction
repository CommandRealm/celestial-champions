##Called to toggle this fighter's costume

##Removing invalid_costume tag
tag @s remove invalid_costume

##Adding score
scoreboard players add @s f_5_costume 1
##If we got too high
scoreboard players set @s[scores={f_5_costume=4..}] f_5_costume 0

##If we don't have this unlock
tag @s[scores={f_5_costume=2},tag=!unlock_chicken_2] add invalid_costume
tag @s[scores={f_5_costume=3},tag=!unlock_chicken_3] add invalid_costume

##If we have an invalid tag restart the function
execute if entity @s[tag=invalid_costume] run function lobby:chest_menu/fighter_selection/toggle_5_costume

##Sound
playsound minecraft:item.armor.equip_leather master @s[tag=!invalid_costume] ~ ~ ~ 1 1