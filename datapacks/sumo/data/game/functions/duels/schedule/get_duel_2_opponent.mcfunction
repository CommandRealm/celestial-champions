##Called to get our duel 2 opponent.
tag @s add temporary_tag
execute as @a[tag=playing,tag=!temporary_tag,scores={duel_conference=2}] at @s if score @s duel_c_position = @p[tag=temporary_tag] duel_c_position run scoreboard players operation @p[tag=temporary_tag] duel_2 = @s id
execute as @a[tag=playing,tag=!temporary_tag,scores={duel_conference=2}] at @s if score @s duel_c_position = @p[tag=temporary_tag] duel_c_position run scoreboard players operation @s duel_2 = @p[tag=temporary_tag] id
execute as @a[tag=playing] at @s if score @s duel_2 = @s duel_1 run scoreboard players set @s duel_2 -1000

tag @s remove temporary_tag