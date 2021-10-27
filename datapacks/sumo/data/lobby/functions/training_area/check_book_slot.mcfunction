
##Checking other book slots
execute as @a[x=0,y=66,z=0,distance=..500,gamemode=adventure,tag=is_fighter,tag=!invalid_book_slot_4] at @s unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:knowledge_book"}]}] run function lobby:pregame/get_book
execute as @a[x=0,y=66,z=0,distance=..500,gamemode=adventure,tag=is_fighter,tag=invalid_book_slot_4,tag=!invalid_book_slot_5] at @s unless entity @s[nbt={Inventory:[{Slot:5b,id:"minecraft:knowledge_book"}]}] run function lobby:pregame/slot_five_get_book
execute as @a[x=0,y=66,z=0,distance=..500,gamemode=adventure,tag=is_fighter,tag=invalid_book_slot_4,tag=invalid_book_slot_5,tag=!invalid_book_slot_3] at @s unless entity @s[nbt={Inventory:[{Slot:3b,id:"minecraft:knowledge_book"}]}] run function lobby:pregame/slot_three_get_book
execute as @a[x=0,y=66,z=0,distance=..500,gamemode=adventure,tag=is_fighter,tag=invalid_book_slot_4,tag=invalid_book_slot_5,tag=invalid_book_slot_3] at @s unless entity @s[nbt={Inventory:[{Slot:2b,id:"minecraft:knowledge_book"}]}] run function lobby:pregame/slot_two_get_book
