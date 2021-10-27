##Called to adjust a ground pound item


##Random number
scoreboard players set $mod random 30
function random:random

##Adding score
scoreboard players add $rand random 5974

##Applying that to our age
execute store result entity @s Age int 1 run scoreboard players get $rand random

##Removing our tag
tag @s remove needs_adjustments
