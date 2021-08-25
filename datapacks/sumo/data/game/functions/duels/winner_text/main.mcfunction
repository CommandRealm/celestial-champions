##called to display the winner animation text

##counting down
scoreboard players remove @a[tag=playing,scores={duel_winner_text=0..}] winner_text_cool 1
execute as @a[scores={winner_text_cool=..0},tag=playing] at @s run function game:duels/winner_text/update_text