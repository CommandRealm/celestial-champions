

##Checking other book slots
execute as @a[x=0,y=66,z=0,distance=..500,gamemode=adventure,tag=is_fighter,tag=!invalid_book_slot_8] at @s unless entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:written_book"}]}] run function lobby:teams/slot_eight_get_book
execute as @a[x=0,y=66,z=0,distance=..500,gamemode=adventure,tag=is_fighter,tag=invalid_book_slot_8,tag=!invalid_book_slot_7] at @s unless entity @s[nbt={Inventory:[{Slot:7b,id:"minecraft:written_book"}]}] run function lobby:teams/slot_seven_get_book
execute as @a[x=0,y=66,z=0,distance=..500,gamemode=adventure,tag=is_fighter,tag=invalid_book_slot_8,tag=invalid_book_slot_7,tag=!invalid_book_slot_6] at @s unless entity @s[nbt={Inventory:[{Slot:6b,id:"minecraft:written_book"}]}] run function lobby:teams/slot_six_get_book
execute as @a[x=0,y=66,z=0,distance=..500,gamemode=adventure,tag=is_fighter,tag=invalid_book_slot_8,tag=invalid_book_slot_7,tag=invalid_book_slot_6] at @s unless entity @s[nbt={Inventory:[{Slot:5b,id:"minecraft:written_book"}]}] run function lobby:teams/slot_five_get_book