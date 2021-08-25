##Called to set the time of day
execute if score $time_of_day settings matches 1 run time set 4000
execute if score $time_of_day settings matches 2 run time set 12750
execute if score $time_of_day settings matches 3 run time set 18000