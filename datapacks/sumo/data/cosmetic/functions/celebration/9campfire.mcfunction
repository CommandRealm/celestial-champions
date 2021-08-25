# Campfire Celebration by Calverin
execute as @a[tag=winner,scores={celebration=9}] at @s if score $end cooldown matches 99 run setblock 0 76 83 campfire
execute as @a[tag=winner,scores={celebration=9}] at @s if score $end cooldown matches 99 run give @s stick{CustomModelData:1,HideFlags:1,display:{Name:'[{"text":"Stick","color":"gold","italic":false}]'}}
execute as @a[tag=winner,scores={celebration=9}] at @s if score $end cooldown matches 1 run setblock 0 76 83 air
execute as @a[tag=winner,scores={celebration=9}] at @s if score $end cooldown matches 1 run clear @s stick