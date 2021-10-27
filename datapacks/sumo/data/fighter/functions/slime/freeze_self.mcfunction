##called to freeze ourself

summon marker ~ ~ ~ {Tags:["on_death_timer","needs_death_timer","slime_freeze"],Rotation:[0.0f,0.0f]}
tp @e[type=marker,tag=needs_death_timer,limit=1] @s

##Death timer
scoreboard players set @e[type=marker,tag=needs_death_timer,limit=1] death_timer 60

##Giving the marker our id
scoreboard players operation @e[type=marker,tag=needs_death_timer,limit=1] id = @s id
tag @e[type=marker,tag=needs_death_timer,limit=1] remove needs_death_timer


##sound and particles
playsound minecraft:entity.slime.death master @a ~ ~ ~ 1 0
particle item_slime ~ ~1 ~ 0.5 0.5 0.5 0.15 20