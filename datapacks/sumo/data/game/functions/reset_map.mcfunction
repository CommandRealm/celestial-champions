##Called to reset the map. (Trapdoors and other stuff)

##General resets
kill @e[tag=die,distance=..500]
kill @e[tag=on_death_timer,tag=!map_marker,distance=..500]
kill @e[type=arrow,distance=..500]

##Specific map needs
execute if score $map settings matches 3 run function game:reset_map/map_3
execute if score $map settings matches 4 run function game:reset_map/map_4
execute if score $map settings matches 7 run function game:reset_map/map_7
execute if score $map settings matches 11 run function game:reset_map/map_11
execute if score $map settings matches 12 run function game:reset_map/map_12
execute if score $map settings matches 15 run function game:reset_map/map_15
execute if score $map settings matches 24 run function game:reset_map/map_24
execute if score $map settings matches 25 run function game:reset_map/map_25
execute if score $map settings matches 27 run function game:reset_map/map_27
execute if score $map settings matches 29 run function game:reset_map/map_29
execute if score $map settings matches 31 run function game:reset_map/map_31
execute if score $map settings matches 32 run function game:reset_map/map_32
execute if score $map settings matches 33 run function game:reset_map/map_33
execute if score $map settings matches 36 run function game:reset_map/map_36
execute if score $map settings matches 39 run function game:reset_map/map_39
execute if score $map settings matches 40 run function game:reset_map/map_40