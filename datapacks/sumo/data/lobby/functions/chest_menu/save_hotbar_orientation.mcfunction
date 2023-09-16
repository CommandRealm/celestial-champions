##Called to save our hotbar settings.

##Seeing what slot our KB item is in
scoreboard players set $calculate knockback_slot -1000
execute store result score $calculate knockback_slot run data get entity @s EnderItems[{id:"minecraft:iron_sword"}].Slot 1

##Seeing what slot our combo item is in
scoreboard players set $calculate combo_slot -1000
execute store result score $calculate combo_slot run data get entity @s EnderItems[{id:"minecraft:clay_ball"}].Slot 1

##Seeing what slot our air jump item is in
scoreboard players set $calculate air_jump_slot -1000
execute store result score $calculate air_jump_slot run data get entity @s EnderItems[{id:"minecraft:feather"}].Slot 1

##Seeing if we had a valid press
execute if score $calculate knockback_slot matches 9..17 if score $calculate combo_slot matches 9..17 if score $calculate air_jump_slot matches 9..17 run tag @s add valid_press

##If we had an invald press.
playsound minecraft:block.note_block.didgeridoo master @s[tag=!valid_press] ~ ~ ~ 100 0
tellraw @s[tag=!valid_press] [{"translate":"⚡ ","color":"gold"},{"translate":"Invalid orientation, please try again.","color":"red"}]

##If we had a valid press.
scoreboard players operation @s[tag=valid_press] knockback_slot = $calculate knockback_slot
scoreboard players operation @s[tag=valid_press] combo_slot = $calculate combo_slot
scoreboard players operation @s[tag=valid_press] air_jump_slot = $calculate air_jump_slot
##Subtracting our score
scoreboard players remove @s[tag=valid_press] knockback_slot 9
scoreboard players remove @s[tag=valid_press] combo_slot 9
scoreboard players remove @s[tag=valid_press] air_jump_slot 9

execute if entity @s[tag=valid_press] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2


##Restarting the screen
function lobby:chest_menu/start_hotbar_orientation

##Removing tag
tag @s remove valid_press

##Invalid book tag removals
tag @s remove invalid_book_slot_0
tag @s remove invalid_book_slot_1
tag @s remove invalid_book_slot_2
tag @s remove invalid_book_slot_3
tag @s remove invalid_book_slot_4
tag @s remove invalid_book_slot_5
tag @s remove invalid_book_slot_6
tag @s remove invalid_book_slot_7
tag @s remove invalid_book_slot_8

##Adding invalid book tags
execute if entity @s[scores={knockback_slot=8}] run tag @s add invalid_book_slot_8
execute if entity @s[scores={combo_slot=8}] run tag @s add invalid_book_slot_8
execute if entity @s[scores={air_jump_slot=8}] run tag @s add invalid_book_slot_8

execute if entity @s[scores={knockback_slot=7}] run tag @s add invalid_book_slot_7
execute if entity @s[scores={combo_slot=7}] run tag @s add invalid_book_slot_7
execute if entity @s[scores={air_jump_slot=7}] run tag @s add invalid_book_slot_7

execute if entity @s[scores={knockback_slot=6}] run tag @s add invalid_book_slot_6
execute if entity @s[scores={combo_slot=6}] run tag @s add invalid_book_slot_6
execute if entity @s[scores={air_jump_slot=6}] run tag @s add invalid_book_slot_6

execute if entity @s[scores={knockback_slot=5}] run tag @s add invalid_book_slot_5
execute if entity @s[scores={combo_slot=5}] run tag @s add invalid_book_slot_5
execute if entity @s[scores={air_jump_slot=5}] run tag @s add invalid_book_slot_5

execute if entity @s[scores={knockback_slot=4}] run tag @s add invalid_book_slot_4
execute if entity @s[scores={combo_slot=4}] run tag @s add invalid_book_slot_4
execute if entity @s[scores={air_jump_slot=4}] run tag @s add invalid_book_slot_4

execute if entity @s[scores={knockback_slot=3}] run tag @s add invalid_book_slot_3
execute if entity @s[scores={combo_slot=3}] run tag @s add invalid_book_slot_3
execute if entity @s[scores={air_jump_slot=3}] run tag @s add invalid_book_slot_3

execute if entity @s[scores={knockback_slot=2}] run tag @s add invalid_book_slot_2
execute if entity @s[scores={combo_slot=2}] run tag @s add invalid_book_slot_2
execute if entity @s[scores={air_jump_slot=2}] run tag @s add invalid_book_slot_2

execute if entity @s[scores={knockback_slot=1}] run tag @s add invalid_book_slot_1
execute if entity @s[scores={combo_slot=1}] run tag @s add invalid_book_slot_1
execute if entity @s[scores={air_jump_slot=1}] run tag @s add invalid_book_slot_1

execute if entity @s[scores={knockback_slot=0}] run tag @s add invalid_book_slot_0
execute if entity @s[scores={combo_slot=0}] run tag @s add invalid_book_slot_0
execute if entity @s[scores={air_jump_slot=0}] run tag @s add invalid_book_slot_0