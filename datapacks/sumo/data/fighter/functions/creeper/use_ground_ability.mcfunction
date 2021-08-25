##Called when theo uses his ground ability

##Scores

##Setting the ability state to inactive
scoreboard players set @s ability_state 2

##Showing how long the ability lasts for
scoreboard players set @s ability_timer 140

##Clarifying it as a ground ability (0 is ground, 1 is air)
scoreboard players set @s ability_type 0




##Tellraw
tellraw @s[tag=!no_ability_msg] [{"text":"--------------------------","color":"aqua"},{"text":"\nGround Ability: ","color":"gray","bold":true},{"text":"Explosive Toss\n","color":"white"},{"text":"(Hover for description.)\n","color":"#bd9b4b","italic":true,"hoverEvent":{"action":"show_text","value":"Throw a tiny explosive that explodes near a player or when it hits the ground."}},{"text":"--------------------------","color":"aqua"}]


##Sounds
playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1 0.75

##Throwing grenades

tag @s add used_ability


##Called to shoot an arrow with motion
execute anchored eyes positioned ^ ^ ^1 if entity @s[scores={costume=0}] run summon zombie ~ ~ ~ {Silent:1b,Invulnerable:1b,Tags:["needs_motion","needs_copied_id","on_death_timer","needs_death_timer","creeper_grenade"],ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b,tag:{CustomModelData:1}}],ActiveEffects:[{Id:14b,Amplifier:254,Duration:1000,ShowParticles:false},{Id:11b,Amplifier:254,Duration:1000,ShowParticles:false}],Attributes:[{Name:"generic.follow_range",Base:0}]}
execute anchored eyes positioned ^ ^ ^1 if entity @s[scores={costume=1}] run summon zombie ~ ~ ~ {Silent:1b,Invulnerable:1b,Tags:["needs_motion","needs_copied_id","on_death_timer","needs_death_timer","creeper_grenade"],ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b,tag:{CustomModelData:2}}],ActiveEffects:[{Id:14b,Amplifier:254,Duration:1000,ShowParticles:false},{Id:11b,Amplifier:254,Duration:1000,ShowParticles:false}],Attributes:[{Name:"generic.follow_range",Base:0}]}
execute anchored eyes positioned ^ ^ ^1 if entity @s[scores={costume=2}] run summon zombie ~ ~ ~ {Silent:1b,Invulnerable:1b,Tags:["needs_motion","needs_copied_id","on_death_timer","needs_death_timer","creeper_grenade"],ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b,tag:{CustomModelData:3}}],ActiveEffects:[{Id:14b,Amplifier:254,Duration:1000,ShowParticles:false},{Id:11b,Amplifier:254,Duration:1000,ShowParticles:false}],Attributes:[{Name:"generic.follow_range",Base:0}]}



#adding tags
tag @s add copy_id
tag @s add used_ability

##Tp
execute as @e[type=zombie,tag=needs_motion] at @s rotated as @p[tag=used_ability] run tp @s ~ ~ ~ ~ ~

execute as @e[type=zombie,tag=needs_copied_id] at @s run scoreboard players operation @s id = @p[tag=used_ability] id

scoreboard players set @e[type=zombie,tag=needs_death_timer] death_timer 112

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
execute as @e[type=zombie,tag=needs_motion] at @s store result entity @s Motion[0] double 0.045 run scoreboard players get @s pos_x
execute as @e[type=zombie,tag=needs_motion] at @s store result entity @s Motion[1] double 0.045 run scoreboard players get @s pos_y
execute as @e[type=zombie,tag=needs_motion] at @s store result entity @s Motion[2] double 0.045 run scoreboard players get @s pos_z

##Removing tags
tag @e[type=zombie,tag=needs_motion] remove needs_motion
tag @e[type=zombie,tag=needs_motion] remove needs_death_timer
tag @s remove copy_id
tag @s remove used_ability

