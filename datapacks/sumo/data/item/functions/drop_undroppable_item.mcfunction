##called when we drop an item that we shouldn't drop.

execute if entity @e[tag=used_item,nbt={Item:{id:"minecraft:poisonous_potato",tag:{droppable_item:0}}}] run function item:poisonous_potato/get_potato


execute as @e[type=item,tag=used_item,nbt={Item:{tag:{droppable_item:0}}}] at @s run kill @s