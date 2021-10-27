##called when the earth arrow hits a block

summon creeper ~ ~ ~ {Fuse:0s,Invulnerable:1b,Tags:["needs_adjustments"]}
scoreboard players operation @e[type=creeper,tag=needs_adjustments] id = @s id
tag @e[type=creeper] remove needs_adjustments
kill @s