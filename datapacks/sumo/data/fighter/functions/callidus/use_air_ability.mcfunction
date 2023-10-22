##Called when callidus uses his air ability

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

##zombie
execute anchored eyes run summon zombie ^ ^ ^1 {Invulnerable:1b,Silent:1b,IsBaby:1b,active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:100000,show_particles:false}],ArmorItems:[{},{},{},{id:"minecraft:snowball",Count:1b,tag:{CustomModelData:1}}],Tags:["needs_copied_id","needs_motion","on_death_timer","needs_death_timer","callidus_smoke"]}

execute as @e[type=zombie,tag=needs_motion] at @s run tp @s ~ ~ ~ facing entity @p[tag=used_ability]

execute as @e[type=zombie,tag=needs_copied_id] at @s run scoreboard players operation @s id = @p[tag=used_ability] id

scoreboard players set @e[type=zombie,tag=needs_death_timer] death_timer 100

##Store positions (players)
execute store result score @s pos_x run data get entity @s Pos[0] 100
execute store result score @s pos_y run data get entity @s Pos[1] 100
execute store result score @s pos_z run data get entity @s Pos[2] 100

##Store positions (zombie)
execute as @e[type=zombie,tag=needs_motion] at @s store result score @s pos_x run data get entity @s Pos[0] 100
execute as @e[type=zombie,tag=needs_motion] at @s store result score @s pos_y run data get entity @s Pos[1] 100
execute as @e[type=zombie,tag=needs_motion] at @s store result score @s pos_z run data get entity @s Pos[2] 100


##Removing the 1.75 blocks from anchored eyes
scoreboard players remove @e[type=zombie,tag=needs_motion] pos_y 175

##Subtracting
execute as @e[type=zombie,tag=needs_motion] at @s run scoreboard players operation @s pos_x -= @p[tag=used_ability] pos_x
execute as @e[type=zombie,tag=needs_motion] at @s run scoreboard players operation @s pos_y -= @p[tag=used_ability] pos_y
execute as @e[type=zombie,tag=needs_motion] at @s run scoreboard players operation @s pos_z -= @p[tag=used_ability] pos_z

##Applying motion
execute as @e[type=zombie,tag=needs_motion] at @s store result entity @s Motion[0] double 0.035 run scoreboard players get @s pos_x
execute as @e[type=zombie,tag=needs_motion] at @s store result entity @s Motion[1] double 0.015 run scoreboard players get @s pos_y
execute as @e[type=zombie,tag=needs_motion] at @s store result entity @s Motion[2] double 0.035 run scoreboard players get @s pos_z

##Removing tags
tag @e[type=zombie,tag=needs_motion] remove needs_motion
tag @e[type=zombie,tag=needs_motion] remove needs_death_timer
tag @s remove copy_id
tag @s remove used_ability





##Particles
particle smoke ~ ~ ~ 0.25 0.25 0.25 0.15 50


##Tellraw
tellraw @s[tag=!no_ability_msg] [{"text":"--------------------------","color":"white"},{"text":"\nAir Ability: ","color":"dark_aqua","bold":true},{"text":"Smoke Grenade\n","color":"aqua"},{"text":"(Hover for description.)\n","color":"#bd9b4b","italic":true,"hoverEvent":{"action":"show_text","value":"Throws a blinding smoke grenade that stuns opponents within a small radius for 1 second."}},{"text":"--------------------------","color":"white"}]


##Sounds
playsound minecraft:entity.snowball.throw master @a