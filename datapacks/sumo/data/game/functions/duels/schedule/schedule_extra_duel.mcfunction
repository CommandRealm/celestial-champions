tag @s add temporary_tag
tag @r[tag=playing,tag=has_bye,tag=!scheduled_final_duel,tag=!temporary_tag] add my_duel_11_opponent
execute as @p[tag=my_duel_11_opponent,limit=1] at @s run scoreboard players operation @p[tag=temporary_tag] duel_11 = @s id
execute as @p[tag=my_duel_11_opponent,limit=1] at @s run scoreboard players operation @s duel_11 = @p[tag=temporary_tag] id

##Adding our scheduled tag
tag @s add scheduled_final_duel
tag @p[tag=my_duel_11_opponent] add scheduled_final_duel

tag @s remove temporary_tag
tag @a remove my_duel_11_opponent