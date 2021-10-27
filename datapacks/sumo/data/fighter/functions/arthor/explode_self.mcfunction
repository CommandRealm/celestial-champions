##removing advancement
advancement revoke @s only fighter:arthor/earth_arrow_damage

summon creeper ~ ~3 ~ {Fuse:0s,Invulnerable:1b,Tags:["needs_adjustments"]}
summon creeper ~ ~3 ~ {Fuse:0s,Invulnerable:1b,Tags:["needs_adjustments"]}
summon creeper ~ ~5 ~ {Fuse:0s,Invulnerable:1b,Tags:["needs_adjustments"]}
summon creeper ~ ~5 ~ {Fuse:0s,Invulnerable:1b,Tags:["needs_adjustments"]}
scoreboard players operation @e[type=creeper,tag=needs_adjustments] id = @s damaged_id
tag @e[type=creeper] remove needs_adjustments