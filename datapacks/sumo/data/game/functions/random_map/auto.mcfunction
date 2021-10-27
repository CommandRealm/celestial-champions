##called to get a random small map

##Specific player counts
execute if score $ready_players pregame matches 0..3 run function game:random_map/small
execute if score $ready_players pregame matches 4..7 run function game:random_map/medium
execute if score $ready_players pregame matches 8.. run function game:random_map/large