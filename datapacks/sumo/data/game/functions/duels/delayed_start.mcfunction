##Delayed start function. Used for stuff like moving spectators.

##Getting bye players in the proper spot.
execute as @a[team=bye] at @s at @e[type=area_effect_cloud,tag=map_marker,sort=nearest,limit=1] run tp @s ~ 90 ~ 0 90

##Clearing entities that should be dead
execute as @e[type=area_effect_cloud,tag=map_marker] at @s run scoreboard players set @e[tag=on_death_timer,distance=..100,tag=!map_marker] death_timer 1