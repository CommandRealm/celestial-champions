##This function will call any abilities and character functions


##Will call the call_abilities function if necessary.
execute if entity @a[tag=is_fighter,gamemode=adventure] run function fighter:call_abilities

##Extra jumps
execute as @a[tag=is_fighter,nbt={OnGround:1b},gamemode=adventure] at @s unless entity @s[scores={extra_jump_time=1..}] unless score @s extra_jumps = @s set_extra_jumps run scoreboard players operation @s extra_jumps = @s set_extra_jumps


##Will activate double jump if they have one to use, are sneaking, and haven't used one recently.
execute as @a[tag=is_fighter,scores={extra_jumps=1..,extra_jump_sneak=1..,extra_jump_cool=0},gamemode=adventure] at @s run function fighter:extra_jump/jump

##Resetting the sneak objective
scoreboard players reset @a[tag=is_fighter,scores={extra_jump_sneak=1..},gamemode=adventure] extra_jump_sneak

##Detecting if an extra jump is in progress
execute if entity @a[tag=is_fighter,scores={extra_jump_time=1..},gamemode=adventure] run function fighter:extra_jump/jump_in_progress

##Removing jump cooldown score
scoreboard players remove @a[scores={extra_jump_cool=1..},tag=is_fighter,gamemode=adventure] extra_jump_cool 1

##Combo meter:

execute as @a[tag=is_fighter,advancements={advancements:damage/damage_dealt=true},gamemode=adventure] at @s run function fighter:damage/damage_dealt

##Damage percentage

execute as @a[tag=is_fighter,scores={damage_taken=1..},gamemode=adventure] at @s run function fighter:damage/damage_taken

##Determining whether an ability when used will be air or ground
##Setting base values (use ability type 0 is ground, 1 is air)
execute as @a[tag=is_fighter,gamemode=adventure,nbt={OnGround:1b}] at @s run scoreboard players set @s use_ability_type 0
execute as @a[tag=is_fighter,gamemode=adventure,nbt={OnGround:1b}] at @s run scoreboard players set @s ability_type_d 0


##Setting delay score if player isn't on ground
scoreboard players set @a[tag=is_fighter,nbt={OnGround:0b},gamemode=adventure,scores={ability_type_d=0,use_ability_type=0}] ability_type_d 7
##Counting down ability type delay score
scoreboard players remove @a[scores={ability_type_d=1..}] ability_type_d 1
##Setting it to be an air ability if countdown hits 0
scoreboard players set @a[tag=is_fighter,nbt={OnGround:0b},gamemode=adventure,scores={use_ability_type=0,ability_type_d=0}] use_ability_type 1

##Abilities call:
execute as @a[tag=is_fighter,gamemode=adventure,scores={drop_ability=1..,ability_timer=1..}] at @s positioned ~ ~1 ~ if entity @e[type=item,distance=..5,nbt={Item:{tag:{Ability:1b}}}] positioned ~ ~-1 ~ run function fighter:ability/use_toggle
execute as @a[tag=is_fighter,gamemode=adventure,scores={drop_ability=1..,ability_timer=0}] at @s positioned ~ ~1 ~ if entity @e[type=item,distance=..5,nbt={Item:{tag:{Ability:1b}}}] positioned ~ ~-1 ~ run function fighter:ability/use_ability
scoreboard players reset @a[tag=is_fighter,scores={drop_ability=1..}] drop_ability
##Offhand ability detection
execute as @a[tag=is_fighter,gamemode=adventure,scores={ability_timer=1..},nbt={Inventory:[{Slot:-106b,tag:{Ability:1b}}]}] at @s run function fighter:ability/use_toggle
execute as @a[tag=is_fighter,gamemode=adventure,scores={ability_timer=0},nbt={Inventory:[{Slot:-106b,tag:{Ability:1b}}]}] at @s run function fighter:ability/use_ability

##Ability cooldowns
##Counting down how long the ability is active for
execute if entity @a[scores={ability_timer=1..},tag=is_fighter] run function fighter:ability/ability_cooldown

##Converting ability timers into seconds.
execute if entity @a[scores={ability_timer=1..},tag=is_fighter] run function fighter:ability/convert_timer_to_seconds


##Gives players their weapons and an item that signifies their number of air jumps

##Sets it to -100000 and because getting the if the check fails it will be set to 0
scoreboard players set @a[tag=is_fighter,gamemode=adventure] slot_success -100000

##If they have the item in their inventory still, it will store the slot id of the item in 
execute as @a[tag=is_fighter,nbt={Inventory:[{tag:{Weapon:"combo"}}]},gamemode=adventure] store result score @s slot_success run data get entity @s Inventory[{tag:{Weapon:"combo"}}].Slot 1

##Gets combo weapon.
execute as @a[tag=is_fighter,gamemode=adventure] at @s unless score @s slot_success = @s combo_slot run function fighter:hotbar/get_combo_weapon


##Items
execute if score $item_rate settings matches 1.. run function item:main



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



##Action bar titles



##If player is on ground and ability is ready and damage is under 50% + has default kb and has no set kb
execute as @a[tag=is_fighter,tag=!slow_falling_until_landing,scores={ability_timer=0,ability_state=0,damage_percent=..49},gamemode=adventure,tag=!action_bar_symbols,tag=!use_set_knockback] at @s if score @s knockback = @s base_knockback run title @s actionbar [{"text":"Knockback: ","color":"#d9000a","bold":false},{"text":"(","bold":true,"color":"gray"},{"score":{"objective":"knockback","name":"@s"},"color":"#7a0006","bold":true},{"text":"/","color":"gray"},{"score":{"objective":"max_knockback","name":"@s"},"color":"#7a0006","bold":true},{"text":")","bold":true,"color":"gray"},{"text":" | ","color":"aqua","bold":true},{"text":"Damage Taken: ","color":"gray"},{"text":"(","bold":true,"color":"dark_gray"},{"score":{"objective":"damage_percent","name":"@s"},"color":"white"},{"text":"%","color":"white"},{"text":")","bold":true,"color":"dark_gray"},{"text":" | ","color":"aqua","bold":true},{"text":"Ability: ","color":"green"},{"text":"(","bold":true,"color":"dark_green"},{"text":"Ready","color":"aqua"},{"text":")","bold":true,"color":"dark_green"}]

##If player is on ground and ability is ready and damage is above 50% + has default kb and has no set kb
execute as @a[tag=is_fighter,tag=!slow_falling_until_landing,scores={ability_timer=0,ability_state=0,damage_percent=50..},gamemode=adventure,tag=!action_bar_symbols,tag=!use_set_knockback] at @s if score @s knockback = @s base_knockback run title @s actionbar [{"text":"Knockback: ","color":"#d9000a","bold":false},{"text":"(","bold":true,"color":"gray"},{"score":{"objective":"knockback","name":"@s"},"color":"#7a0006","bold":true},{"text":"/","color":"gray"},{"score":{"objective":"max_knockback","name":"@s"},"color":"#7a0006","bold":true},{"text":")","bold":true,"color":"gray"},{"text":" | ","color":"aqua","bold":true},{"text":"Damage Taken: ","color":"gray"},{"text":"(","bold":true,"color":"dark_gray"},{"score":{"objective":"damage_percent","name":"@s"},"color":"red"},{"text":"%","color":"red"},{"text":")","bold":true,"color":"dark_gray"},{"text":" | ","color":"aqua","bold":true},{"text":"Ability: ","color":"green"},{"text":"(","bold":true,"color":"dark_green"},{"text":"Ready","color":"aqua"},{"text":")","bold":true,"color":"dark_green"}]

##If player is on ground and ability is in progress and damage is under 50% + has default kb and has no set kb
execute as @a[tag=is_fighter,tag=!slow_falling_until_landing,scores={ability_timer=1..,ability_state=1,damage_percent=..49},gamemode=adventure,tag=!action_bar_symbols,tag=!use_set_knockback] at @s if score @s knockback = @s base_knockback run title @s actionbar [{"text":"Knockback: ","color":"#d9000a","bold":false},{"text":"(","bold":true,"color":"gray"},{"score":{"objective":"knockback","name":"@s"},"color":"#7a0006","bold":true},{"text":"/","color":"gray"},{"score":{"objective":"max_knockback","name":"@s"},"color":"#7a0006","bold":true},{"text":")","bold":true,"color":"gray"},{"text":" | ","color":"aqua","bold":true},{"text":"Damage Taken: ","color":"gray"},{"text":"(","bold":true,"color":"dark_gray"},{"score":{"objective":"damage_percent","name":"@s"},"color":"white"},{"text":"%","color":"white"},{"text":")","bold":true,"color":"dark_gray"},{"text":" | ","color":"aqua","bold":true},{"text":"Ability: ","color":"green"},{"text":"(","bold":true,"color":"dark_green"},{"score":{"objective":"ability_display","name":"@s"},"color":"aqua"},{"text":")","bold":true,"color":"dark_green"}]

##If player is on ground and ability is in progress and damage is above 50% + has default kb and has no set kb
execute as @a[tag=is_fighter,tag=!slow_falling_until_landing,scores={ability_timer=1..,ability_state=1,damage_percent=50..},gamemode=adventure,tag=!action_bar_symbols,tag=!use_set_knockback] at @s if score @s knockback = @s base_knockback run title @s actionbar [{"text":"Knockback: ","color":"#d9000a","bold":false},{"text":"(","bold":true,"color":"gray"},{"score":{"objective":"knockback","name":"@s"},"color":"#7a0006","bold":true},{"text":"/","color":"gray"},{"score":{"objective":"max_knockback","name":"@s"},"color":"#7a0006","bold":true},{"text":")","bold":true,"color":"gray"},{"text":" | ","color":"aqua","bold":true},{"text":"Damage Taken: ","color":"gray"},{"text":"(","bold":true,"color":"dark_gray"},{"score":{"objective":"damage_percent","name":"@s"},"color":"red"},{"text":"%","color":"red"},{"text":")","bold":true,"color":"dark_gray"},{"text":" | ","color":"aqua","bold":true},{"text":"Ability: ","color":"green"},{"text":"(","bold":true,"color":"dark_green"},{"score":{"objective":"ability_display","name":"@s"},"color":"aqua"},{"text":")","bold":true,"color":"dark_green"}]


##If player is on ground and ability is not ready  and damage is under 50% + has default kb and has no set kb
execute as @a[tag=is_fighter,tag=!slow_falling_until_landing,scores={ability_timer=1..,ability_state=2,damage_percent=..49},gamemode=adventure,tag=!action_bar_symbols,tag=!use_set_knockback] at @s if score @s knockback = @s base_knockback run title @s actionbar [{"text":"Knockback: ","color":"#d9000a","bold":false},{"text":"(","bold":true,"color":"gray"},{"score":{"objective":"knockback","name":"@s"},"color":"#7a0006","bold":true},{"text":"/","color":"gray"},{"score":{"objective":"max_knockback","name":"@s"},"color":"#7a0006","bold":true},{"text":")","bold":true,"color":"gray"},{"text":" | ","color":"aqua","bold":true},{"text":"Damage Taken: ","color":"gray"},{"text":"(","bold":true,"color":"dark_gray"},{"score":{"objective":"damage_percent","name":"@s"},"color":"white"},{"text":"%","color":"white"},{"text":")","bold":true,"color":"dark_gray"},{"text":" | ","color":"aqua","bold":true},{"text":"Ability: ","color":"red"},{"text":"(","bold":true,"color":"dark_red"},{"score":{"objective":"ability_display","name":"@s"},"color":"aqua"},{"text":")","bold":true,"color":"dark_red"}]

##If player is on ground and ability is not ready  and damage is above 50% + has default kb and has no set kb
execute as @a[tag=is_fighter,tag=!slow_falling_until_landing,scores={ability_timer=1..,ability_state=2,damage_percent=50..},gamemode=adventure,tag=!action_bar_symbols,tag=!use_set_knockback] at @s if score @s knockback = @s base_knockback run title @s actionbar [{"text":"Knockback: ","color":"#d9000a","bold":false},{"text":"(","bold":true,"color":"gray"},{"score":{"objective":"knockback","name":"@s"},"color":"#7a0006","bold":true},{"text":"/","color":"gray"},{"score":{"objective":"max_knockback","name":"@s"},"color":"#7a0006","bold":true},{"text":")","bold":true,"color":"gray"},{"text":" | ","color":"aqua","bold":true},{"text":"Damage Taken: ","color":"gray"},{"text":"(","bold":true,"color":"dark_gray"},{"score":{"objective":"damage_percent","name":"@s"},"color":"red"},{"text":"%","color":"red"},{"text":")","bold":true,"color":"dark_gray"},{"text":" | ","color":"aqua","bold":true},{"text":"Ability: ","color":"red"},{"text":"(","bold":true,"color":"dark_red"},{"score":{"objective":"ability_display","name":"@s"},"color":"aqua"},{"text":")","bold":true,"color":"dark_red"}]




##If player is on ground and ability is ready and damage is under 50% + has kb that isn't base or max and has no set kb
execute as @a[tag=is_fighter,tag=!slow_falling_until_landing,scores={ability_timer=0,ability_state=0,damage_percent=..49},gamemode=adventure,tag=!action_bar_symbols,tag=!use_set_knockback] at @s unless score @s knockback = @s base_knockback unless score @s knockback = @s max_knockback run title @s actionbar [{"text":"Knockback: ","color":"#d9000a","bold":false},{"text":"(","bold":true,"color":"gray"},{"score":{"objective":"knockback","name":"@s"},"color":"#0024ff","bold":true},{"text":"/","color":"gray"},{"score":{"objective":"max_knockback","name":"@s"},"color":"#0024ff","bold":true},{"text":")","bold":true,"color":"gray"},{"text":" | ","color":"aqua","bold":true},{"text":"Damage Taken: ","color":"gray"},{"text":"(","bold":true,"color":"dark_gray"},{"score":{"objective":"damage_percent","name":"@s"},"color":"white"},{"text":"%","color":"white"},{"text":")","bold":true,"color":"dark_gray"},{"text":" | ","color":"aqua","bold":true},{"text":"Ability: ","color":"green"},{"text":"(","bold":true,"color":"dark_green"},{"text":"Ready","color":"aqua"},{"text":")","bold":true,"color":"dark_green"}]

##If player is on ground and ability is ready and damage is above 50% + has kb that isn't base or max and has no set kb
execute as @a[tag=is_fighter,tag=!slow_falling_until_landing,scores={ability_timer=0,ability_state=0,damage_percent=50..},gamemode=adventure,tag=!action_bar_symbols,tag=!use_set_knockback] at @s unless score @s knockback = @s base_knockback unless score @s knockback = @s max_knockback run title @s actionbar [{"text":"Knockback: ","color":"#d9000a","bold":false},{"text":"(","bold":true,"color":"gray"},{"score":{"objective":"knockback","name":"@s"},"color":"#0024ff","bold":true},{"text":"/","color":"gray"},{"score":{"objective":"max_knockback","name":"@s"},"color":"#0024ff","bold":true},{"text":")","bold":true,"color":"gray"},{"text":" | ","color":"aqua","bold":true},{"text":"Damage Taken: ","color":"gray"},{"text":"(","bold":true,"color":"dark_gray"},{"score":{"objective":"damage_percent","name":"@s"},"color":"red"},{"text":"%","color":"red"},{"text":")","bold":true,"color":"dark_gray"},{"text":" | ","color":"aqua","bold":true},{"text":"Ability: ","color":"green"},{"text":"(","bold":true,"color":"dark_green"},{"text":"Ready","color":"aqua"},{"text":")","bold":true,"color":"dark_green"}]

##If player is on ground and ability is in progress and damage is under 50% + has kb that isn't base or max and has no set kb
execute as @a[tag=is_fighter,tag=!slow_falling_until_landing,scores={ability_timer=1..,ability_state=1,damage_percent=..49},gamemode=adventure,tag=!action_bar_symbols,tag=!use_set_knockback] at @s unless score @s knockback = @s base_knockback unless score @s knockback = @s max_knockback run title @s actionbar [{"text":"Knockback: ","color":"#d9000a","bold":false},{"text":"(","bold":true,"color":"gray"},{"score":{"objective":"knockback","name":"@s"},"color":"#0024ff","bold":true},{"text":"/","color":"gray"},{"score":{"objective":"max_knockback","name":"@s"},"color":"#0024ff","bold":true},{"text":")","bold":true,"color":"gray"},{"text":" | ","color":"aqua","bold":true},{"text":"Damage Taken: ","color":"gray"},{"text":"(","bold":true,"color":"dark_gray"},{"score":{"objective":"damage_percent","name":"@s"},"color":"white"},{"text":"%","color":"white"},{"text":")","bold":true,"color":"dark_gray"},{"text":" | ","color":"aqua","bold":true},{"text":"Ability: ","color":"green"},{"text":"(","bold":true,"color":"dark_green"},{"score":{"objective":"ability_display","name":"@s"},"color":"aqua"},{"text":")","bold":true,"color":"dark_green"}]

##If player is on ground and ability is in progress and damage is above 50% + has kb that isn't base or max and has no set kb
execute as @a[tag=is_fighter,tag=!slow_falling_until_landing,scores={ability_timer=1..,ability_state=1,damage_percent=50..},gamemode=adventure,tag=!action_bar_symbols,tag=!use_set_knockback] at @s unless score @s knockback = @s base_knockback unless score @s knockback = @s max_knockback run title @s actionbar [{"text":"Knockback: ","color":"#d9000a","bold":false},{"text":"(","bold":true,"color":"gray"},{"score":{"objective":"knockback","name":"@s"},"color":"#0024ff","bold":true},{"text":"/","color":"gray"},{"score":{"objective":"max_knockback","name":"@s"},"color":"#0024ff","bold":true},{"text":")","bold":true,"color":"gray"},{"text":" | ","color":"aqua","bold":true},{"text":"Damage Taken: ","color":"gray"},{"text":"(","bold":true,"color":"dark_gray"},{"score":{"objective":"damage_percent","name":"@s"},"color":"red"},{"text":"%","color":"red"},{"text":")","bold":true,"color":"dark_gray"},{"text":" | ","color":"aqua","bold":true},{"text":"Ability: ","color":"green"},{"text":"(","bold":true,"color":"dark_green"},{"score":{"objective":"ability_display","name":"@s"},"color":"aqua"},{"text":")","bold":true,"color":"dark_green"}]


##If player is on ground and ability is not ready and damage is under 50% + has kb that isn't base or max and has no set kb
execute as @a[tag=is_fighter,tag=!slow_falling_until_landing,scores={ability_timer=1..,ability_state=2,damage_percent=..49},gamemode=adventure,tag=!action_bar_symbols,tag=!use_set_knockback] at @s unless score @s knockback = @s base_knockback unless score @s knockback = @s max_knockback run title @s actionbar [{"text":"Knockback: ","color":"#d9000a","bold":false},{"text":"(","bold":true,"color":"gray"},{"score":{"objective":"knockback","name":"@s"},"color":"#0024ff","bold":true},{"text":"/","color":"gray"},{"score":{"objective":"max_knockback","name":"@s"},"color":"#0024ff","bold":true},{"text":")","bold":true,"color":"gray"},{"text":" | ","color":"aqua","bold":true},{"text":"Damage Taken: ","color":"gray"},{"text":"(","bold":true,"color":"dark_gray"},{"score":{"objective":"damage_percent","name":"@s"},"color":"white"},{"text":"%","color":"white"},{"text":")","bold":true,"color":"dark_gray"},{"text":" | ","color":"aqua","bold":true},{"text":"Ability: ","color":"red"},{"text":"(","bold":true,"color":"dark_red"},{"score":{"objective":"ability_display","name":"@s"},"color":"aqua"},{"text":")","bold":true,"color":"dark_red"}]

##If player is on ground and ability is not ready  and damage is above 50% + has kb that isn't base or max and has no set kb
execute as @a[tag=is_fighter,tag=!slow_falling_until_landing,scores={ability_timer=1..,ability_state=2,damage_percent=50..},gamemode=adventure,tag=!action_bar_symbols,tag=!use_set_knockback] at @s unless score @s knockback = @s base_knockback unless score @s knockback = @s max_knockback run title @s actionbar [{"text":"Knockback: ","color":"#d9000a","bold":false},{"text":"(","bold":true,"color":"gray"},{"score":{"objective":"knockback","name":"@s"},"color":"#0024ff","bold":true},{"text":"/","color":"gray"},{"score":{"objective":"max_knockback","name":"@s"},"color":"#0024ff","bold":true},{"text":")","bold":true,"color":"gray"},{"text":" | ","color":"aqua","bold":true},{"text":"Damage Taken: ","color":"gray"},{"text":"(","bold":true,"color":"dark_gray"},{"score":{"objective":"damage_percent","name":"@s"},"color":"red"},{"text":"%","color":"red"},{"text":")","bold":true,"color":"dark_gray"},{"text":" | ","color":"aqua","bold":true},{"text":"Ability: ","color":"red"},{"text":"(","bold":true,"color":"dark_red"},{"score":{"objective":"ability_display","name":"@s"},"color":"aqua"},{"text":")","bold":true,"color":"dark_red"}]




##If player is on ground and ability is ready and damage is under 50% + has max kb and has no set kb
execute as @a[tag=is_fighter,tag=!slow_falling_until_landing,scores={ability_timer=0,ability_state=0,damage_percent=..49},gamemode=adventure,tag=!action_bar_symbols,tag=!use_set_knockback] at @s if score @s knockback = @s max_knockback run title @s actionbar [{"text":"Knockback: ","color":"#d9000a","bold":false},{"text":"(","bold":true,"color":"gray"},{"score":{"objective":"knockback","name":"@s"},"color":"#1eff00","bold":true},{"text":"/","color":"gray"},{"score":{"objective":"max_knockback","name":"@s"},"color":"#1eff00","bold":true},{"text":")","bold":true,"color":"gray"},{"text":" | ","color":"aqua","bold":true},{"text":"Damage Taken: ","color":"gray"},{"text":"(","bold":true,"color":"dark_gray"},{"score":{"objective":"damage_percent","name":"@s"},"color":"white"},{"text":"%","color":"white"},{"text":")","bold":true,"color":"dark_gray"},{"text":" | ","color":"aqua","bold":true},{"text":"Ability: ","color":"green"},{"text":"(","bold":true,"color":"dark_green"},{"text":"Ready","color":"aqua"},{"text":")","bold":true,"color":"dark_green"}]

##If player is on ground and ability is ready and damage is above 50% + has max kb and has no set kb
execute as @a[tag=is_fighter,tag=!slow_falling_until_landing,scores={ability_timer=0,ability_state=0,damage_percent=50..},gamemode=adventure,tag=!action_bar_symbols,tag=!use_set_knockback] at @s if score @s knockback = @s max_knockback run title @s actionbar [{"text":"Knockback: ","color":"#d9000a","bold":false},{"text":"(","bold":true,"color":"gray"},{"score":{"objective":"knockback","name":"@s"},"color":"#1eff00","bold":true},{"text":"/","color":"gray"},{"score":{"objective":"max_knockback","name":"@s"},"color":"#1eff00","bold":true},{"text":")","bold":true,"color":"gray"},{"text":" | ","color":"aqua","bold":true},{"text":"Damage Taken: ","color":"gray"},{"text":"(","bold":true,"color":"dark_gray"},{"score":{"objective":"damage_percent","name":"@s"},"color":"red"},{"text":"%","color":"red"},{"text":")","bold":true,"color":"dark_gray"},{"text":" | ","color":"aqua","bold":true},{"text":"Ability: ","color":"green"},{"text":"(","bold":true,"color":"dark_green"},{"text":"Ready","color":"aqua"},{"text":")","bold":true,"color":"dark_green"}]

##If player is on ground and ability is in progress and damage is under 50% + has max kb and has no set kb
execute as @a[tag=is_fighter,tag=!slow_falling_until_landing,scores={ability_timer=1..,ability_state=1,damage_percent=..49},gamemode=adventure,tag=!action_bar_symbols,tag=!use_set_knockback] at @s if score @s knockback = @s max_knockback run title @s actionbar [{"text":"Knockback: ","color":"#d9000a","bold":false},{"text":"(","bold":true,"color":"gray"},{"score":{"objective":"knockback","name":"@s"},"color":"#1eff00","bold":true},{"text":"/","color":"gray"},{"score":{"objective":"max_knockback","name":"@s"},"color":"#1eff00","bold":true},{"text":")","bold":true,"color":"gray"},{"text":" | ","color":"aqua","bold":true},{"text":"Damage Taken: ","color":"gray"},{"text":"(","bold":true,"color":"dark_gray"},{"score":{"objective":"damage_percent","name":"@s"},"color":"white"},{"text":"%","color":"white"},{"text":")","bold":true,"color":"dark_gray"},{"text":" | ","color":"aqua","bold":true},{"text":"Ability: ","color":"green"},{"text":"(","bold":true,"color":"dark_green"},{"score":{"objective":"ability_display","name":"@s"},"color":"aqua"},{"text":")","bold":true,"color":"dark_green"}]

##If player is on ground and ability is in progress and damage is above 50% + has max kb and has no set kb
execute as @a[tag=is_fighter,tag=!slow_falling_until_landing,scores={ability_timer=1..,ability_state=1,damage_percent=50..},gamemode=adventure,tag=!action_bar_symbols,tag=!use_set_knockback] at @s if score @s knockback = @s max_knockback run title @s actionbar [{"text":"Knockback: ","color":"#d9000a","bold":false},{"text":"(","bold":true,"color":"gray"},{"score":{"objective":"knockback","name":"@s"},"color":"#1eff00","bold":true},{"text":"/","color":"gray"},{"score":{"objective":"max_knockback","name":"@s"},"color":"#1eff00","bold":true},{"text":")","bold":true,"color":"gray"},{"text":" | ","color":"aqua","bold":true},{"text":"Damage Taken: ","color":"gray"},{"text":"(","bold":true,"color":"dark_gray"},{"score":{"objective":"damage_percent","name":"@s"},"color":"red"},{"text":"%","color":"red"},{"text":")","bold":true,"color":"dark_gray"},{"text":" | ","color":"aqua","bold":true},{"text":"Ability: ","color":"green"},{"text":"(","bold":true,"color":"dark_green"},{"score":{"objective":"ability_display","name":"@s"},"color":"aqua"},{"text":")","bold":true,"color":"dark_green"}]


##If player is on ground and ability is not ready and damage is under 50% + has max kb and has no set kb
execute as @a[tag=is_fighter,tag=!slow_falling_until_landing,scores={ability_timer=1..,ability_state=2,damage_percent=..49},gamemode=adventure,tag=!action_bar_symbols,tag=!use_set_knockback] at @s if score @s knockback = @s max_knockback run title @s actionbar [{"text":"Knockback: ","color":"#d9000a","bold":false},{"text":"(","bold":true,"color":"gray"},{"score":{"objective":"knockback","name":"@s"},"color":"#1eff00","bold":true},{"text":"/","color":"gray"},{"score":{"objective":"max_knockback","name":"@s"},"color":"#1eff00","bold":true},{"text":")","bold":true,"color":"gray"},{"text":" | ","color":"aqua","bold":true},{"text":"Damage Taken: ","color":"gray"},{"text":"(","bold":true,"color":"dark_gray"},{"score":{"objective":"damage_percent","name":"@s"},"color":"white"},{"text":"%","color":"white"},{"text":")","bold":true,"color":"dark_gray"},{"text":" | ","color":"aqua","bold":true},{"text":"Ability: ","color":"red"},{"text":"(","bold":true,"color":"dark_red"},{"score":{"objective":"ability_display","name":"@s"},"color":"aqua"},{"text":")","bold":true,"color":"dark_red"}]

##If player is on ground and ability is not ready  and damage is above 50% + has max kb and has no set kb
execute as @a[tag=is_fighter,tag=!slow_falling_until_landing,scores={ability_timer=1..,ability_state=2,damage_percent=50..},gamemode=adventure,tag=!action_bar_symbols,tag=!use_set_knockback] at @s if score @s knockback = @s max_knockback run title @s actionbar [{"text":"Knockback: ","color":"#d9000a","bold":false},{"text":"(","bold":true,"color":"gray"},{"score":{"objective":"knockback","name":"@s"},"color":"#1eff00","bold":true},{"text":"/","color":"gray"},{"score":{"objective":"max_knockback","name":"@s"},"color":"#1eff00","bold":true},{"text":")","bold":true,"color":"gray"},{"text":" | ","color":"aqua","bold":true},{"text":"Damage Taken: ","color":"gray"},{"text":"(","bold":true,"color":"dark_gray"},{"score":{"objective":"damage_percent","name":"@s"},"color":"red"},{"text":"%","color":"red"},{"text":")","bold":true,"color":"dark_gray"},{"text":" | ","color":"aqua","bold":true},{"text":"Ability: ","color":"red"},{"text":"(","bold":true,"color":"dark_red"},{"score":{"objective":"ability_display","name":"@s"},"color":"aqua"},{"text":")","bold":true,"color":"dark_red"}]



##If player is on ground and ability is ready and damage is under 50% and has a set kb
execute as @a[tag=is_fighter,tag=!slow_falling_until_landing,scores={ability_timer=0,ability_state=0,damage_percent=..49},gamemode=adventure,tag=!action_bar_symbols,tag=use_set_knockback] at @s run title @s actionbar [{"text":"Knockback: ","color":"#d9000a","bold":false},{"text":"(","bold":true,"color":"gray"},{"score":{"objective":"set_knockback","name":"@s"},"color":"#ffff00","bold":true},{"text":"/","color":"gray"},{"score":{"objective":"max_knockback","name":"@s"},"color":"#ffff00","bold":true},{"text":")","bold":true,"color":"gray"},{"text":" | ","color":"aqua","bold":true},{"text":"Damage Taken: ","color":"gray"},{"text":"(","bold":true,"color":"dark_gray"},{"score":{"objective":"damage_percent","name":"@s"},"color":"white"},{"text":"%","color":"white"},{"text":")","bold":true,"color":"dark_gray"},{"text":" | ","color":"aqua","bold":true},{"text":"Ability: ","color":"green"},{"text":"(","bold":true,"color":"dark_green"},{"text":"Ready","color":"aqua"},{"text":")","bold":true,"color":"dark_green"}]

##If player is on ground and ability is ready and damage is above 50% and has a set kb
execute as @a[tag=is_fighter,tag=!slow_falling_until_landing,scores={ability_timer=0,ability_state=0,damage_percent=50..},gamemode=adventure,tag=!action_bar_symbols,tag=use_set_knockback] at @s run title @s actionbar [{"text":"Knockback: ","color":"#d9000a","bold":false},{"text":"(","bold":true,"color":"gray"},{"score":{"objective":"set_knockback","name":"@s"},"color":"#ffff00","bold":true},{"text":"/","color":"gray"},{"score":{"objective":"max_knockback","name":"@s"},"color":"#ffff00","bold":true},{"text":")","bold":true,"color":"gray"},{"text":" | ","color":"aqua","bold":true},{"text":"Damage Taken: ","color":"gray"},{"text":"(","bold":true,"color":"dark_gray"},{"score":{"objective":"damage_percent","name":"@s"},"color":"red"},{"text":"%","color":"red"},{"text":")","bold":true,"color":"dark_gray"},{"text":" | ","color":"aqua","bold":true},{"text":"Ability: ","color":"green"},{"text":"(","bold":true,"color":"dark_green"},{"text":"Ready","color":"aqua"},{"text":")","bold":true,"color":"dark_green"}]

##If player is on ground and ability is in progress and damage is under 50% and has a set kb
execute as @a[tag=is_fighter,tag=!slow_falling_until_landing,scores={ability_timer=1..,ability_state=1,damage_percent=..49},gamemode=adventure,tag=!action_bar_symbols,tag=use_set_knockback] at @s run title @s actionbar [{"text":"Knockback: ","color":"#d9000a","bold":false},{"text":"(","bold":true,"color":"gray"},{"score":{"objective":"set_knockback","name":"@s"},"color":"#ffff00","bold":true},{"text":"/","color":"gray"},{"score":{"objective":"max_knockback","name":"@s"},"color":"#ffff00","bold":true},{"text":")","bold":true,"color":"gray"},{"text":" | ","color":"aqua","bold":true},{"text":"Damage Taken: ","color":"gray"},{"text":"(","bold":true,"color":"dark_gray"},{"score":{"objective":"damage_percent","name":"@s"},"color":"white"},{"text":"%","color":"white"},{"text":")","bold":true,"color":"dark_gray"},{"text":" | ","color":"aqua","bold":true},{"text":"Ability: ","color":"green"},{"text":"(","bold":true,"color":"dark_green"},{"score":{"objective":"ability_display","name":"@s"},"color":"aqua"},{"text":")","bold":true,"color":"dark_green"}]

##If player is on ground and ability is in progress and damage is above 50% and has a set kb
execute as @a[tag=is_fighter,tag=!slow_falling_until_landing,scores={ability_timer=1..,ability_state=1,damage_percent=50..},gamemode=adventure,tag=!action_bar_symbols,tag=use_set_knockback] at @s run title @s actionbar [{"text":"Knockback: ","color":"#d9000a","bold":false},{"text":"(","bold":true,"color":"gray"},{"score":{"objective":"set_knockback","name":"@s"},"color":"#ffff00","bold":true},{"text":"/","color":"gray"},{"score":{"objective":"max_knockback","name":"@s"},"color":"#ffff00","bold":true},{"text":")","bold":true,"color":"gray"},{"text":" | ","color":"aqua","bold":true},{"text":"Damage Taken: ","color":"gray"},{"text":"(","bold":true,"color":"dark_gray"},{"score":{"objective":"damage_percent","name":"@s"},"color":"red"},{"text":"%","color":"red"},{"text":")","bold":true,"color":"dark_gray"},{"text":" | ","color":"aqua","bold":true},{"text":"Ability: ","color":"green"},{"text":"(","bold":true,"color":"dark_green"},{"score":{"objective":"ability_display","name":"@s"},"color":"aqua"},{"text":")","bold":true,"color":"dark_green"}]


##If player is on ground and ability is not ready  and damage is under 50% and has a set kb
execute as @a[tag=is_fighter,tag=!slow_falling_until_landing,scores={ability_timer=1..,ability_state=2,damage_percent=..49},gamemode=adventure,tag=!action_bar_symbols,tag=use_set_knockback] at @s run title @s actionbar [{"text":"Knockback: ","color":"#d9000a","bold":false},{"text":"(","bold":true,"color":"gray"},{"score":{"objective":"set_knockback","name":"@s"},"color":"#ffff00","bold":true},{"text":"/","color":"gray"},{"score":{"objective":"max_knockback","name":"@s"},"color":"#ffff00","bold":true},{"text":")","bold":true,"color":"gray"},{"text":" | ","color":"aqua","bold":true},{"text":"Damage Taken: ","color":"gray"},{"text":"(","bold":true,"color":"dark_gray"},{"score":{"objective":"damage_percent","name":"@s"},"color":"white"},{"text":"%","color":"white"},{"text":")","bold":true,"color":"dark_gray"},{"text":" | ","color":"aqua","bold":true},{"text":"Ability: ","color":"red"},{"text":"(","bold":true,"color":"dark_red"},{"score":{"objective":"ability_display","name":"@s"},"color":"aqua"},{"text":")","bold":true,"color":"dark_red"}]

##If player is on ground and ability is not ready  and damage is above 50% and has a set kb
execute as @a[tag=is_fighter,tag=!slow_falling_until_landing,scores={ability_timer=1..,ability_state=2,damage_percent=50..},gamemode=adventure,tag=!action_bar_symbols,tag=use_set_knockback] at @s run title @s actionbar [{"text":"Knockback: ","color":"#d9000a","bold":false},{"text":"(","bold":true,"color":"gray"},{"score":{"objective":"set_knockback","name":"@s"},"color":"#ffff00","bold":true},{"text":"/","color":"gray"},{"score":{"objective":"max_knockback","name":"@s"},"color":"#ffff00","bold":true},{"text":")","bold":true,"color":"gray"},{"text":" | ","color":"aqua","bold":true},{"text":"Damage Taken: ","color":"gray"},{"text":"(","bold":true,"color":"dark_gray"},{"score":{"objective":"damage_percent","name":"@s"},"color":"red"},{"text":"%","color":"red"},{"text":")","bold":true,"color":"dark_gray"},{"text":" | ","color":"aqua","bold":true},{"text":"Ability: ","color":"red"},{"text":"(","bold":true,"color":"dark_red"},{"score":{"objective":"ability_display","name":"@s"},"color":"aqua"},{"text":")","bold":true,"color":"dark_red"}]

##Actionbar symbol call
execute if entity @a[tag=is_fighter,tag=action_bar_symbols] run function fighter:action_bar_symbols

##Running a function if someone has a damage timer
execute if entity @a[scores={damage_timer=1..},gamemode=adventure] run function fighter:damage/active_damage_timer

##Death timer
function fighter:death_timer

##Giving arrows

##Anyone with a set_arrow_timer score of more than 1 is a ranged class
execute if entity @a[tag=is_fighter,scores={set_arrow_timer=1..},gamemode=adventure] run function fighter:arrow/main

##If player is stunned
execute if entity @a[tag=is_fighter,gamemode=adventure,scores={stun=1..}] run function fighter:stun/main




##Random cooldown objectives function call (The pause random cooldown tag is for things like drakier's elytra and the tag should be removed within the fighter's main functions.)
execute if entity @a[tag=is_fighter,gamemode=adventure,scores={random_cooldown=1..},tag=!pause_random_cooldown] run function fighter:random_cooldown/main

execute if entity @a[tag=is_fighter,gamemode=adventure,scores={random_cooldown2=1..},tag=!pause_random_cooldown2] run function fighter:random_cooldown2/main

execute if entity @a[tag=is_fighter,gamemode=adventure,scores={random_cooldown3=1..},tag=!pause_random_cooldown3] run function fighter:random_cooldown3/main

##Shoot bow function
execute as @a[scores={shoot_bow=1..},tag=is_fighter] at @s run function fighter:shoot_bow

##Fighter specific function calls

##Skeleton (Death timer is acting here as a delay, because in the first tick its summoned its technically on the ground)
execute if entity @a[tag=is_fighter,scores={fighter=2}] run function fighter:skeleton/main
##Creeper grenade
execute if entity @e[type=zombie,tag=creeper_grenade,scores={death_timer=..110}] run function fighter:creeper/active_grenade
##If player is spider
execute if entity @a[tag=is_fighter,scores={fighter=4}] run function fighter:spider/main
##If player is chicken
execute if entity @a[tag=is_fighter,scores={fighter=5}] run function fighter:chicken/main
##If player is enderman
execute if entity @a[tag=is_fighter,scores={fighter=6}] run function fighter:enderman/main
##If player is incend
execute if entity @a[tag=is_fighter,scores={fighter=7}] run function fighter:incend/main
##If player is drakier
execute if entity @a[tag=is_fighter,scores={fighter=8}] run function fighter:drakier/main
##If player is callidus
execute if entity @a[tag=is_fighter,scores={fighter=10}] run function fighter:callidus/main
##If player is Gene
execute if entity @a[tag=is_fighter,scores={fighter=11}] run function fighter:gene/main
##If player is melon man
execute if entity @a[tag=is_fighter,scores={fighter=12}] run function fighter:melon_man/main
##If player is blaze
execute if entity @a[tag=is_fighter,scores={fighter=13}] run function fighter:blaze/main

##If player is slime
execute if entity @a[tag=is_fighter,scores={fighter=14}] if entity @e[type=armor_stand,tag=slime_platform] run function fighter:slime/active_platform

##If player is malice
execute if entity @a[tag=is_fighter,scores={fighter=15}] run function fighter:malice/main

##Entity kills
##Killing arrows
kill @e[type=arrow,nbt={inGround:1b}]

##Killing tridents
kill @e[type=trident,nbt={inGround:1b}]


##Resetting is_flying objectives
scoreboard players set @a[scores={is_flying=1..}] is_flying 0


##If there is a fishing bobber.
execute as @e[type=fishing_bobber,tag=!on_death_timer] at @s run function fighter:set_fishing_bobber_death_timer

##If there is an active death animation
execute if entity @e[type=armor_stand,tag=death_animation] run function cosmetic:death_animation/main

##Keeping track of death position.
execute as @a[tag=is_fighter,gamemode=adventure] at @s store result score @s death_pos_0 run data get entity @s Pos[0] 100
execute as @a[tag=is_fighter,gamemode=adventure] at @s store result score @s death_pos_1 run data get entity @s Pos[1] 100
execute as @a[tag=is_fighter,gamemode=adventure] at @s store result score @s death_pos_2 run data get entity @s Pos[2] 100