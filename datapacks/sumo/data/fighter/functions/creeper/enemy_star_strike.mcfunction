##Called when a player gets spiked by theo.

##Clearing levitation
scoreboard players set @s extra_jump_time
effect clear @s levitation

##Spike
summon creeper ~ ~2.5 ~ {Invulnerable:1b,Fuse:0s,Tags:["needs_copied_id"]}

##Calling function to give the creeper the copied id
execute as @e[type=creeper,tag=needs_copied_id] at @s run function game:give_entity_id

##Sounds
playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 0.793701
playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 0.943874
playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1.122462