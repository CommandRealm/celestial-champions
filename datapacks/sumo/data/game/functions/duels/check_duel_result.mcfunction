##called to check duel result
execute as @a[distance=..300,tag=playing,team=!bye,team=!dead,gamemode=adventure] at @s run function game:duels/win_duel

##If statement is so that mulitple people dont run it.
execute unless entity @a[distance=..300,tag=playing,team=!bye,team=!dead,gamemode=adventure] at @s if entity @s[tag=in_duels_map] run function game:duels/tie_duel