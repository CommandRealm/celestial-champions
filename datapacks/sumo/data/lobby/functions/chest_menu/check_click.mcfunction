##Called when someone clicks on something in the ender chest

##Seeing if it's an invalid click
execute store result score @s chest_clear run clear @s #minecraft:chest_menu{invalid_click:1} 0
tag @s[scores={chest_clear=1..}] add invalid_click

##Score reset
scoreboard players reset @s chest_clear

##If it's fighter selection
execute unless entity @s[nbt={Inventory:[{tag:{clickable:1}}]}] if entity @s[scores={screen=-1}] run function lobby:chest_menu/fighter_selection/click
execute unless entity @s[nbt={Inventory:[{tag:{clickable:1}}]}] if entity @s[scores={screen=0..}] run function lobby:chest_menu/click

##if we shift-clicked the item 
execute if entity @s[nbt={Inventory:[{tag:{clickable:1}}]},scores={screen=0..}] run function lobby:chest_menu/shift_click
execute if entity @s[nbt={Inventory:[{tag:{clickable:1}}]},scores={screen=-1}] run function lobby:chest_menu/fighter_selection/shift_click


##Actual clear
clear @s #minecraft:chest_menu{clickable:1}

##tag removal
tag @s remove invalid_click