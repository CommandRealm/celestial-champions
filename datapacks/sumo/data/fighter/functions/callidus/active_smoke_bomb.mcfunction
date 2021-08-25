##Active smoke bomb.
execute as @e[type=zombie,tag=callidus_smoke] at @s run particle smoke ~ ~ ~ 0 0 0 0 1

##If player is nearby run more checks
execute as @e[type=zombie,tag=callidus_smoke] at @s if entity @a[tag=is_fighter,gamemode=adventure,distance=..3] run function fighter:callidus/check_smoke_position

##Kill ones on ground
execute as @e[type=zombie,tag=callidus_smoke,nbt={OnGround:1b},scores={death_timer=..95}] at @s run function fighter:entity_death_timer_over
