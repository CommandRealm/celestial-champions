##Calculating percentage
##Copying times_hit to damage_percent
scoreboard players operation @s damage_percent = @s times_hit

##Multiplying by one hundred
scoreboard players operation @s damage_percent *= $100 number

##Division by max_damage
scoreboard players operation @s damage_percent /= @s max_damage