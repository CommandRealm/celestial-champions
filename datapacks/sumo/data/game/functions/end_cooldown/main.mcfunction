##Purpose is to count the game's final seconds down.

##Timer
scoreboard players remove $end cooldown 1

##Starting the end cooldown
execute if score $end cooldown matches 99 run function game:end_cooldown/start
execute if score $end cooldown matches 98 run function game:end_cooldown/swap_gamemode

##Force spectate
execute as @a[tag=!winner,tag=playing,gamemode=spectator] at @s run spectate @e[type=area_effect_cloud,tag=end_cooldown_force_spectate,limit=1,sort=nearest]

##Calling reset
execute if score $end cooldown matches 1 run function game:end_cooldown/reset_before_end

##Calverin's code:
function cosmetic:celebration/main


##End game
execute if score $end cooldown matches 0 run function game:end

