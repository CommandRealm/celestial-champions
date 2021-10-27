##Activated when there are one or fewers players left in the game.


##Determining if its a draw or not
execute if score $alive criteria matches 1 run function game:competitive/announce_round_winner
execute if score $alive criteria matches 0 run function game:competitive/announce_round_draw


##Starting 5 second cooldown.
function game:competitive/start_cooldown