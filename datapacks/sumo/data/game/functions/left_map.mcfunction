##Called when we go too far away from the map.



##Die function
function game:die

tellraw @s {"text":"You went too far away from the map!","color":"red"}