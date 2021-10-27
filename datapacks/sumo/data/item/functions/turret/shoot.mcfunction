##Called to shoot a laser

##Summon
summon area_effect_cloud ~ ~ ~ {Tags:["needs_death_timer","on_death_timer","turret_laser"],Duration:101}

##Tp
tp @e[type=area_effect_cloud,tag=needs_death_timer] @s

execute as @e[type=area_effect_cloud,tag=needs_death_timer] at @s run tp @s ~ ~1 ~

##Id
scoreboard players operation @e[type=area_effect_cloud,tag=needs_death_timer] id = @s id

##Death timer
scoreboard players set @e[type=area_effect_cloud,tag=needs_death_timer] death_timer 100
tag @e[type=area_effect_cloud,tag=needs_death_timer] remove needs_death_timer

##Resetting our shoot score
scoreboard players set @s random_stat 20


##Sounds
playsound minecraft:entity.arrow.shoot master @a ~ ~ ~ 1 0
playsound minecraft:block.note_block.bit master @a ~ ~ ~ 1 0

##Particle
particle smoke ^ ^ ^1 0.25 0.25 0.25 0.15 50