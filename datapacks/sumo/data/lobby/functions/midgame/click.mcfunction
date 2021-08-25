##seeing which book we clicked
execute if score $players_in_game calculate matches ..49 if entity @s[nbt={SelectedItemSlot:3}] run function lobby:midgame/join_game

execute if entity @s[nbt={SelectedItemSlot:5}] run function lobby:midgame/spectate

##Reset score
scoreboard players reset @s pregame_click