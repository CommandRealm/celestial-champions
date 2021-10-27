##called to see if we clicked the button or not

##Resetting calculate
scoreboard players set @s calculate -100

##seeing if we clicked it.
execute unless entity @s[nbt={Inventory:[{tag:{toggle_play_button:1b}}]}] store result score @s calculate run clear @s #minecraft:music_toggle_item 0

##toggling music if we clicked
execute if entity @s[scores={calculate=1}] run function music:controls/toggle_play_button

##clearing our inventory and nearby items
clear @s #minecraft:music_toggle_item
kill @e[type=item,distance=..15,nbt={Item:{tag:{toggle_play_button:1b}}}]

##Putting items in our inventory
item replace entity @s[tag=pause_music] inventory.16 with redstone{not_clickable:1,toggle_play_button:1b,display:{Name:'[{"text":"Music: ","color":"gold","bold":true,"italic":false},{"text":"Off","color":"dark_red","bold":false}]',Lore:['[{"text":"Press to play","color":"gray","italic":false}]','[{"text":"a random track.","color":"gray","italic":false}]']}}
item replace entity @s[tag=!pause_music] inventory.16 with emerald{not_clickable:1,toggle_play_button:1b,display:{Name:'[{"text":"Music: ","color":"gold","bold":true,"italic":false},{"text":"On","color":"dark_green","bold":false}]',Lore:['[{"text":"Press to stop","color":"gray","italic":false}]','[{"text":"the current track.","color":"gray","italic":false}]']}}