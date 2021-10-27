##Active web function


##Web touching ground.
execute as @e[type=zombie,tag=spider_web,nbt={OnGround:1b},scores={death_timer=..110}] at @s run function fighter:entity_death_timer_over
execute as @e[type=zombie,tag=spider_web,scores={death_timer=..105}] at @s if entity @a[tag=is_fighter,gamemode=adventure,distance=..5] run function fighter:spider/check_web_position