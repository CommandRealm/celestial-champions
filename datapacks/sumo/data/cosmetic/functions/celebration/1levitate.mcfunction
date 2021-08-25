# Levitation Celebration by Calverin
execute as @a[tag=winner,scores={celebration=1}] at @s if score $end cooldown matches 99 run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 2
execute as @a[tag=winner,scores={celebration=1}] at @s if score $end cooldown matches 99 run effect give @s levitation 5 2 true
execute as @a[tag=winner,scores={celebration=1}] at @s if score $end cooldown matches 1.. run particle end_rod ~ ~-.25 ~ 0 0 0 1 0 normal
execute as @a[tag=winner,scores={celebration=1}] at @s if score $end cooldown matches 1 run effect clear @s levitation