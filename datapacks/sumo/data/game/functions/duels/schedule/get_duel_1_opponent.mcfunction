##Called to get our duel 1 opponent.
tag @s add temporary_tag
execute as @a[tag=playing,tag=!temporary_tag,scores={duel_conference=2}] at @s if score @s duel_c_position = @p[tag=temporary_tag] duel_c_position run scoreboard players operation @p[tag=temporary_tag] duel_1 = @s id
execute as @a[tag=playing,tag=!temporary_tag,scores={duel_conference=2}] at @s if score @s duel_c_position = @p[tag=temporary_tag] duel_c_position run scoreboard players operation @s duel_1 = @p[tag=temporary_tag] id

tag @s remove temporary_tag