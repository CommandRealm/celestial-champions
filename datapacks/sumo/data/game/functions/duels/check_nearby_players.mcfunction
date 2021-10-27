##Called to see if the death timer should be counting down for this map marker.

execute as @e[type=area_effect_cloud,tag=map_marker,scores={death_timer=1..}] at @s store result score @s duels if entity @a[tag=playing,gamemode=adventure,distance=..300]

scoreboard players reset @e[type=area_effect_cloud,tag=map_marker,scores={death_timer=1..,duels=2..}] death_timer