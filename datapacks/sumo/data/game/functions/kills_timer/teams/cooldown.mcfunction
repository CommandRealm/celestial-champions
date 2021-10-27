##Cooldown before ending the game.

##Removing timer
scoreboard players remove $time cooldown 1


##If timer hits 0
execute if score $time cooldown matches 0 run function game:kills_timer/teams/start_ending_phase