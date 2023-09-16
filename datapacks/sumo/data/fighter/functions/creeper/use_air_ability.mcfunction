##Called when theo uses his air ability

##Scores

##Setting the ability state to inactive
scoreboard players set @s ability_state 2

##Showing how long until the ability can be used again
scoreboard players set @s ability_timer 400

##Clarifying it as an air ability (0 is ground, 1 is air)
scoreboard players set @s ability_type 1
##Effects

##Adding tags (used_ability is just so that it doesn't use yourself) (copy_id is to give the entity the damaged tag)
tag @s add used_ability

tag @s add copy_id







##Particles
particle minecraft:crit ~ ~-3.5 ~ 0.25 1 0.25 0.25 25


##Tellraw
tellraw @s[tag=!no_ability_msg] [{"translate":"--------------------------","color":"white"},{"translate":"\nAir Ability: ","color":"dark_aqua","bold":true},{"translate":"Repellent Destruction\n","color":"aqua"},{"translate":"(Hover for description.)\n","color":"#bd9b4b","italic":true,"hoverEvent":{"action":"show_text","value":{"translate":"Summons explosives under yourself, launching the user upward."}}},{"translate":"--------------------------","color":"white"}]


##Sounds
playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 1 0






##Calling function of ability

summon creeper ~ ~-3.5 ~ {Fuse:0s,Invulnerable:1b,Tags:["needs_copied_id"],ExplosionRadius:5}
summon creeper ~ ~-3.5 ~ {Fuse:0s,Invulnerable:1b,Tags:["needs_copied_id"],ExplosionRadius:5}
summon creeper ~ ~-3.5 ~ {Fuse:0s,Invulnerable:1b,Tags:["needs_copied_id"],ExplosionRadius:5}



execute as @e[type=creeper,tag=needs_copied_id] at @s run function game:give_entity_id

##Removing tags
tag @s remove copy_id
tag @s remove used_ability