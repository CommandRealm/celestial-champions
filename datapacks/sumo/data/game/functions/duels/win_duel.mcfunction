##Called when a player wins their duel.

##Messages
team join gold
execute if entity @s[tag=had_damage_id,tag=!won_duel_by_forfeit] run tellraw @a[tag=playing] [{"selector":"@s"},{"translate":" has won their duel!","color":"white","bold":false}]
execute if entity @s[tag=!had_damage_id,tag=!won_duel_by_forfeit] run tellraw @a[tag=playing] [{"selector":"@s"},{"translate":" has ","color":"white","bold":false},{"translate":"FLAWLESSLY","color":"aqua","bold":true},{"translate":" won their duel!","color":"white","bold":false}]
execute if entity @s[tag=won_duel_by_forfeit] run tellraw @a[tag=playing] [{"selector":"@s"},{"translate":" has won their duel by forfeit!","color":"dark_gray","bold":false}]

##advancement
execute if entity @s[tag=!had_damage_id,tag=!won_duel_by_forfeit] run advancement grant @s only advancements:custom/flawless

team join winner @a[team=gold]

##Adding our score
scoreboard players add @s criteria 1

##Resetting duels Timer
scoreboard players set @s duels_timer 1000000
scoreboard players set @a[tag=playing,team=dead] duels_timer 1000000

tag @s remove in_duels_map
tag @a[team=dead] remove in_duels_map

##Starting the ending phase for our map
execute as @e[type=area_effect_cloud,tag=duel_map_point] at @s unless entity @a[tag=playing,gamemode=adventure,distance=..300,tag=in_duels_map] unless entity @s[scores={death_timer=1..}] run tag @s add on_death_timer
execute as @e[type=area_effect_cloud,tag=duel_map_point] at @s unless entity @a[tag=playing,gamemode=adventure,distance=..300,tag=in_duels_map] unless entity @s[scores={death_timer=1..}] run scoreboard players set @s death_timer 99

tag @a[tag=playing,team=dead] remove is_fighter

##Checking if
execute unless entity @a[tag=playing,tag=in_duels_map,gamemode=adventure] run function game:duels/start_cooldown


##starting win text
execute unless entity @s[scores={duel_winner_text=0..}] run scoreboard players set @s duel_winner_text 0

##adding stats
scoreboard players add @s stats_d_wins 1


tag @s remove won_duel_by_forfeit