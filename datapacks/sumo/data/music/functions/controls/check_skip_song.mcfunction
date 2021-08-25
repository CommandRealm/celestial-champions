##called to see if we clicked the button or not

##Resetting calculate
scoreboard players set @s calculate -100

##seeing if we clicked it.
execute unless entity @s[nbt={Inventory:[{id:"minecraft:lime_stained_glass_pane",tag:{skip_button:1b}}]}] store result score @s calculate run clear @s lime_stained_glass_pane{skip_button:1b}

##toggling music if we clicked
execute if entity @s[scores={calculate=1}] run function music:randomize_track

##clearing our inventory and nearby items
clear @s lime_stained_glass_pane{skip_button:1b}
kill @e[type=item,distance=..15,nbt={Item:{id:"minecraft:lime_stained_glass_pane",tag:{skip_button:1b}}}]

##Putting items in our inventory
replaceitem entity @s inventory.17 lime_stained_glass_pane{not_clickable:1,skip_button:1b,display:{Name:'[{"text":"Skip","color":"green","bold":true,"italic":false}]',Lore:['[{"text":"Press to play","color":"gray","italic":false}]','[{"text":"a random track.","color":"gray","italic":false}]']}}
