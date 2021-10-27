##Called to move forward in the first conference
scoreboard players add @s duel_c_position 1
execute if score @s duel_c_position > $half_players duels run scoreboard players set @s duel_conference 2
execute if score @s duel_c_position > $half_players duels run scoreboard players remove @s duel_c_position 1
tag @s add dont_move_back