##called when someone is playing as the blaze

##Giving fireballs motion
execute if entity @e[type=zombie,tag=blaze_fireball] run function fighter:blaze/active_fireball

##Teleporting to float spot
execute as @a[tag=is_fighter,gamemode=adventure,scores={ability_type=1,ability_state=1,fighter=13}] at @s run function fighter:blaze/teleport_to_float_spot

##Particles for arrows
execute at @e[tag=blaze_arrow] run particle flame ~ ~ ~ 0 0 0 0 1