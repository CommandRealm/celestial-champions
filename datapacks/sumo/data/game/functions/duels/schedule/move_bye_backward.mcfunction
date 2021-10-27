##Called to move backward in the second conference
scoreboard players remove $bye_id duel_c_position 1
execute if score $bye_id duel_c_position matches ..0 run scoreboard players set $bye_id duel_conference 1
execute if score $bye_id duel_c_position matches ..0 run scoreboard players add $bye_id duel_c_position 2