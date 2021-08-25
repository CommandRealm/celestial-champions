##Called when someone is at the training area

##Teleporting them back if they go too far.
execute positioned 84 80 2 as @a[distance=30..,tag=is_fighter,tag=!playing,nbt={OnGround:1b}] at @s run function lobby:training_area/check_fighter_position

##If player is should be invulnerable
execute if entity @a[tag=!playing,tag=is_fighter,scores={training_area=1..}] run function lobby:training_area/invulnerable/main



##Pregame
execute if score $game state matches 0 unless score $ready_players pregame matches 50.. run function lobby:training_area/check_book_slot


##Training dummy
#Item checks
execute as @a[tag=is_fighter,tag=!playing] at @s unless entity @s[nbt={Inventory:[{Slot:19b,tag:{training_buddy_item:1}}]}] run function lobby:training_area/buddy/get_item
#Calling main function
execute if score $buddy training_area matches 0..1 run function lobby:training_area/buddy/main