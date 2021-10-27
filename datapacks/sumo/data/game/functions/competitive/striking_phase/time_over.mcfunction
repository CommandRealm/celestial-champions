##called when a player takes too long.


tellraw @s [{"text":"⚡ ","color":"gold"},{"text":"You took too long!","color":"red"}]
scoreboard players set $time game 2
function game:competitive/striking_phase/choose_player