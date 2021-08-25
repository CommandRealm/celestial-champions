##Called to set the explode position for our ground ability.


##sound and particles
playsound minecraft:block.note_block.bit master @a ~ ~ ~ 1 0
particle dust 1 0 0 1 ~ ~ ~ 0 0 0 0 1


##entity
summon area_effect_cloud ~ ~ ~ {Tags:["malice_detonation","on_death_timer","needs_death_timer"],Duration:601}

##Death timer and id transfer
scoreboard players set @e[type=area_effect_cloud,tag=malice_detonation,tag=needs_death_timer] death_timer 600
scoreboard players operation @e[type=area_effect_cloud,tag=malice_detonation,tag=needs_death_timer] id = @s id

##Tag removals
tag @e[type=area_effect_cloud,tag=malice_detonation,tag=needs_death_timer] remove needs_death_timer