##called to see if we clicked the button or not

##Resetting calculate
scoreboard players set @s calculate -100

##seeing if we clicked it.
execute unless entity @s[nbt={Inventory:[{id:"minecraft:red_stained_glass_pane",tag:{previous_button:1b}}]}] store result score @s calculate run clear @s red_stained_glass_pane{previous_button:1b}

##previous if we clicked
execute if entity @s[scores={calculate=1}] run function music:controls/previous_song

##clearing our inventory and nearby items
clear @s red_stained_glass_pane{previous_button:1b}
kill @e[type=item,distance=..15,nbt={Item:{id:"minecraft:red_stained_glass_pane",tag:{previous_button:1b}}}]

##Putting items in our inventory
item replace entity @s inventory.15 with red_stained_glass_pane{not_clickable:1,previous_button:1b,display:{Name:'[{"translate":"Previous","color":"red","bold":true,"italic":false}]',Lore:['[{"translate":"Press to play","color":"gray","italic":false}]','[{"translate":"the previous track.","color":"gray","italic":false}]']}}
