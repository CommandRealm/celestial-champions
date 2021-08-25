##Main function for non-teams rounds mode.


##Timer that counts up
scoreboard players add $time game 1

##Starts the round and resets the players.
execute if score $time game matches 1 run function game:rounds/teams/start_round

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

##Cooldown
execute if score $time cooldown matches 1.. run function game:rounds/teams/cooldown



##Detecting win criteria
execute store result score $alive criteria if entity @a[tag=playing,team=!dead]
execute if entity @a[tag=admin,tag=playing] run scoreboard players add $alive criteria 1



execute store result score $red distribution if entity @a[tag=playing,tag=on_red_team,team=!dead]
execute store result score $blue distribution if entity @a[tag=playing,tag=on_blue_team,team=!dead]
execute store result score $yellow distribution if entity @a[tag=playing,tag=on_yellow_team,team=!dead]
execute store result score $green distribution if entity @a[tag=playing,tag=on_green_team,team=!dead]
execute store result score $cyan distribution if entity @a[tag=playing,tag=on_cyan_team,team=!dead]
execute store result score $orange distribution if entity @a[tag=playing,tag=on_orange_team,team=!dead]
execute store result score $pink distribution if entity @a[tag=playing,tag=on_pink_team,team=!dead]
execute store result score $purple distribution if entity @a[tag=playing,tag=on_purple_team,team=!dead]
execute store result score $white distribution if entity @a[tag=playing,tag=on_white_team,team=!dead]
execute store result score $gray distribution if entity @a[tag=playing,tag=on_white_team,team=!dead]

scoreboard players add $red distribution 0
scoreboard players add $blue distribution 0
scoreboard players add $yellow distribution 0
scoreboard players add $green distribution 0
scoreboard players add $cyan distribution 0
scoreboard players add $orange distribution 0
scoreboard players add $pink distribution 0
scoreboard players add $purple distribution 0
scoreboard players add $white distribution 0
scoreboard players add $gray distribution 0



##counting teams
#reset criteria
scoreboard players set $teams criteria 0
execute if score $red distribution matches 1.. run scoreboard players add $teams criteria 1
execute if score $blue distribution matches 1.. run scoreboard players add $teams criteria 1
execute if score $yellow distribution matches 1.. run scoreboard players add $teams criteria 1
execute if score $green distribution matches 1.. run scoreboard players add $teams criteria 1
execute if score $cyan distribution matches 1.. run scoreboard players add $teams criteria 1
execute if score $orange distribution matches 1.. run scoreboard players add $teams criteria 1
execute if score $pink distribution matches 1.. run scoreboard players add $teams criteria 1
execute if score $purple distribution matches 1.. run scoreboard players add $teams criteria 1
execute if score $white distribution matches 1.. run scoreboard players add $teams criteria 1
execute if score $gray distribution matches 1.. run scoreboard players add $teams criteria 1

##Checking if there are more than two teams.
execute if score $teams criteria matches ..1 unless score $time cooldown matches 0.. run function game:rounds/teams/check_round_winner
