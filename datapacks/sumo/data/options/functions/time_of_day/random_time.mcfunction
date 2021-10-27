##Called to set a random time of day.

##Random number
scoreboard players set $mod random 3
function random:random

##adding the number by one
scoreboard players add $rand random 1

scoreboard players operation $time_of_day settings = $rand random
function options:time_of_day/set_time

##SEtting time of day score back to 0
scoreboard players set $time_of_day settings 0