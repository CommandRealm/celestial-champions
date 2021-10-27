##Called when we're supposed to summon an item.

##Summon
summon area_effect_cloud 0 0 0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["on_death_timer","needs_death_timer","item_spawn"]}


##Death timer
scoreboard players set @e[type=area_effect_cloud,tag=needs_death_timer] death_timer 300


##Reposition (random is because of how spreadplayers works according to the minecraft wiki)
execute if score $game state matches 1.. run spreadplayers ~ ~ 0 25 false @e[type=area_effect_cloud,limit=1,sort=random,tag=needs_death_timer,tag=item_spawn]

##Smaller radius for lobby is so that items don't appear on the main island
execute if score $game state matches 0 run spreadplayers ~ ~ 0 15 false @e[type=area_effect_cloud,limit=1,sort=random,tag=needs_death_timer,tag=item_spawn]



##Moving up
execute as @e[type=area_effect_cloud,tag=needs_death_timer] at @s run tp @s ~ ~20 ~


##Tag removal
tag @e[type=area_effect_cloud,tag=needs_death_timer] remove needs_death_timer
