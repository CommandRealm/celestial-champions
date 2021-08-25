##Called to move players and remove forceload for a map that isn't being used anymore
gamemode spectator @a[distance=..300,gamemode=adventure,tag=playing]

##tag
tag @a[gamemode=spectator,distance=..300,tag=playing] add temporary_tag
tp @a[gamemode=spectator,distance=..300,tag=playing,tag=temporary_tag] @r[tag=playing,distance=300..]
execute as @a[gamemode=spectator,tag=playing,tag=temporary_tag,distance=300..] at @s at @e[type=area_effect_cloud,tag=map_marker,sort=nearest,limit=1] run tp @s ~ 90 ~ 0 90
##remove tags
tag @a[tag=temporary_tag] remove is_fighter
tag @a remove temporary_tag

##Clearing things on a death timer
kill @e[tag=on_death_timer,tag=!map_marker,distance=..300]


forceload remove ~100 ~100 ~-100 ~-100