##Main function for duels mode.


##Timer that counts up
scoreboard players add $time game 1

##Starts the round and resets the players.
execute if score $time game matches 1 run function game:duels/schedule/start_generation

##Selects the maps that will be played (and teleports players there.)
execute if score $time game matches 2 run function game:duels/start_duel


##Forceloads the map so that players can be moved away and then back with no issues
execute if score $time game matches 3 run function game:force_load_map

##Tps spectators to their proper position.
execute if score $time game matches 4 run function game:duels/delayed_start


##Gives players slowness and starts the countdown phase.
execute if score $time game matches 4 as @a[gamemode=adventure,tag=playing] at @s run function game:starting_countdown/summon_start_id_cloud

##Tps spectators to their proper position.
execute if score $time game matches 8 as @e[type=area_effect_cloud,tag=map_marker] at @s as @e[tag=on_death_timer,distance=..100,tag=!map_marker] at @s run function fighter:entity_death_timer_over

##Calls function that does the countdown
execute if score $time game matches 8..108 run function game:duels/starting_countdown/active_countdown


##General mechanics
execute if score $time game matches 109.. run function game:mechanics

##Cooldown
execute if score $time cooldown matches 1.. run function game:duels/cooldown


##Winner animation text
execute if entity @a[tag=playing,scores={duel_winner_text=0..}] run function game:duels/winner_text/main



##Checking when someone win their duel
execute as @a[tag=playing,tag=in_duels_map,team=dead] at @s run function game:duels/check_duel_result

##If a map is counting down, make sure there aren't still people fighting here
execute if entity @e[type=area_effect_cloud,tag=map_marker,scores={death_timer=1..}] run function game:duels/check_nearby_players

##Seeing if we still have an opponent.
execute if score $time game matches 109.. run scoreboard players set @a[tag=playing] calculate 0
execute if score $time game matches 109.. as @a[tag=playing,gamemode=adventure] at @s unless entity @e[type=area_effect_cloud,distance=..300,tag=on_death_timer,tag=map_marker] store result score @s calculate if entity @a[tag=playing,distance=..300,scores={duels=1..}]
execute if score $time game matches 109.. as @a[tag=playing,gamemode=adventure,scores={calculate=1}] at @s unless entity @e[type=area_effect_cloud,distance=..300,tag=on_death_timer,tag=map_marker] run function game:duels/win_duel_by_forfeit


execute unless score $time cooldown matches 1.. unless score $time game matches 8..108 as @a[tag=playing,gamemode=adventure] at @s unless entity @e[type=area_effect_cloud,distance=..300,scores={death_timer=1..}] run scoreboard players remove @s duels_timer 1
execute if entity @a[tag=playing,scores={duels_timer=..600},gamemode=adventure] unless score $end cooldown matches 0.. run function game:duels/warnings/main