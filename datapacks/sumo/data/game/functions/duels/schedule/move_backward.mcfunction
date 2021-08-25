##Called to move backward in the second conference
scoreboard players remove @s duel_c_position 1
execute if score @s duel_c_position matches ..0 run scoreboard players set @s duel_conference 1
execute if score @s duel_c_position matches ..0 run scoreboard players add @s duel_c_position 2