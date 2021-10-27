##called to sort books and apply people to teams.
execute if entity @a[tag=!playing,tag=is_fighter] run function lobby:teams/check_book_slot
execute as @a[tag=!playing,tag=!is_fighter] at @s unless entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:written_book"}]}] run function lobby:teams/slot_eight_get_book

##Enabling trigger
scoreboard players enable @a select_team

##if we have a select team score
execute as @a[scores={select_team=1..}] at @s run function lobby:teams/check_team