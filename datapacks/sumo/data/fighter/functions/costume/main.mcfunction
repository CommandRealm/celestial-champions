##Checks players to make sure they have their costume equipped.


##Checks players who are not in the falling phase
execute as @a[tag=needs_costume,tag=!slow_falling_until_landing,tag=!pause_needs_costume] at @s unless entity @s[scores={training_area=1..}] unless entity @s[nbt={Inventory:[{Slot:100b,tag:{costume:1b}},{Slot:101b,tag:{costume:1b}},{Slot:102b,tag:{costume:1b}},{Slot:103b,tag:{costume:1b}}]}] run function fighter:costume/update_costume

##Checks players who are in the falling phase
execute as @a[tag=needs_costume,tag=slow_falling_until_landing,tag=!pause_needs_costume] at @s unless entity @s[scores={training_area=1..}] unless entity @s[nbt={Inventory:[{Slot:101b,tag:{costume:1b}},{Slot:102b,tag:{costume:1b}},{Slot:103b,tag:{costume:1b}}]}] run function fighter:costume/update_costume



##Calling blink function
function fighter:costume/blink/main