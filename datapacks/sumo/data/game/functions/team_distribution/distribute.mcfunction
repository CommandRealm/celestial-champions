##Called to distribution players onto teams.

##Removing and adding objective
scoreboard objectives remove distribution
scoreboard objectives add distribution dummy

execute if score $teams settings matches 2 run function game:team_distribution/two_teams
execute if score $teams settings matches 3 run function game:team_distribution/three_teams
execute if score $teams settings matches 4 run function game:team_distribution/four_teams
execute if score $teams settings matches 5 run function game:team_distribution/five_teams
execute if score $teams settings matches 6 run function game:team_distribution/six_teams
execute if score $teams settings matches 7 run function game:team_distribution/seven_teams
execute if score $teams settings matches 8 run function game:team_distribution/eight_teams
execute if score $teams settings matches 9 run function game:team_distribution/nine_teams
execute if score $teams settings matches 10 run function game:team_distribution/ten_teams


