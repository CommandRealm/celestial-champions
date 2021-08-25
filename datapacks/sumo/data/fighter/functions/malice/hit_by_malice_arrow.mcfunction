##Called by a player who is hit by malice's arrow

##sound and particles
playsound minecraft:block.note_block.bit master @a ~ ~ ~ 1 0
particle dust 1 0 0 1 ~ ~ ~ 0 0 0 0 1

##entity
summon area_effect_cloud ~ ~ ~ {Tags:["malice_detonation","on_death_timer","needs_death_timer","malice_tracker"],Duration:601}

##Death timer and id transfer (It copies our damaged id to see the player who originally shot the owner. Random stat is how they will keep track of who to tp to.)
scoreboard players set @e[type=area_effect_cloud,tag=malice_detonation,tag=needs_death_timer] death_timer 600
scoreboard players operation @e[type=area_effect_cloud,tag=malice_detonation,tag=needs_death_timer] id = @s malice_arrow_id
scoreboard players operation @e[type=area_effect_cloud,tag=malice_detonation,tag=needs_death_timer] random_stat = @s id

##Tag removals
tag @e[type=area_effect_cloud,tag=malice_detonation,tag=needs_death_timer] remove needs_death_timer

##advancement removal
advancement revoke @s only advancements:damage/damaged_by_malice_arrow