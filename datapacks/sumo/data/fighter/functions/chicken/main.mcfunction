##Called when a player is playing as chicken

##Throwing egg
execute as @a[tag=is_fighter,gamemode=adventure,scores={throw_egg=1..,fighter=5}] at @s run function fighter:chicken/throw_egg

##Grenade tech
execute as @e[type=egg,tag=thrown_chicken_egg] at @s run kill @e[type=area_effect_cloud,tag=chicken_egg_tracker,distance=..5]
execute as @e[type=area_effect_cloud,tag=chicken_egg_tracker] at @s run function fighter:chicken/egg_hit_something
kill @e[type=area_effect_cloud,tag=chicken_egg_tracker]
execute as @e[type=egg,tag=thrown_chicken_egg] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["chicken_egg_tracker","die"],Duration:2}

##If feathers are alive
execute if entity @e[type=armor_stand,tag=chicken_feather] run function fighter:chicken/active_feather

##If spike egg is alive
execute as @e[type=egg,tag=chicken_spike_egg] at @s if entity @a[gamemode=adventure,tag=is_fighter,distance=..5] run function fighter:chicken/check_spike_egg