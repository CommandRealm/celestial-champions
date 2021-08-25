##called to toggle the secret map
scoreboard players add $secret_map settings 1
execute if score $secret_map settings matches 2.. run scoreboard players set $secret_map settings 0

execute if score $secret_map settings matches 1 run tellraw @a[x=3,y=54,z=24,distance=..5] [{"text":"The secret map is now selectable!","color":"gold"}]
execute if score $secret_map settings matches 0 run tellraw @a[x=3,y=54,z=24,distance=..5] [{"text":"The secret map is no longer selectable.","color":"gray"}]

execute if score $secret_map settings matches 0 if score $map settings matches 44 run function options:map/add_map

playsound minecraft:block.note_block.pling master @a 3 54 24 1 0.75