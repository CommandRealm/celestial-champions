##Main competitive function.

##Timer that counts up
scoreboard players add $time game 1

execute if score $comp_fighting game matches 0 run function game:competitive/check_phase

execute if score $comp_fighting game matches 1 run function game:competitive/fighting