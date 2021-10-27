##Called when we offhand an item (item as in ability item not entity item)

execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:chiseled_stone_bricks",tag:{droppable_item:1}}]}] run function item:platform/use

execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:fire_charge",tag:{droppable_item:1}}]}] run function item:spike/use

execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:hopper",tag:{droppable_item:1}}]}] run function item:rocket_jump/use

execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:observer",tag:{droppable_item:1}}]}] run function item:turret/use

execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:honey_block",tag:{droppable_item:1}}]}] run function item:honey_trap/place_trap

execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{droppable_item:1,item_type:"idle_buddy"}}]}] run function item:idle_buddy/use

execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:redstone_torch",tag:{droppable_item:1}}]}] run function item:ability_cake/use


##Score reset
item replace entity @s weapon.offhand with air
execute if entity @s[scores={fighter=8},nbt={SelectedItem:{id:"minecraft:firework_rocket"}}] run function fighter:drakier/get_firework