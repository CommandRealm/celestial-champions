##called to count the number of teams in the game.
scoreboard players set $players_in_game calculate 0

execute if entity @a[tag=playing,tag=on_red_team] run scoreboard players add $players_in_game calculate 1
execute if entity @a[tag=playing,tag=on_blue_team] run scoreboard players add $players_in_game calculate 1
execute if entity @a[tag=playing,tag=on_yellow_team] run scoreboard players add $players_in_game calculate 1
execute if entity @a[tag=playing,tag=on_green_team] run scoreboard players add $players_in_game calculate 1
execute if entity @a[tag=playing,tag=on_cyan_team] run scoreboard players add $players_in_game calculate 1
execute if entity @a[tag=playing,tag=on_orange_team] run scoreboard players add $players_in_game calculate 1
execute if entity @a[tag=playing,tag=on_pink_team] run scoreboard players add $players_in_game calculate 1
execute if entity @a[tag=playing,tag=on_purple_team] run scoreboard players add $players_in_game calculate 1
execute if entity @a[tag=playing,tag=on_white_team] run scoreboard players add $players_in_game calculate 1
execute if entity @a[tag=playing,tag=on_gray_team] run scoreboard players add $players_in_game calculate 1