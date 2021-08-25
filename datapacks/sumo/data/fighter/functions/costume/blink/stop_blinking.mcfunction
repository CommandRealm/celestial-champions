##Called when a player is blinking, but should stop blinking.

##Removing tag
tag @s remove is_blinking


##Updating head
function fighter:costume/update_costume


##Setting random blink timer

##setting modulo score
scoreboard players set $mod random 80
##generating a random number
function random:random
##Adding 60 ticks (This means that we will have a random number between three and seven seconds.)
scoreboard players add $rand random 60
##Copying that score to our blink timer
scoreboard players operation @s blink = $rand random