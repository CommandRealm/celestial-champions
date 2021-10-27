##Creates area effect cloud to lock the position of players.

##Summon
summon area_effect_cloud ~ ~ ~ {Duration:100,Tags:["die","needs_id","start_lock_position_cloud"]}

##Copy id from player to cloud
scoreboard players operation @e[type=area_effect_cloud,sort=nearest,limit=1,tag=needs_id] id = @s id

##Remove tag
tag @e[type=area_effect_cloud] remove needs_id