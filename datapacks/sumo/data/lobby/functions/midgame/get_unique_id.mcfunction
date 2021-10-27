##called to find a unique id for us.

##setting base scores
scoreboard players add $id_check calculate 1
scoreboard players set $result calculate 1

##if player has id, change result
execute as @a[tag=playing] at @s if score @s id = $id_check calculate run scoreboard players set $result calculate -100

##If we have a good result, give us an id
execute if score $result calculate matches 1 run scoreboard players operation @s id = $id_check calculate
execute unless score $result calculate matches 1 run function lobby:midgame/get_unique_id