##Runs when the cooldown phase is over

##Resetting sidebar
scoreboard objectives setdisplay sidebar

##Called to see if there are any more duels to be played.

##Restart duels
execute unless score $rounds duels = $duel duels run scoreboard players set $time game 1

##End game
execute if score $rounds duels = $duel duels run function game:duels/start_ending_phase
