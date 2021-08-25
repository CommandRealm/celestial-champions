##called to make the tnt explode

##Summon
execute if entity @s[tag=!incend_blue_tnt] run summon creeper ~ ~ ~ {Tags:["needs_copied_id"],Fuse:0s,Invulnerable:1b}
execute if entity @s[tag=!incend_blue_tnt] run summon creeper ~ ~ ~ {Tags:["needs_copied_id"],Fuse:0s,Invulnerable:1b}
execute if entity @s[tag=incend_blue_tnt] run summon creeper ~ ~ ~ {ExplosionRadius:5,Tags:["needs_copied_id"],Fuse:0s,Invulnerable:1b}

##Giving creeper id tag 
scoreboard players operation @e[type=creeper,tag=needs_copied_id,sort=nearest,limit=1] id = @s id
execute as @e[type=creeper,tag=needs_copied_id,sort=nearest,limit=1] at @s run function game:give_self_id



##Tags
tag @s remove has_been_hit


##Removeing tag
tag @s remove temporary_tag


##Kill (This should only run on the air explosives.)

tag @s add dont_explode

execute unless entity @s[tag=incend_ground_explosive] run function fighter:entity_death_timer_over

tag @s remove dont_explode