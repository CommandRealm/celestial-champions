##Called when a player gets spiked by the spike item.

##Clearing levitation
scoreboard players set @s extra_jump_time 0
effect clear @s levitation
effect clear @s slow_falling

##Spike
summon creeper ~ ~2.5 ~ {Invulnerable:1b,Fuse:0s,Tags:["needs_copied_id"]}

##Calling function to give the creeper the copied id
execute as @e[type=creeper,tag=needs_copied_id] at @s run function game:give_entity_id

##Removing tag
tag @e[type=creeper,tag=needs_copied_id] remove needs_copied_id