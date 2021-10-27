##called to get a random small map

##Random number
scoreboard players set $mod random 22
function random:random
scoreboard players add $rand random 1

##copying to map score
scoreboard players operation $map settings = $rand random