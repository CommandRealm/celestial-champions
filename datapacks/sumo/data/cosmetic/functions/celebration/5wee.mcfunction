# Wee Celebration by Calverin
# Voice Clip by CheckMC
execute as @a[tag=winner,scores={celebration=5}] at @s if score $end cooldown matches 99 run scoreboard players reset @a wee
execute as @a[tag=winner,scores={celebration=5}] at @s if score $end cooldown matches 99 run effect give @s jump_boost 5 2 true
execute as @a[tag=winner,scores={celebration=5,wee=1..}] at @s if score $end cooldown matches 1.. run playsound minecraft:custom.wee master @a ~ ~ ~ 20 1
execute as @a[tag=winner,scores={celebration=5,wee=1..}] at @s run scoreboard players reset @s wee
execute as @a[tag=winner,scores={celebration=5}] at @s if score $end cooldown matches 1 run effect clear @s jump_boost