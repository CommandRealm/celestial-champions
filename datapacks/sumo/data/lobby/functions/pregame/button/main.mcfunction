##called when a button has recently been pressed.
## Counting down
scoreboard players remove $button pregame 1

## if it hits 0
execute if score $button pregame matches 0 run function lobby:pregame/button/over