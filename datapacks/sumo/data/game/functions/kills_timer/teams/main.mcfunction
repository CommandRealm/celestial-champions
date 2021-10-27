##Main function for non-teams kill criteria mode.


##Timer that counts up
scoreboard players add $time game 1

##Starts the round and resets the players.
execute if score $time game matches 1 run function game:kills_timer/teams/start_game

##Teleports playesr to the map
execute if score $time game matches 2 run function game:teleport_to_map

##Forceloads the map so that players can be moved away and then back with no issues
execute if score $time game matches 3 run function game:force_load_map

##Teleports players into a pool of water.
execute if score $time game matches 4 run tp @a[tag=playing] 30 3 30

##Marks the map with an area effect cloud.
execute if score $time game matches 5 run function game:place_map_marker

##Resets map
execute if score $time game matches 6 run function game:reset_map

##Spreads players on the map.
execute if score $time game matches 7 run function game:spreadplayers


##Gives players slowness and starts the countdown phase.
execute if score $time game matches 8 run function game:starting_countdown/start

##Calls function that does the countdown
execute if score $time game matches 8..108 run function game:starting_countdown/active_countdown


##General mechanics
execute if score $time game matches 109.. run function game:mechanics

##Set bossbar to active
execute if score $time game matches 109 run function game:kills_timer/starting_bossbar

##Cooldown
execute if score $time cooldown matches 1.. run function game:kills_timer/teams/cooldown

##Countdown for bossbar timer
scoreboard players remove $time criteria 1

##Bossbar timer title
scoreboard players remove $time bossbar_time 1
execute if score $time bossbar_time matches ..0 run function game:kills_timer/update_bossbar

##Called to show warning tellraws and play warning sounds.
execute if score $time criteria matches ..600 run function game:kills_timer/warnings/main

##End function
execute if score $time criteria matches 0 run function game:kills_timer/teams/timer_over