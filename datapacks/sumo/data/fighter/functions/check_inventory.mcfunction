##called to check inventories




advancement revoke @a only fighter:inventory_changed


##Sets it to -100000 and because getting the if the check fails it will be set to 0
scoreboard players set @a[tag=is_fighter,gamemode=adventure] slot_success -100000

##If they have the item in their inventory still, it will store the slot id of the item in 
execute as @a[tag=is_fighter,nbt={Inventory:[{tag:{Weapon:"combo"}}]},gamemode=adventure] store result score @s slot_success run data get entity @s Inventory[{tag:{Weapon:"combo"}}].Slot 1

##Gets combo weapon.
execute as @a[tag=is_fighter,gamemode=adventure] at @s unless score @s slot_success = @s combo_slot run function fighter:hotbar/get_combo_weapon




##Sets it to -100000 and because getting the if the check fails it will be set to 0
scoreboard players set @a[tag=is_fighter,gamemode=adventure] slot_success -100000

##If they have the item in their inventory still, it will store the slot id of the item in 
execute as @a[tag=is_fighter,nbt={Inventory:[{tag:{Weapon:"knockback"}}]},gamemode=adventure] store result score @s slot_success run data get entity @s Inventory[{tag:{Weapon:"knockback"}}].Slot 1

##Gets knockback weapon.
execute as @a[tag=is_fighter,gamemode=adventure] at @s unless score @s slot_success = @s knockback_slot run function fighter:hotbar/check_get_knockback_weapon

##Getting offhand item (if we need it)
execute as @a[tag=is_fighter,gamemode=adventure,tag=has_offhand_item] at @s unless entity @s[nbt={Inventory:[{Slot:-106b,tag:{Weapon:"offhand_item"}}]}] run function fighter:hotbar/get_offhand_item

##Resetting score
scoreboard players set @a[tag=is_fighter,gamemode=adventure] slot_success -100

##Counting how many feathers the player has in their air jump slot
execute as @a[tag=is_fighter,gamemode=adventure,scores={air_jump_slot=0},nbt={Inventory:[{Slot:0b,tag:{Air_Jump_Indicator:1b}}]}] at @s store result score @s slot_success run data get entity @s Inventory[{Slot:0b}].Count 1
execute as @a[tag=is_fighter,gamemode=adventure,scores={air_jump_slot=1},nbt={Inventory:[{Slot:1b,tag:{Air_Jump_Indicator:1b}}]}] at @s store result score @s slot_success run data get entity @s Inventory[{Slot:1b}].Count 1
execute as @a[tag=is_fighter,gamemode=adventure,scores={air_jump_slot=2},nbt={Inventory:[{Slot:2b,tag:{Air_Jump_Indicator:1b}}]}] at @s store result score @s slot_success run data get entity @s Inventory[{Slot:2b}].Count 1
execute as @a[tag=is_fighter,gamemode=adventure,scores={air_jump_slot=3},nbt={Inventory:[{Slot:3b,tag:{Air_Jump_Indicator:1b}}]}] at @s store result score @s slot_success run data get entity @s Inventory[{Slot:3b}].Count 1
execute as @a[tag=is_fighter,gamemode=adventure,scores={air_jump_slot=4},nbt={Inventory:[{Slot:4b,tag:{Air_Jump_Indicator:1b}}]}] at @s store result score @s slot_success run data get entity @s Inventory[{Slot:4b}].Count 1
execute as @a[tag=is_fighter,gamemode=adventure,scores={air_jump_slot=5},nbt={Inventory:[{Slot:5b,tag:{Air_Jump_Indicator:1b}}]}] at @s store result score @s slot_success run data get entity @s Inventory[{Slot:5b}].Count 1
execute as @a[tag=is_fighter,gamemode=adventure,scores={air_jump_slot=6},nbt={Inventory:[{Slot:6b,tag:{Air_Jump_Indicator:1b}}]}] at @s store result score @s slot_success run data get entity @s Inventory[{Slot:6b}].Count 1
execute as @a[tag=is_fighter,gamemode=adventure,scores={air_jump_slot=7},nbt={Inventory:[{Slot:7b,tag:{Air_Jump_Indicator:1b}}]}] at @s store result score @s slot_success run data get entity @s Inventory[{Slot:7b}].Count 1
execute as @a[tag=is_fighter,gamemode=adventure,scores={air_jump_slot=8},nbt={Inventory:[{Slot:8b,tag:{Air_Jump_Indicator:1b}}]}] at @s store result score @s slot_success run data get entity @s Inventory[{Slot:8b}].Count 1
execute as @a[tag=is_fighter,gamemode=adventure,nbt={Inventory:[{tag:{No_Jump_Indicator:1b,Air_Jump_Indicator:1b}}]}] at @s run scoreboard players remove @s slot_success 1


##Gets air jump indicator.
execute as @a[tag=is_fighter,gamemode=adventure] at @s unless score @s slot_success = @s extra_jumps run function fighter:hotbar/check_get_air_jump_indicator


clear @a[scores={fighter=11},tag=is_fighter] glass_bottle

##Checking for sign in back of inventory
execute as @a[tag=is_fighter,gamemode=adventure] at @s unless data entity @s Inventory[{Slot:17b,id:"minecraft:oak_sign"}] run function fighter:get_sign