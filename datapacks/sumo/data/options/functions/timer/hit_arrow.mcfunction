execute if entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=remove,tag=check_kills] run scoreboard players remove $set_kills_timer settings 1200
execute if entity @e[distance=..0.05,type=area_effect_cloud,tag=check_sign,tag=check_kills] run function options:timer/add_timer