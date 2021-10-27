##Called when we shoot our bow.

##Tag
tag @s add copy_id

tag @e[type=arrow,tag=temporary_match_0,tag=temporary_match_1,tag=temporary_match_2,tag=temporary_match_3] add malice_arrow
scoreboard players operation @e[type=arrow,tag=temporary_match_0,tag=temporary_match_1,tag=temporary_match_2,tag=temporary_match_3] id = @s id
execute as @e[type=arrow,tag=temporary_match_0,tag=temporary_match_1,tag=temporary_match_2,tag=temporary_match_3] at @s run function game:give_entity_id

##Timer for recall item
scoreboard players set @s random_cooldown 50

##
scoreboard players set @s set_arrow_timer 2147483647
scoreboard players set @s arrow_timer 600

tag @s remove copy_id