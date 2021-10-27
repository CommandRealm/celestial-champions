##called when the guardian is hit.


##Creeper
summon creeper ~ ~ ~ {Tags:["needs_copied_id"],Invulnerable:1b,Fuse:0s}
summon creeper ~ ~ ~ {Tags:["needs_copied_id"],Invulnerable:1b,Fuse:0s}
summon creeper ~ ~ ~ {Tags:["needs_copied_id"],Invulnerable:1b,Fuse:0s}
##summon creeper ~ ~ ~ {Tags:["needs_copied_id"],Invulnerable:1b,Fuse:0s}
##summon creeper ~ ~ ~ {Tags:["needs_copied_id"],Invulnerable:1b,Fuse:0s}
scoreboard players operation @e[type=creeper,tag=needs_copied_id] id = @s id
tag @e[type=creeper,tag=needs_copied_id] remove needs_copied_id

##Particles
particle item prismarine ~ ~ ~ 0 0 0 0.5 75
particle item chiseled_red_sandstone ~ ~ ~ 0 0 0 0.5 50

##Killing self
function fighter:entity_death_timer_over