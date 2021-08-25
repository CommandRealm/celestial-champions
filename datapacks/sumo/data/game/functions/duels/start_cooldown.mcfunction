##called to start the duels cooldown
scoreboard players set $time cooldown 100
execute as @a[tag=playing] at @s run scoreboard players operation @s sidebar = @s criteria
scoreboard objectives setdisplay sidebar sidebar