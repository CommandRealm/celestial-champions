##Start the countdown and prepare to lock players positions

##Creates the id area effect cloud.
execute as @a[tag=playing] at @s run function game:starting_countdown/summon_start_id_cloud


##Clearing map
execute as @e[type=area_effect_cloud,tag=map_marker] at @s run scoreboard players set @e[tag=on_death_timer,distance=..100] death_timer 1