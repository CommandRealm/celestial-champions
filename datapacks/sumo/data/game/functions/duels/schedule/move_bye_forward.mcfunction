##Called to move forward in the first conference
scoreboard players add $bye_id duel_c_position 1
execute if score $bye_id duel_c_position > $half_players duels run scoreboard players set $bye_id duel_conference 2
execute if score $bye_id duel_c_position > $half_players duels run scoreboard players remove $bye_id duel_c_position 1


##State adjustment
scoreboard players set $bye_state duels 1