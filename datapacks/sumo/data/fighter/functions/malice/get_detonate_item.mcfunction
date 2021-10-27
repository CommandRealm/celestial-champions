##called to give us our recall item.
clear @s red_dye{detonate_item:1b}
kill @e[type=item,nbt={Item:{id:"minecraft:red_dye"}},distance=..15]
give @s red_dye{detonate_item:1b,display:{Name:'[{"text":"+ ","color":"dark_gray","italic":false},{"text":"Detonate","color":"dark_red","italic":false}]'}}
scoreboard players reset @s drop_red_dye