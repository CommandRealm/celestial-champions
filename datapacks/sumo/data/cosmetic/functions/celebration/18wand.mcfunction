# Wand celebration by Falcon

# Wand functions
execute if score $end cooldown matches 99 as @a[tag=winner,scores={celebration=18}] at @s run scoreboard players set @s random_stat 0
execute as @a[tag=winner,scores={celebration=18}] at @s unless entity @s[nbt={Inventory:[{Slot:0b,id:"minecraft:blaze_rod"}]}] if entity @e[type=item,nbt={Item:{id:"minecraft:blaze_rod"}},distance=..2] run function cosmetic:celebration/shoot_wand
execute as @a[tag=winner,scores={celebration=18}] at @s unless entity @s[nbt={Inventory:[{Slot:0b,id:"minecraft:blaze_rod"}]}] run function cosmetic:celebration/get_wand



