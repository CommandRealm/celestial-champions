##Called to toggle this fighter's costume

##Removing invalid_costume tag
tag @s remove invalid_costume

##Adding score
scoreboard players add @s f_4_costume 1
##If we got too high
scoreboard players set @s[scores={f_4_costume=3..}] f_4_costume 0

##If we don't have this unlock
tag @s[scores={f_4_costume=2},tag=!unlock_spider_2] add invalid_costume


##If we have an invalid tag restart the function
execute if entity @s[tag=invalid_costume] run function lobby:chest_menu/fighter_selection/toggle_4_costume

##Sound
playsound minecraft:item.armor.equip_leather master @s[tag=!invalid_costume] ~ ~ ~ 1 1