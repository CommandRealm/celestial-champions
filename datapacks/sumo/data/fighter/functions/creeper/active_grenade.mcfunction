##Active grenade creeper function


##Grenade touching ground.
execute as @e[type=zombie,tag=creeper_grenade,nbt={OnGround:1b},scores={death_timer=..110}] at @s run function fighter:entity_death_timer_over
execute as @e[type=zombie,tag=creeper_grenade,scores={death_timer=..105}] at @s if entity @a[tag=is_fighter,gamemode=adventure,distance=..5] run function fighter:creeper/check_creeper_position