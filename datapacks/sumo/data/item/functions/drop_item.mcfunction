##Called when we drop an item (item as in ability item not entity item)

execute positioned ~ ~1 ~ run tag @e[type=item,sort=nearest,limit=1,nbt={Age:0s}] add used_item

execute if entity @e[tag=used_item,nbt={Item:{tag:{droppable_item:0}}}] run function item:drop_undroppable_item

execute if entity @e[tag=used_item,nbt={Item:{id:"minecraft:chiseled_stone_bricks",tag:{droppable_item:1}}}] run function item:platform/use

execute if entity @e[tag=used_item,nbt={Item:{id:"minecraft:fire_charge",tag:{droppable_item:1}}}] run function item:spike/use

execute if entity @e[tag=used_item,nbt={Item:{id:"minecraft:hopper",tag:{droppable_item:1}}}] run function item:rocket_jump/use

execute if entity @e[tag=used_item,nbt={Item:{id:"minecraft:observer",tag:{droppable_item:1}}}] run function item:turret/use

execute if entity @e[tag=used_item,nbt={Item:{id:"minecraft:honey_block",tag:{droppable_item:1}}}] run function item:honey_trap/use

execute if entity @e[tag=used_item,nbt={Item:{tag:{droppable_item:1,item_type:"idle_buddy"}}}] run function item:idle_buddy/use

execute if entity @e[tag=used_item,nbt={Item:{id:"minecraft:redstone_torch",tag:{droppable_item:1}}}] run function item:ability_cake/use


execute as @e[type=item,tag=used_item,nbt={Item:{tag:{droppable_item:1}}}] at @s unless entity @s[nbt={Item:{tag:{placeable_item:1}}}] run kill @s
##Score reset
scoreboard players reset @s drop_item