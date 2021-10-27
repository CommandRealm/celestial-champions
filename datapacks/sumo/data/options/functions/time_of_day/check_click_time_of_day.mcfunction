##Making sure this isn't COMP
execute if score $mode settings matches 4 run function options:time_of_day/error_comp
execute unless score $mode settings matches 4 run function options:time_of_day/click_time_of_day