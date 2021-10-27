##called to do the immediate spike

##Spike

scoreboard players set @s extra_jump_time 0
effect clear @s levitation
effect clear @s slow_falling

##Spike
summon creeper ~ ~2.5 ~ {Invulnerable:1b,Fuse:0s,Tags:["needs_copied_id"]}

##Calling function to give the creeper the copied id
scoreboard players operation @e[type=creeper,tag=needs_copied_id] id = @p[tag=copy_id] id
execute as @e[type=creeper,tag=needs_copied_id] at @s run function game:give_self_id

tag @e[type=creeper,tag=needs_copied_id] remove needs_copied_id