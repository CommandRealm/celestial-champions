##Called to move the bye

##Setting bye state to 0. It gets set to one in the move forward function. It's purpose is so that we don't move forward and then immediately back.
scoreboard players set $bye_state duels 0

##Function calls
execute if score $bye_id duel_conference matches 1 run function game:duels/schedule/move_bye_forward

execute if score $bye_id duel_conference matches 2 if score $bye_state duels matches 0 run function game:duels/schedule/move_bye_backward