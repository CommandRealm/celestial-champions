##This function runs during the starting countdown



##Check position
execute as @a[tag=playing] at @s run function game:starting_countdown/check_position

##Call titles
execute if score $time game matches 48 run function game:starting_countdown/title

execute if score $time game matches 68 run function game:starting_countdown/title

execute if score $time game matches 88 run function game:starting_countdown/title

execute if score $time game matches 108 run function game:starting_countdown/countdown_end