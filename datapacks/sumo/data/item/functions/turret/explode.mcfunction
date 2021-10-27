##Called to summon a creeper

##Spike
summon creeper ~ ~ ~ {Invulnerable:1b,Fuse:0s,Tags:["needs_copied_id"]}

##Copying our id score
scoreboard players operation @e[type=creeper,tag=needs_copied_id] id = @s id

##Calling function to give the creeper the copied id
execute as @e[type=creeper,tag=needs_copied_id] at @s run function game:give_self_id

##Removing tag
tag @e[type=creeper,tag=needs_copied_id] remove needs_copied_id