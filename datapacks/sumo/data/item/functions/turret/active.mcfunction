##Runs when there is an active turret.

##Timer
scoreboard players remove @e[type=skeleton,tag=turret,scores={random_stat=1..}] random_stat 1
execute as @e[type=skeleton,tag=turret,scores={random_stat=0}] at @s anchored eyes run function item:turret/shoot

##If laser exists
execute if entity @e[type=area_effect_cloud,tag=turret_laser] run function item:turret/active_laser