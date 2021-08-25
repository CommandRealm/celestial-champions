##This function removes some duration off of the timer for how long extra jumps last (It scales with your damage percent)

##Copies player's damage percent to $calculate calculate
scoreboard players operation $calculate calculate = @s damage_percent

##Removes fifty to see the remaining percentage
scoreboard players remove $calculate calculate 50
##Sets $calculate_2 to 100
scoreboard players set $calculate_2 calculate 100

##Subtracts the $calculate from calculate_2 This should be the percentage of the extra jump that we want leftover.
scoreboard players operation $calculate_2 calculate -= $calculate calculate

##Multiplies calculate 1 and 2 together.
scoreboard players operation $calculate_2 calculate *= @s set_e_jump_time

##Divides calculate_2 by 100
scoreboard players operation $calculate_2 calculate /= $100 number

##Copy calculate_2 score back on to extra jump time remaining
scoreboard players operation @s extra_jump_time = $calculate_2 calculate
