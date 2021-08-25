##Called when a player uses the spike item.

##Scores

##Effects

##Adding tags (used_ability is just so that it doesn't use yourself) (copy_id is to give the entity the damaged tag)
tag @s add used_ability

tag @s add copy_id

##Calling function of ability
execute anchored eyes positioned ^ ^ ^2 as @p[tag=!used_ability,distance=..5.0] at @s run function item:spike/hit


##Removing tags
tag @s remove copy_id
tag @s remove used_ability


##Particles
execute anchored eyes positioned ^ ^ ^2 run particle dust 0.373 0.373 0.373 1 ~ ~ ~ 1 0 0 0 35
execute anchored eyes positioned ^ ^ ^2 run particle dust 0.373 0.373 0.373 1 ~ ~ ~ 0 0 1 0 35
execute anchored eyes positioned ^ ^ ^2 run particle dust 0.373 0.373 0.373 1 ~ ~ ~ 0 1 0 0 35
execute anchored eyes positioned ^ ^ ^2 run particle minecraft:smoke ~ ~ ~ 0 0 0 0.5 50

##Sounds
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 1 2
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 1 1.75
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 1 1.5