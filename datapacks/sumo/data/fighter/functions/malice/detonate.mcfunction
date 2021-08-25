##Detonation for the area effect cloud

##Tags
tag @s add temporary_tag

execute rotated as @p[tag=temporary_tag] run summon creeper ^ ^ ^-3 {Fuse:0s,Invulnerable:1b,Tags:["needs_copied_id"],ExplosionRadius:4}
execute rotated as @p[tag=temporary_tag] run summon creeper ^ ^ ^-3 {Fuse:0s,Invulnerable:1b,Tags:["needs_copied_id"],ExplosionRadius:3}
execute rotated as @p[tag=temporary_tag] if entity @s[tag=!malice_tracker] run summon creeper ^ ^ ^-3 {Fuse:0s,Invulnerable:1b,Tags:["needs_copied_id"],ExplosionRadius:4}
scoreboard players operation @e[type=creeper,tag=needs_copied_id] id = @e[type=area_effect_cloud,tag=malice_detonation,tag=temporary_tag,sort=nearest,limit=1] id
execute as @e[type=creeper,tag=needs_copied_id] at @s run function game:give_self_id

##Levitation
effect clear @a[distance=..2.5,tag=is_fighter,tag=!temporary_tag] levitation
effect clear @a[distance=..2.5,tag=is_fighter,tag=!temporary_tag] slow_falling
scoreboard players set @a[distance=..2.5,tag=is_fighter,tag=!temporary_tag] extra_jump_time 10
effect give @a[distance=..2.5,tag=is_fighter,tag=!temporary_tag] levitation 1 9 true

function fighter:entity_death_timer_over