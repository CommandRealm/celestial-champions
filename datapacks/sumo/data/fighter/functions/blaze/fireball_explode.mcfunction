##Called when a fireball is supposed to explode.

##Creeper
summon creeper ~ ~0.5 ~ {Fuse:0s,Invulnerable:1b,Tags:["needs_copied_id"],ExplosionRadius:5}


##Id
scoreboard players operation @e[type=creeper,tag=needs_copied_id] id = @s id

execute as @e[type=creeper,tag=needs_copied_id] at @s run function game:give_self_id

##Particles
particle lava ~ ~ ~ 0 0 0 0.15 25