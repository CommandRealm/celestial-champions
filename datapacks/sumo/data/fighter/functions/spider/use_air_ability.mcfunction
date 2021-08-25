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


##Setting calculate to act as a raycast distance limit

scoreboard players set @s calculate 200

##Calling function of ability
execute anchored eyes run function fighter:spider/raycast


##If someone got hit, explode behind player
execute if entity @a[tag=is_fighter,gamemode=adventure,tag=hit_by_raycast] positioned ~ ~.5 ~ run summon creeper ^ ^ ^-1 {ExplosionRadius:3,Invulnerable:1b,Fuse:0s,Tags:["needs_copied_id"]}
execute if entity @a[tag=is_fighter,gamemode=adventure,tag=hit_by_raycast] positioned ~ ~.5 ~ run summon creeper ^ ^ ^-2 {ExplosionRadius:3,Invulnerable:1b,Fuse:0s,Tags:["needs_copied_id"]}
execute if entity @a[tag=is_fighter,gamemode=adventure,tag=hit_by_raycast] anchored eyes positioned ~ ~-4 ~ run summon creeper ^ ^ ^ {ExplosionRadius:3,Invulnerable:1b,Fuse:0s,Tags:["needs_copied_id"]}
execute if entity @a[tag=is_fighter,gamemode=adventure,tag=hit_by_raycast] anchored eyes positioned ~ ~-4 ~ run summon creeper ^ ^ ^ {ExplosionRadius:3,Invulnerable:1b,Fuse:0s,Tags:["needs_copied_id"]}
execute if entity @a[tag=is_fighter,gamemode=adventure,tag=hit_by_raycast] anchored eyes positioned ~ ~-4 ~ run summon creeper ^ ^ ^ {ExplosionRadius:3,Invulnerable:1b,Fuse:0s,Tags:["needs_copied_id"]}

##If someone got hit, give ourselves slow falling
execute if entity @a[tag=is_fighter,gamemode=adventure,tag=hit_by_raycast] run effect give @s slow_falling 1 255 true

##Stuns:
scoreboard players set @a[tag=is_fighter,gamemode=adventure,tag=hit_by_raycast] stun 80
execute as @a[tag=is_fighter,gamemode=adventure,tag=hit_by_raycast] at @s run function fighter:stun/start_stun

execute as @e[type=creeper,tag=needs_copied_id] at @s run function game:give_entity_id


##Removing tags
tag @s remove copy_id
tag @s remove used_ability
tag @a remove hit_by_raycast


##Particles



##Tellraw
tellraw @s[tag=!no_ability_msg] [{"text":"--------------------------","color":"white"},{"text":"\nAir Ability: ","color":"dark_aqua","bold":true},{"text":"Web Grapple\n","color":"aqua"},{"text":"(Hover for description.)\n","color":"#bd9b4b","italic":true,"hoverEvent":{"action":"show_text","value":"Fire a laser that stuns the opponent for 2 seconds and launches the user towards the opponent."}},{"text":"--------------------------","color":"white"}]


##Sounds
playsound minecraft:entity.elder_guardian.hurt master @a ~ ~ ~ 1 1.5