##called to remove the map selector

##sound
playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 1 0

##killing nearby nameplate
kill @e[type=area_effect_cloud,tag=competitive_mode_temp,sort=nearest,limit=1]

##killing self
kill @s

data modify entity @e[type=area_effect_cloud,tag=competitive_fighter_nameplate,limit=1] CustomNameVisible set value 0b

##If there are no others left, tp the players to the map.
execute unless entity @e[type=armor_stand,tag=competitive_mode_temp,tag=model,tag=!selected_map,sort=random,limit=1] run scoreboard players set $time game 0
execute unless entity @e[type=armor_stand,tag=competitive_mode_temp,tag=model,tag=!selected_map,sort=random,limit=1] run scoreboard players set $comp_fighting game 1

##timer
scoreboard players set $comp_kill_delay game 25