##Called when we're hit by the ground raycast.
effect give @s slowness 2 0 false
scoreboard players add @s times_hit 3
execute if score @s times_hit > @s max_damage run scoreboard players operation @s times_hit = @s max_damage
effect give @s instant_damage 1 0 true

##Particle
particle enchanted_hit ~ ~1.75 ~ 0.05 0.05 0.05 2 25
particle item chiseled_red_sandstone ~ ~1.75 ~ 0.05 0.05 0.05 0.1 10

##sound
playsound minecraft:entity.generic.hurt master @a ~ ~ ~ 

##Updating damaged_id
scoreboard players operation @s damaged_id = @p[tag=this] id