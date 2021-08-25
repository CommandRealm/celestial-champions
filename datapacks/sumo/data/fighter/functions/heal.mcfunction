##Called when the player who calls this functions heals.
scoreboard players operation @s times_hit -= @s times_heal
scoreboard players reset @s times_heal

##If our times hit goes below zero
scoreboard players set @s[scores={times_hit=..-1}] times_hit 0

##Function
function fighter:damage/calculate_percentage