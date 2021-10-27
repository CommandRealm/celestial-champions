##Called when an item should be "placed"

execute if entity @s[nbt={Item:{id:"minecraft:honey_block"}}] run function item:honey_trap/place_trap



##Kill
kill @s