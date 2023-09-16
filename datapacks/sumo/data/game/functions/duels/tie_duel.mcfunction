##Called when we tie a round on duels.

##Message
team join gold @a[tag=playing,gamemode=spectator,tag=in_duels_map]

##tag
tag @s add temporary_tag

##msg
tellraw @a[tag=playing] [{"selector":"@s"},{"translate":" & ","color":"yellow"},{"selector":"@p[team=gold,tag=in_duels_map,tag=!temporary_tag,gamemode=spectator,tag=playing]"},{"translate":" have tied.","color":"gray","bold":false}]

team join dead @a[team=gold]
##tag removal
tag @s remove temporary_tag

scoreboard players set @a[tag=playing,team=dead] duels_timer 1000000

tag @a[tag=playing,team=dead,tag=in_duels_map] remove in_duels_map

##Starting the ending phase for our map
execute as @e[type=area_effect_cloud,tag=duel_map_point] at @s unless entity @a[tag=playing,gamemode=adventure,distance=..300,tag=in_duels_map] run tag @s add on_death_timer
execute as @e[type=area_effect_cloud,tag=duel_map_point] at @s unless entity @a[tag=playing,gamemode=adventure,distance=..300,tag=in_duels_map] run scoreboard players set @s death_timer 99

tag @a[tag=playing,team=dead] remove is_fighter

##Checking if
execute unless entity @a[tag=playing,tag=in_duels_map,gamemode=adventure] run function game:duels/start_cooldown