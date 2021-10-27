##Called by the player who just got a kill in killa criteria mode.

##Adding the sidebar
execute if entity @s[tag=on_red_team] run scoreboard players add Red: criteria 1
execute if entity @s[tag=on_blue_team] run scoreboard players add Blue: criteria 1
execute if entity @s[tag=on_yellow_team] run scoreboard players add Yellow: criteria 1
execute if entity @s[tag=on_green_team] run scoreboard players add Green: criteria 1
execute if entity @s[tag=on_cyan_team] run scoreboard players add Cyan: criteria 1
execute if entity @s[tag=on_orange_team] run scoreboard players add Orange: criteria 1
execute if entity @s[tag=on_pink_team] run scoreboard players add Pink: criteria 1
execute if entity @s[tag=on_purple_team] run scoreboard players add Purple: criteria 1
execute if entity @s[tag=on_white_team] run scoreboard players add White: criteria 1
execute if entity @s[tag=on_gray_team] run scoreboard players add Gray: criteria 1

##Copying the criteria to the sidebar
execute if entity @s[tag=on_red_team] run scoreboard players operation Red: sidebar = Red: criteria
execute if entity @s[tag=on_blue_team] run scoreboard players operation Blue: sidebar = Blue: criteria
execute if entity @s[tag=on_yellow_team] run scoreboard players operation Yellow: sidebar = Yellow: criteria
execute if entity @s[tag=on_green_team] run scoreboard players operation Green: sidebar = Green: criteria
execute if entity @s[tag=on_cyan_team] run scoreboard players operation Cyan: sidebar = Cyan: criteria
execute if entity @s[tag=on_orange_team] run scoreboard players operation Orange: sidebar = Orange: criteria
execute if entity @s[tag=on_pink_team] run scoreboard players operation Pink: sidebar = Pink: criteria
execute if entity @s[tag=on_purple_team] run scoreboard players operation Purple: sidebar = Purple: criteria
execute if entity @s[tag=on_white_team] run scoreboard players operation White: sidebar = White: criteria
execute if entity @s[tag=on_gray_team] run scoreboard players operation Gray: sidebar = Gray: criteria

##Seeing if we match the sidebar criteria
execute if score Red: sidebar >= Criteria: sidebar run function game:kills_criteria/teams/win_game
execute if score Blue: sidebar >= Criteria: sidebar run function game:kills_criteria/teams/win_game
execute if score Yellow: sidebar >= Criteria: sidebar run function game:kills_criteria/teams/win_game
execute if score Green: sidebar >= Criteria: sidebar run function game:kills_criteria/teams/win_game
execute if score Cyan: sidebar >= Criteria: sidebar run function game:kills_criteria/teams/win_game
execute if score Orange: sidebar >= Criteria: sidebar run function game:kills_criteria/teams/win_game
execute if score Pink: sidebar >= Criteria: sidebar run function game:kills_criteria/teams/win_game
execute if score Purple: sidebar >= Criteria: sidebar run function game:kills_criteria/teams/win_game
execute if score White: sidebar >= Criteria: sidebar run function game:kills_criteria/teams/win_game
execute if score Gray: sidebar >= Criteria: sidebar run function game:kills_criteria/teams/win_game

##Adding our own criteria score (shows amt of kills)
scoreboard players add @s criteria 1


