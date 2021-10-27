##Called by the player who just got a kill in killa criteria mode.

##Adding the sidebar
scoreboard players add @s criteria 1
scoreboard players operation @s sidebar = @s criteria

##Seeing if we match the sidebar criteria
execute if score @s criteria >= Criteria: sidebar run function game:kills_criteria/win_game

