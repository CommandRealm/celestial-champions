##Called by a player who was hit by an egg

##Scoreboard addition
scoreboard players add @s times_hit 1

execute if score @s times_hit > @s max_damage run scoreboard players operation @s times_hit = @s max_damage

##Calculating percentage
function fighter:damage/calculate_percentage
