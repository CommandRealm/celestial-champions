##Called to see if we can click the add teams button right now.
execute if score $mode settings matches 3 run function options:teams/error
execute if score $mode settings matches 4 run function options:teams/error_comp
execute unless score $mode settings matches 3..4 run function options:teams/click_teams