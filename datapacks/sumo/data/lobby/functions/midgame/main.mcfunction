##Main function for if a player is in the lobby and a game is running.

##If it's less than 50, give us join game book
execute if score $players_in_game calculate matches ..49 unless score $mode settings matches 3 as @a[tag=!playing,gamemode=adventure,tag=!is_fighter] at @s unless entity @s[nbt={Inventory:[{Slot:3b,id:"minecraft:knowledge_book",tag:{book_type:"join"}}]}] run function lobby:midgame/get_join_book


##Give spectator book
execute as @a[tag=!playing,gamemode=adventure,tag=!is_fighter] at @s unless entity @s[nbt={Inventory:[{Slot:5b,id:"minecraft:knowledge_book",tag:{book_type:"spectate"}}]}] run function lobby:midgame/get_spectate_book


##Toggle ready if player clicked
execute as @a[scores={pregame_click=1..}] at @s run function lobby:midgame/click