# Kawaii Celebration by Calverin
# Art by FalconReign Probably
execute as @a[tag=!winner,tag=playing] at @s if score $end cooldown matches 99 run item replace entity @s armor.head with carved_pumpkin
execute if score $end cooldown matches 99 run tag @a[tag=!winner,tag=playing] remove needs_costume
execute as @a[tag=winner,scores={celebration=14}] at @s if score $end cooldown matches 1.. run particle heart ~ ~ ~ .5 .5 .5 1 5 normal
execute as @a[tag=!winner,tag=playing] at @s if score $end cooldown matches 1 run item replace entity @s armor.head with air