##called when a player who doesn't have their proper jumps touches the ground

scoreboard players operation @s extra_jumps = @s set_extra_jumps
advancement grant @s only fighter:inventory_changed