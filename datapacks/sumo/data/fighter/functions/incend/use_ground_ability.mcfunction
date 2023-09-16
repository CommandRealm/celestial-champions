##Called when theo uses his ground ability

##Scores

##Setting the ability state to active
scoreboard players set @s ability_state 1

##Showing how long the ability lasts for
scoreboard players set @s ability_timer 150

##Clarifying it as a ground ability (0 is ground, 1 is air)
scoreboard players set @s ability_type 0

##Summon explosive (randomized)

##Setting modulo score
scoreboard players set $mod random 13
function random:random
##execute if score $rand random matches 0 run summon skeleton ~ ~ ~ {Silent:1b,Invulnerable:0b,ActiveEffects:[{Id:18b,Amplifier:255,Duration:1000,ShowParticles:false},{Id:28b,Amplifier:255,Duration:1000,ShowParticles:false}],Attributes:[{Name:"generic.movement_speed",Base:0},{Name:"generic.follow_range",Base:0},{Name:"generic.attack_damage",Base:0}],Tags:["only_explode_near_players","needs_copied_id","incend_ground_explosive","incend_tnt","needs_motion","on_death_timer","needs_death_timer"],ArmorItems:[{id:"minecraft:leather_boots",Count:1,tag:{display:{color:16730112}}},{id:"minecraft:leather_leggings",Count:1,tag:{display:{color:16777215}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16730112}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1031853657,919423726,-2059367205,1418649205],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2FmNTk3NzZmMmYwMzQxMmM3YjU5NDdhNjNhMGNmMjgzZDUxZmU2NWFjNmRmN2YyZjg4MmUwODM0NDU2NWU5In19fQ=="}]}}}}]}
execute if score $rand random matches 0..1 run summon sheep ~ ~ ~ {Silent:1b,Invulnerable:0b,ActiveEffects:[{Id:18b,Amplifier:255,Duration:1000,ShowParticles:false},{Id:28b,Amplifier:255,Duration:1000,ShowParticles:false}],Attributes:[{Name:"generic.movement_speed",Base:0},{Name:"generic.follow_range",Base:0},{Name:"generic.attack_damage",Base:0}],Tags:["only_explode_near_players","needs_copied_id","incend_ground_explosive","incend_tnt","needs_motion","on_death_timer","needs_death_timer"]}
execute if score $rand random matches 2..3 run summon cow ~ ~ ~ {Silent:1b,Invulnerable:0b,ActiveEffects:[{Id:18b,Amplifier:255,Duration:1000,ShowParticles:false},{Id:28b,Amplifier:255,Duration:1000,ShowParticles:false}],Attributes:[{Name:"generic.movement_speed",Base:0},{Name:"generic.follow_range",Base:0},{Name:"generic.attack_damage",Base:0}],Tags:["only_explode_near_players","needs_copied_id","incend_ground_explosive","incend_tnt","needs_motion","on_death_timer","needs_death_timer"]}
execute if score $rand random matches 4..5 run summon polar_bear ~ ~ ~ {Silent:1b,Invulnerable:0b,ActiveEffects:[{Id:18b,Amplifier:255,Duration:1000,ShowParticles:false},{Id:28b,Amplifier:255,Duration:1000,ShowParticles:false}],Attributes:[{Name:"generic.movement_speed",Base:0},{Name:"generic.follow_range",Base:0},{Name:"generic.attack_damage",Base:0}],Tags:["only_explode_near_players","needs_copied_id","incend_ground_explosive","incend_tnt","needs_motion","on_death_timer","needs_death_timer"]}
execute if score $rand random matches 6..7 run summon panda ~ ~ ~ {Silent:1b,Invulnerable:0b,ActiveEffects:[{Id:18b,Amplifier:255,Duration:1000,ShowParticles:false},{Id:28b,Amplifier:255,Duration:1000,ShowParticles:false}],Attributes:[{Name:"generic.movement_speed",Base:0},{Name:"generic.follow_range",Base:0},{Name:"generic.attack_damage",Base:0}],Tags:["only_explode_near_players","needs_copied_id","incend_ground_explosive","incend_tnt","needs_motion","on_death_timer","needs_death_timer"]}
execute if score $rand random matches 8..9 run summon slime ~ ~ ~ {Size:2,Silent:1b,Invulnerable:0b,ActiveEffects:[{Id:18b,Amplifier:255,Duration:1000,ShowParticles:false},{Id:28b,Amplifier:255,Duration:1000,ShowParticles:false}],Attributes:[{Name:"generic.movement_speed",Base:0},{Name:"generic.follow_range",Base:0},{Name:"generic.attack_damage",Base:0}],Tags:["only_explode_near_players","needs_copied_id","incend_ground_explosive","incend_tnt","needs_motion","on_death_timer","needs_death_timer"]}
execute if score $rand random matches 10 run summon sheep ~ ~ ~ {CustomName:'[{"translate":"jeb_"}]',Silent:1b,Invulnerable:0b,ActiveEffects:[{Id:18b,Amplifier:255,Duration:1000,ShowParticles:false},{Id:28b,Amplifier:255,Duration:1000,ShowParticles:false}],Attributes:[{Name:"generic.movement_speed",Base:0},{Name:"generic.follow_range",Base:0},{Name:"generic.attack_damage",Base:0}],Tags:["only_explode_near_players","needs_copied_id","incend_ground_explosive","incend_tnt","needs_motion","on_death_timer","needs_death_timer"]}
execute if score $rand random matches 11 run summon mooshroom ~ ~ ~ {Silent:1b,Invulnerable:0b,ActiveEffects:[{Id:18b,Amplifier:255,Duration:1000,ShowParticles:false},{Id:28b,Amplifier:255,Duration:1000,ShowParticles:false}],Attributes:[{Name:"generic.movement_speed",Base:0},{Name:"generic.follow_range",Base:0},{Name:"generic.attack_damage",Base:0}],Tags:["only_explode_near_players","needs_copied_id","incend_ground_explosive","incend_tnt","needs_motion","on_death_timer","needs_death_timer"]}
execute if score $rand random matches 12 run summon panda ~ ~ ~ {MainGene:"brown",HiddenGene:"brown",Silent:1b,Invulnerable:0b,ActiveEffects:[{Id:18b,Amplifier:255,Duration:1000,ShowParticles:false},{Id:28b,Amplifier:255,Duration:1000,ShowParticles:false}],Attributes:[{Name:"generic.movement_speed",Base:0},{Name:"generic.follow_range",Base:0},{Name:"generic.attack_damage",Base:0}],Tags:["only_explode_near_players","needs_copied_id","incend_ground_explosive","incend_tnt","needs_motion","on_death_timer","needs_death_timer"]}

##{MainGene:"brown",HiddenGene:"brown"}
##Giving TNT data

##Id, tag, and team
team join no_collision @e[tag=incend_ground_explosive,tag=needs_copied_id,sort=nearest,limit=1]
scoreboard players operation @e[tag=incend_ground_explosive,tag=needs_copied_id,sort=nearest,limit=1] id = @s id
execute as @e[tag=incend_ground_explosive,tag=needs_copied_id,sort=nearest,limit=1] at @s run function game:give_entity_id

data modify entity @e[tag=incend_ground_explosive,tag=needs_motion,sort=nearest,limit=1] Motion[0] set from entity @s Motion[0]
data modify entity @e[tag=incend_ground_explosive,tag=needs_motion,sort=nearest,limit=1] Motion[1] set from entity @s Motion[1]
data modify entity @e[tag=incend_ground_explosive,tag=needs_motion,sort=nearest,limit=1] Motion[2] set from entity @s Motion[2]

scoreboard players set @e[tag=incend_ground_explosive,tag=needs_death_timer,sort=nearest,limit=1] death_timer 150


##Effects
effect give @e[tag=incend_ground_explosive,tag=needs_death_timer,sort=nearest,limit=1] weakness 10000 255 true
effect give @e[tag=incend_ground_explosive,tag=needs_death_timer,sort=nearest,limit=1] resistance 10000 255 true

##Removing entity tags
tag @e[tag=incend_ground_explosive] remove needs_motion
tag @e[tag=incend_ground_explosive] remove needs_copied_id
tag @e[tag=incend_ground_explosive,tag=needs_death_timer,sort=nearest,limit=1] remove needs_death_timer

##Tellraw
tellraw @s[tag=!no_ability_msg] [{"translate":"--------------------------","color":"aqua"},{"translate":"\nGround Ability: ","color":"gray","bold":true},{"translate":"Boom Doom\n","color":"white"},{"translate":"(Hover for description.)\n","color":"#bd9b4b","italic":true,"hoverEvent":{"action":"show_text","value":{"translate":"Summons a random mob for 7.5 seconds that explodes near players that dropping your item again can recall."}}},{"translate":"--------------------------","color":"aqua"}]


##Sounds
playsound minecraft:entity.creeper.death master @a ~ ~ ~ 1 0
playsound minecraft:entity.creeper.death master @a ~ ~ ~ 1 0.75
