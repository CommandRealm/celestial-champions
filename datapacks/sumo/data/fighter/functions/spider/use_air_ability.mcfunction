##Called when theo uses his air ability

##Scores

##Setting the ability state to inactive
scoreboard players set @s ability_state 2

##Showing how long until the ability can be used again
scoreboard players set @s ability_timer 200

##Clarifying it as an air ability (0 is ground, 1 is air)
scoreboard players set @s ability_type 1
##Effects

##Adding tags (used_ability is just so that it doesn't use yourself) (copy_id is to give the entity the damaged tag)
tag @s add used_ability

tag @s add copy_id


##Setting calculate to act as a raycast distance limit

scoreboard players set @s calculate 200

##Calling function of ability
execute anchored eyes run function fighter:spider/raycast

execute store result score $calculate calculate run data get entity @e[type=marker,tag=spider_marker,limit=1] Pos[1]
execute store result score @s calculate run data get entity @s Pos[1]



##If someone got hit, explode behind player
execute if entity @s[tag=hit_raycast] positioned ~ ~.5 ~ run summon creeper ^ ^ ^-1 {ExplosionRadius:3,Invulnerable:1b,Fuse:0s,Tags:["needs_copied_id"]}

execute if entity @s[tag=hit_raycast] anchored eyes positioned ~ ~-4 ~ run summon creeper ^ ^ ^ {ExplosionRadius:3,Invulnerable:1b,Fuse:0s,Tags:["needs_copied_id"]}

##If we're below the marker, put a creeper underneath us
execute if entity @e[type=marker,tag=spider_marker] if score @s calculate < $calculate calculate run summon creeper ~ ~-3 ~ {ExplosionRadius:3,Invulnerable:1b,Fuse:0s,Tags:["needs_copied_id"]}
execute if entity @e[type=marker,tag=spider_marker] if score @s calculate < $calculate calculate run summon creeper ~ ~-3 ~ {ExplosionRadius:3,Invulnerable:1b,Fuse:0s,Tags:["needs_copied_id"]}
execute if entity @e[type=marker,tag=spider_marker] if score @s calculate < $calculate calculate run summon creeper ~ ~-5 ~ {ExplosionRadius:3,Invulnerable:1b,Fuse:0s,Tags:["needs_copied_id"]}
execute if entity @e[type=marker,tag=spider_marker] if score @s calculate < $calculate calculate run summon creeper ~ ~-5 ~ {ExplosionRadius:3,Invulnerable:1b,Fuse:0s,Tags:["needs_copied_id"]}
execute if entity @e[type=marker,tag=spider_marker] if score @s calculate < $calculate calculate run effect give @s levitation 1 40 true


kill @e[type=marker,tag=spider_marker]

##If someone got hit, give ourselves slow falling
scoreboard players set @s[tag=hit_raycast] extra_jump_time 5
effect give @s[tag=hit_raycast] slow_falling 1 255 true


execute as @e[type=creeper,tag=needs_copied_id] at @s run function game:give_entity_id


##Removing tags
tag @s remove copy_id
tag @s remove used_ability
tag @a remove hit_raycast


##Particles



##Tellraw
tellraw @s[tag=!no_ability_msg] [{"text":"--------------------------","color":"white"},{"text":"\nAir Ability: ","color":"dark_aqua","bold":true},{"text":"Web Grapple\n","color":"aqua"},{"text":"(Hover for description.)\n","color":"#bd9b4b","italic":true,"hoverEvent":{"action":"show_text","value":"Fires a grappling hook laser that hooks and pulls you towards your target."}},{"text":"--------------------------","color":"white"}]


##Sounds
playsound minecraft:entity.elder_guardian.hurt master @a ~ ~ ~ 1 1.5