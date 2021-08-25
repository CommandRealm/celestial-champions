##called to give us the wand
clear @s blaze_rod
kill @e[type=item,distance=..10,nbt={Item:{id:"minecraft:blaze_rod"}}]
replaceitem entity @s hotbar.0 blaze_rod{display:{Name:'[{"text":"R","color":"red","italic":false},{"text":"a","color":"gold"},{"text":"i","color":"yellow"},{"text":"n","color":"green"},{"text":"b","color":"aqua"},{"text":"o","color":"blue"},{"text":"w","color":"dark_purple"},{"text":" Wand ","color":"gray"},{"text":"[","color":"dark_gray","bold":true},{"keybind":"key.drop","color":"gray","bold":false},{"text":"]","color":"dark_gray","bold":true}]'}}