##Called when chicken uses his air ability

##Scores

##Setting the ability state to inactive
scoreboard players set @s ability_state 2

##Showing how long until the ability can be used again
scoreboard players set @s ability_timer 400

##Clarifying it as an air ability (0 is ground, 1 is air)
scoreboard players set @s ability_type 1
##Effects

##Adding tags (used_ability is just so that it doesn't use yourself) (copy_id is to give the entity the damaged tag)
tag @s add copy_id

##Summoning egg
summon egg ~ ~-0.5 ~ {Motion:[0.0d,-1.0d,0.0d],Tags:["thrown_chicken_egg","needs_death_timer","on_death_timer","chicken_spike_egg","needs_copied_id"],Item:{id:"minecraft:egg",Count:1b,tag:{egg_type:"chicken"}}}

##Score id
scoreboard players operation @e[type=egg,tag=needs_death_timer] id = @s id

##Copy id
execute as @e[type=egg,tag=needs_death_timer] at @s run function game:give_entity_id
tag @e[type=egg,tag=needs_copied_id] remove needs_copied_id

##Death timer
scoreboard players set @e[type=egg,tag=needs_death_timer] death_timer 80
tag @e[type=egg,tag=needs_death_timer] remove needs_death_timer


##Removing tags
tag @s remove copy_id


##Particles
particle item minecraft:feather ~ ~-0.5 ~ 0.5 0.5 0.5 0.25 25


##Tellraw
tellraw @s[tag=!no_ability_msg] [{"text":"--------------------------","color":"white"},{"text":"\nAir Ability: ","color":"dark_aqua","bold":true},{"text":"Egg Spike\n","color":"aqua"},{"text":"(Hover for description.)\n","color":"#bd9b4b","italic":true,"hoverEvent":{"action":"show_text","value":"Shoots an egg below you, spiking opponents."}},{"text":"--------------------------","color":"white"}]


##Sounds
playsound minecraft:entity.chicken.egg master @a ~ ~ ~ 1 0
playsound minecraft:entity.chicken.egg master @a ~ ~ ~ 1 0.75
playsound minecraft:entity.chicken.egg master @a ~ ~ ~ 1 1
playsound minecraft:entity.chicken.death master @a ~ ~ ~ 1 1.1