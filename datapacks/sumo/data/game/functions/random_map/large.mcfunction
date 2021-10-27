##called to get a random medium map

##Random number
scoreboard players set $mod random 8
function random:random
scoreboard players add $rand random 45

##copying to map score
scoreboard players operation $map settings = $rand random