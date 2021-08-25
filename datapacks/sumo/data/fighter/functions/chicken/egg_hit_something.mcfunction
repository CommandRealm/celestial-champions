##Called when the egg thrown by a chicken fighter hits egg_hit_something


##Calling function for those hit by the egg
execute as @a[tag=is_fighter,gamemode=adventure,distance=..3] run function fighter:chicken/hit_by_egg


##Killing baby chickens.
execute as @e[type=chicken,nbt={Age:-24000},distance=..2] at @s run function fighter:entity_death_timer_over


##Particles
particle item honey_block ~ ~ ~ 0 0 0 0.25 5
particle item white_concrete ~ ~ ~ 0 0 0 0.1 10

##Sounds
playsound minecraft:entity.turtle.egg_break master @a ~ ~ ~ 0.5 1