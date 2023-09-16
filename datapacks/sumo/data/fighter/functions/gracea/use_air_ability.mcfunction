##Called when gracea uses his air ability

##Scores

##Setting the ability state to inactive
scoreboard players set @s ability_state 1

##Showing how long until the ability can be used again
scoreboard players set @s ability_timer 60

##Clarifying it as an air ability (0 is ground, 1 is air)
scoreboard players set @s ability_type 1


##Summons

##Center
summon armor_stand ~ ~-1.25 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["needs_death_timer","on_death_timer","die"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,NoAI:1b,Color:0,Silent:1b,Tags:["needs_death_timer","on_death_timer","die"],ActiveEffects:[{Id:14b,Duration:1000000,Amplifier:1,ShowParticles:false}]}]}
summon area_effect_cloud ~ ~-1.25 ~ {Duration:100000,Tags:["die","needs_death_timer","on_death_timer"],Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:1,BlockState:{Name:"minecraft:oak_log"},Tags:["gracea_block","needs_death_timer","on_death_timer","die"],DropItem:0}]}


##oak planks
summon armor_stand ~1 ~-1.25 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["needs_death_timer","on_death_timer","die"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,NoAI:1b,Color:0,Silent:1b,Tags:["needs_death_timer","on_death_timer","die"],ActiveEffects:[{Id:14b,Duration:1000000,Amplifier:1,ShowParticles:false}]}]}
summon armor_stand ~-1 ~-1.25 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["needs_death_timer","on_death_timer","die"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,NoAI:1b,Color:0,Silent:1b,Tags:["needs_death_timer","on_death_timer","die"],ActiveEffects:[{Id:14b,Duration:1000000,Amplifier:1,ShowParticles:false}]}]}
summon armor_stand ~ ~-1.25 ~1 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["needs_death_timer","on_death_timer","die"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,NoAI:1b,Color:0,Silent:1b,Tags:["needs_death_timer","on_death_timer","die"],ActiveEffects:[{Id:14b,Duration:1000000,Amplifier:1,ShowParticles:false}]}]}
summon armor_stand ~ ~-1.25 ~-1 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["needs_death_timer","on_death_timer","die"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,NoAI:1b,Color:0,Silent:1b,Tags:["needs_death_timer","on_death_timer","die"],ActiveEffects:[{Id:14b,Duration:1000000,Amplifier:1,ShowParticles:false}]}]}
summon armor_stand ~1 ~-1.25 ~1 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["needs_death_timer","on_death_timer","die"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,NoAI:1b,Color:0,Silent:1b,Tags:["needs_death_timer","on_death_timer","die"],ActiveEffects:[{Id:14b,Duration:1000000,Amplifier:1,ShowParticles:false}]}]}
summon armor_stand ~1 ~-1.25 ~-1 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["needs_death_timer","on_death_timer","die"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,NoAI:1b,Color:0,Silent:1b,Tags:["needs_death_timer","on_death_timer","die"],ActiveEffects:[{Id:14b,Duration:1000000,Amplifier:1,ShowParticles:false}]}]}
summon armor_stand ~-1 ~-1.25 ~1 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["needs_death_timer","on_death_timer","die"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,NoAI:1b,Color:0,Silent:1b,Tags:["needs_death_timer","on_death_timer","die"],ActiveEffects:[{Id:14b,Duration:1000000,Amplifier:1,ShowParticles:false}]}]}
summon armor_stand ~-1 ~-1.25 ~-1 {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["needs_death_timer","on_death_timer","die"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,NoAI:1b,Color:0,Silent:1b,Tags:["needs_death_timer","on_death_timer","die"],ActiveEffects:[{Id:14b,Duration:1000000,Amplifier:1,ShowParticles:false}]}]}

summon area_effect_cloud ~1 ~-1.25 ~ {Duration:100000,Tags:["die","needs_death_timer","on_death_timer"],Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:1,BlockState:{Name:"minecraft:oak_planks"},Tags:["gracea_block","needs_death_timer","on_death_timer","die"],DropItem:0}]}
summon area_effect_cloud ~-1 ~-1.25 ~ {Duration:100000,Tags:["die","needs_death_timer","on_death_timer"],Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:1,BlockState:{Name:"minecraft:oak_planks"},Tags:["gracea_block","needs_death_timer","on_death_timer","die"],DropItem:0}]}
summon area_effect_cloud ~ ~-1.25 ~1 {Duration:100000,Tags:["die","needs_death_timer","on_death_timer"],Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:1,BlockState:{Name:"minecraft:oak_planks"},Tags:["gracea_block","needs_death_timer","on_death_timer","die"],DropItem:0}]}
summon area_effect_cloud ~ ~-1.25 ~-1 {Duration:100000,Tags:["die","needs_death_timer","on_death_timer"],Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:1,BlockState:{Name:"minecraft:oak_planks"},Tags:["gracea_block","needs_death_timer","on_death_timer","die"],DropItem:0}]}
summon area_effect_cloud ~1 ~-1.25 ~1 {Duration:100000,Tags:["die","needs_death_timer","on_death_timer"],Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:1,BlockState:{Name:"minecraft:oak_planks"},Tags:["gracea_block","needs_death_timer","on_death_timer","die"],DropItem:0}]}
summon area_effect_cloud ~1 ~-1.25 ~-1 {Duration:100000,Tags:["die","needs_death_timer","on_death_timer"],Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:1,BlockState:{Name:"minecraft:oak_planks"},Tags:["gracea_block","needs_death_timer","on_death_timer","die"],DropItem:0}]}
summon area_effect_cloud ~-1 ~-1.25 ~1 {Duration:100000,Tags:["die","needs_death_timer","on_death_timer"],Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:1,BlockState:{Name:"minecraft:oak_planks"},Tags:["gracea_block","needs_death_timer","on_death_timer","die"],DropItem:0}]}
summon area_effect_cloud ~-1 ~-1.25 ~-1 {Duration:100000,Tags:["die","needs_death_timer","on_death_timer"],Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:1,BlockState:{Name:"minecraft:oak_planks"},Tags:["gracea_block","needs_death_timer","on_death_timer","die"],DropItem:0}]}

##Trapdoors
summon area_effect_cloud ~ ~-0.25 ~-1 {Duration:100000,Tags:["die","needs_death_timer","on_death_timer"],Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:1,BlockState:{Name:"minecraft:oak_trapdoor",Properties:{half:"bottom"}},Tags:["gracea_block","needs_death_timer","on_death_timer","die"],DropItem:0}]}
summon area_effect_cloud ~ ~-0.25 ~1 {Duration:100000,Tags:["die","needs_death_timer","on_death_timer"],Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:1,BlockState:{Name:"minecraft:oak_trapdoor",Properties:{half:"bottom"}},Tags:["gracea_block","needs_death_timer","on_death_timer","die"],DropItem:0}]}
summon area_effect_cloud ~1 ~-0.25 ~ {Duration:100000,Tags:["die","needs_death_timer","on_death_timer"],Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:1,BlockState:{Name:"minecraft:oak_trapdoor",Properties:{half:"bottom"}},Tags:["gracea_block","needs_death_timer","on_death_timer","die"],DropItem:0}]}
summon area_effect_cloud ~-1 ~-0.25 ~ {Duration:100000,Tags:["die","needs_death_timer","on_death_timer"],Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:1,BlockState:{Name:"minecraft:oak_trapdoor",Properties:{half:"bottom"}},Tags:["gracea_block","needs_death_timer","on_death_timer","die"],DropItem:0}]}

summon area_effect_cloud ~ ~-2.25 ~-1 {Duration:100000,Tags:["die","needs_death_timer","on_death_timer"],Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:1,BlockState:{Name:"minecraft:oak_trapdoor",Properties:{half:"top"}},Tags:["gracea_block","needs_death_timer","on_death_timer","die"],DropItem:0}]}
summon area_effect_cloud ~ ~-2.25 ~1 {Duration:100000,Tags:["die","needs_death_timer","on_death_timer"],Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:1,BlockState:{Name:"minecraft:oak_trapdoor",Properties:{half:"top"}},Tags:["gracea_block","needs_death_timer","on_death_timer","die"],DropItem:0}]}
summon area_effect_cloud ~1 ~-2.25 ~ {Duration:100000,Tags:["die","needs_death_timer","on_death_timer"],Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:1,BlockState:{Name:"minecraft:oak_trapdoor",Properties:{half:"top"}},Tags:["gracea_block","needs_death_timer","on_death_timer","die"],DropItem:0}]}
summon area_effect_cloud ~-1 ~-2.25 ~ {Duration:100000,Tags:["die","needs_death_timer","on_death_timer"],Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:1,BlockState:{Name:"minecraft:oak_trapdoor",Properties:{half:"top"}},Tags:["gracea_block","needs_death_timer","on_death_timer","die"],DropItem:0}]}

summon area_effect_cloud ~-2 ~-1.25 ~ {Duration:100000,Tags:["die","needs_death_timer","on_death_timer"],Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:1,BlockState:{Name:"minecraft:oak_trapdoor",Properties:{open:"true",facing:"west"}},Tags:["gracea_block","needs_death_timer","on_death_timer","die"],DropItem:0}]}
summon area_effect_cloud ~2 ~-1.25 ~ {Duration:100000,Tags:["die","needs_death_timer","on_death_timer"],Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:1,BlockState:{Name:"minecraft:oak_trapdoor",Properties:{open:"true",facing:"east"}},Tags:["gracea_block","needs_death_timer","on_death_timer","die"],DropItem:0}]}
summon area_effect_cloud ~ ~-1.25 ~2 {Duration:100000,Tags:["die","needs_death_timer","on_death_timer"],Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:1,BlockState:{Name:"minecraft:oak_trapdoor",Properties:{open:"true",facing:"south"}},Tags:["gracea_block","needs_death_timer","on_death_timer","die"],DropItem:0}]}
summon area_effect_cloud ~ ~-1.25 ~-2 {Duration:100000,Tags:["die","needs_death_timer","on_death_timer"],Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:1,BlockState:{Name:"minecraft:oak_trapdoor",Properties:{open:"true",facing:"north"}},Tags:["gracea_block","needs_death_timer","on_death_timer","die"],DropItem:0}]}

##Death timer updates
scoreboard players set @e[type=armor_stand,tag=needs_death_timer] death_timer 60
scoreboard players set @e[type=shulker,tag=needs_death_timer] death_timer 61
scoreboard players set @e[type=falling_block,tag=needs_death_timer] death_timer 60
scoreboard players set @e[type=area_effect_cloud,tag=needs_death_timer] death_timer 60

##Tag removals
tag @e[type=armor_stand,tag=needs_death_timer] remove needs_death_timer
tag @e[type=shulker,tag=needs_death_timer] remove needs_death_timer
tag @e[type=falling_block,tag=needs_death_timer] remove needs_death_timer
tag @e[type=area_effect_cloud,tag=needs_death_timer] remove needs_death_timer

##Particles
particle falling_dust oak_planks ~ ~ ~ 0.25 0 0.25 0 50


##Tellraw
tellraw @s[tag=!no_ability_msg] [{"translate":"--------------------------","color":"white"},{"translate":"\nAir Ability: ","color":"dark_aqua","bold":true},{"translate":"Precise Platform\n","color":"aqua"},{"translate":"(Hover for description.)\n","color":"#bd9b4b","italic":true,"hoverEvent":{"action":"show_text","value":{"translate":"Places a platform below you that lasts 3 seconds (gives grounded status.)"}}},{"translate":"--------------------------","color":"white"}]


##Sounds
playsound minecraft:block.wood.place master @a ~ ~ ~ 1 0.75
playsound minecraft:block.wood.place master @a ~ ~ ~ 1 0
playsound minecraft:block.wood.place master @a ~ ~ ~ 1 1