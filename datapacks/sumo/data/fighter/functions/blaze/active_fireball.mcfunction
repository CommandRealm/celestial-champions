##Called when there is an active fireball
execute as @e[type=zombie,tag=blaze_fireball] at @s run function fighter:blaze/fireball_motion
execute as @e[type=zombie,tag=blaze_fireball] at @s positioned ~ ~-1 ~ if entity @a[distance=..0.75,gamemode=adventure,tag=is_fighter] run function fighter:blaze/check_fireball_position