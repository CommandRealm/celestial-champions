##Called to generate a random item spawn timer

scoreboard players set $mod random 600
function random:random
execute if score $item_rate settings matches 1 run scoreboard players set @s item_spawn_timer 100
execute if score $item_rate settings matches 2 run scoreboard players set @s item_spawn_timer 300
execute if score $item_rate settings matches 3 run scoreboard players set @s item_spawn_timer 600

##Adding the random to our score
scoreboard players operation @s item_spawn_timer += $rand random