##The function that runs whenever the game is running.

##How many people are playing in the game right now?
execute if score $teams settings matches 1 store result score $players_in_game calculate if entity @a[tag=playing]
execute if score $teams settings matches 2.. run function game:count_teams

##if it's 1 or less, end the game
execute if score $players_in_game calculate matches ..1 unless entity @a[tag=admin] run function game:not_enough_players

##Mode calls
##Will use an unless end cooldown is not null. This is for the spectating podium time at the end of the game.
##Non-teams, rounds:
execute if score $mode settings matches 0 if score $teams settings matches 1 run function game:rounds/main

##Non-teams, kills - criteria:
execute if score $mode settings matches 1 if score $teams settings matches 1 run function game:kills_criteria/main

##Non-teams, kills - time based:
execute if score $mode settings matches 2 if score $teams settings matches 1 run function game:kills_timer/main

##Teams, rounds:
execute if score $mode settings matches 0 if score $teams settings matches 2.. run function game:rounds/teams/main

##Teams, kills - criteria:
execute if score $mode settings matches 1 if score $teams settings matches 2.. run function game:kills_criteria/teams/main

##Teams, kills - time based:
execute if score $mode settings matches 2 if score $teams settings matches 2.. run function game:kills_timer/teams/main

##Duels
execute if score $mode settings matches 3 run function game:duels/main

execute if score $mode settings matches 4 run function game:competitive/main


##End cooldown
execute if score $end cooldown matches 1.. run function game:end_cooldown/main

##Called to check if we're still close to the map
execute if score $time game matches 109.. unless score $mode settings matches 4 unless score $end cooldown matches 0.. unless score $time cooldown matches 1.. as @a[tag=playing,gamemode=adventure] at @s unless entity @e[type=area_effect_cloud,tag=map_marker,distance=..250] run function game:left_map

##if there is a spectator
execute if entity @a[team=spectator] run function game:spectator/main

##Spectator limits
execute as @a[gamemode=spectator,x=0,y=66,z=0] at @s if entity @s[team=!lobby,team=!test,team=!help,team=!bld,team=!prg,team=!srprg,team=!lead,team=!sky_explorer,team=!sr_art,team=!pc_role,team=!manager] if entity @a[gamemode=adventure,tag=playing] unless entity @a[tag=playing,gamemode=adventure,distance=..100] at @p[tag=playing,gamemode=adventure] facing entity @s eyes run tp @s ^ ^ ^30 facing entity @s

##clearing leads
clear @a[tag=playing] lead
