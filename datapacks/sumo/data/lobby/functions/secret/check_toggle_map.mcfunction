##called to check toggle map
execute if score $game state matches 0 run function lobby:secret/toggle_map
execute unless score $game state matches 0 run function lobby:secret/invalid_toggle_map