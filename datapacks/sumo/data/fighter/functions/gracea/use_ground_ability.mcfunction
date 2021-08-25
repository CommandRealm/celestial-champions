##Called when gracea uses his ground ability

##Scores

##Setting the ability state to active
scoreboard players set @s ability_state 1

##Showing how long the ability lasts for
scoreboard players set @s ability_timer 80

##Clarifying it as a ground ability (0 is ground, 1 is air)
scoreboard players set @s ability_type 0

##Quartz pillars
execute anchored eyes positioned ^ ^ ^2 positioned ~ ~1.5 ~ run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["needs_death_timer","on_death_timer","die"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,NoAI:1b,Color:0,Silent:1b,Tags:["needs_death_timer","on_death_timer","die"],ActiveEffects:[{Id:14b,Duration:1000000,Amplifier:1,ShowParticles:false}]}]}
execute anchored eyes positioned ^ ^ ^2 positioned ~ ~1.5 ~ run summon area_effect_cloud ~ ~ ~ {Duration:100000,Tags:["die","needs_death_timer","on_death_timer"],Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:1,BlockState:{Name:"minecraft:quartz_pillar"},Tags:["gracea_block","needs_death_timer","on_death_timer","die"],DropItem:0}]}

execute anchored eyes positioned ^1 ^ ^2 positioned ~ ~1.5 ~ run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["needs_death_timer","on_death_timer","die"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,NoAI:1b,Color:0,Silent:1b,Tags:["needs_death_timer","on_death_timer","die"],ActiveEffects:[{Id:14b,Duration:1000000,Amplifier:1,ShowParticles:false}]}]}
execute anchored eyes positioned ^1 ^ ^2 positioned ~ ~1.5 ~ run summon area_effect_cloud ~ ~ ~ {Duration:100000,Tags:["die","needs_death_timer","on_death_timer"],Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:1,BlockState:{Name:"minecraft:quartz_pillar"},Tags:["gracea_block","needs_death_timer","on_death_timer","die"],DropItem:0}]}

execute anchored eyes positioned ^-1 ^ ^2 positioned ~ ~1.5 ~ run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["needs_death_timer","on_death_timer","die"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,NoAI:1b,Color:0,Silent:1b,Tags:["needs_death_timer","on_death_timer","die"],ActiveEffects:[{Id:14b,Duration:1000000,Amplifier:1,ShowParticles:false}]}]}
execute anchored eyes positioned ^-1 ^ ^2 positioned ~ ~1.5 ~ run summon area_effect_cloud ~ ~ ~ {Duration:100000,Tags:["die","needs_death_timer","on_death_timer"],Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:1,BlockState:{Name:"minecraft:quartz_pillar"},Tags:["gracea_block","needs_death_timer","on_death_timer","die"],DropItem:0}]}

execute anchored eyes positioned ^-2 ^ ^2 positioned ~ ~1.5 ~ run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["needs_death_timer","on_death_timer","die"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,NoAI:1b,Color:0,Silent:1b,Tags:["needs_death_timer","on_death_timer","die"],ActiveEffects:[{Id:14b,Duration:1000000,Amplifier:1,ShowParticles:false}]}]}
execute anchored eyes positioned ^-2 ^ ^2 positioned ~ ~1.5 ~ run summon area_effect_cloud ~ ~ ~ {Duration:100000,Tags:["die","needs_death_timer","on_death_timer"],Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:1,BlockState:{Name:"minecraft:quartz_pillar"},Tags:["gracea_block","needs_death_timer","on_death_timer","die"],DropItem:0}]}

execute anchored eyes positioned ^2 ^ ^2 positioned ~ ~1.5 ~ run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["needs_death_timer","on_death_timer","die"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,NoAI:1b,Color:0,Silent:1b,Tags:["needs_death_timer","on_death_timer","die"],ActiveEffects:[{Id:14b,Duration:1000000,Amplifier:1,ShowParticles:false}]}]}
execute anchored eyes positioned ^2 ^ ^2 positioned ~ ~1.5 ~ run summon area_effect_cloud ~ ~ ~ {Duration:100000,Tags:["die","needs_death_timer","on_death_timer"],Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:1,BlockState:{Name:"minecraft:quartz_pillar"},Tags:["gracea_block","needs_death_timer","on_death_timer","die"],DropItem:0}]}

##Second top layer
execute anchored eyes positioned ^ ^ ^2 positioned ~ ~1.5 ~ run summon armor_stand ~ ~-1 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["needs_death_timer","on_death_timer","die"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,NoAI:1b,Color:0,Silent:1b,Tags:["needs_death_timer","on_death_timer","die"],ActiveEffects:[{Id:14b,Duration:1000000,Amplifier:1,ShowParticles:false}]}]}
execute anchored eyes positioned ^ ^ ^2 positioned ~ ~1.5 ~ run summon area_effect_cloud ~ ~-1 ~ {Duration:100000,Tags:["die","needs_death_timer","on_death_timer"],Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:1,BlockState:{Name:"minecraft:quartz_pillar"},Tags:["gracea_block","needs_death_timer","on_death_timer","die"],DropItem:0}]}

execute anchored eyes positioned ^1 ^ ^2 positioned ~ ~1.5 ~ run summon armor_stand ~ ~-1 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["needs_death_timer","on_death_timer","die"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,NoAI:1b,Color:0,Silent:1b,Tags:["needs_death_timer","on_death_timer","die"],ActiveEffects:[{Id:14b,Duration:1000000,Amplifier:1,ShowParticles:false}]}]}
execute anchored eyes positioned ^1 ^ ^2 positioned ~ ~1.5 ~ run summon area_effect_cloud ~ ~-1 ~ {Duration:100000,Tags:["die","needs_death_timer","on_death_timer"],Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:1,BlockState:{Name:"minecraft:quartz_pillar"},Tags:["gracea_block","needs_death_timer","on_death_timer","die"],DropItem:0}]}

execute anchored eyes positioned ^-1 ^ ^2 positioned ~ ~1.5 ~ run summon armor_stand ~ ~-1 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["needs_death_timer","on_death_timer","die"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,NoAI:1b,Color:0,Silent:1b,Tags:["needs_death_timer","on_death_timer","die"],ActiveEffects:[{Id:14b,Duration:1000000,Amplifier:1,ShowParticles:false}]}]}
execute anchored eyes positioned ^-1 ^ ^2 positioned ~ ~1.5 ~ run summon area_effect_cloud ~ ~-1 ~ {Duration:100000,Tags:["die","needs_death_timer","on_death_timer"],Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:1,BlockState:{Name:"minecraft:quartz_pillar"},Tags:["gracea_block","needs_death_timer","on_death_timer","die"],DropItem:0}]}

execute anchored eyes positioned ^-2 ^ ^2 positioned ~ ~1.5 ~ run summon armor_stand ~ ~-1 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["needs_death_timer","on_death_timer","die"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,NoAI:1b,Color:0,Silent:1b,Tags:["needs_death_timer","on_death_timer","die"],ActiveEffects:[{Id:14b,Duration:1000000,Amplifier:1,ShowParticles:false}]}]}
execute anchored eyes positioned ^-2 ^ ^2 positioned ~ ~1.5 ~ run summon area_effect_cloud ~ ~-1 ~ {Duration:100000,Tags:["die","needs_death_timer","on_death_timer"],Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:1,BlockState:{Name:"minecraft:quartz_bricks"},Tags:["gracea_block","needs_death_timer","on_death_timer","die"],DropItem:0}]}

execute anchored eyes positioned ^2 ^ ^2 positioned ~ ~1.5 ~ run summon armor_stand ~ ~-1 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["needs_death_timer","on_death_timer","die"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,NoAI:1b,Color:0,Silent:1b,Tags:["needs_death_timer","on_death_timer","die"],ActiveEffects:[{Id:14b,Duration:1000000,Amplifier:1,ShowParticles:false}]}]}
execute anchored eyes positioned ^2 ^ ^2 positioned ~ ~1.5 ~ run summon area_effect_cloud ~ ~-1 ~ {Duration:100000,Tags:["die","needs_death_timer","on_death_timer"],Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:1,BlockState:{Name:"minecraft:quartz_bricks"},Tags:["gracea_block","needs_death_timer","on_death_timer","die"],DropItem:0}]}

##Lower bricks
execute anchored eyes positioned ^ ^ ^2 positioned ~ ~0.5 ~ run summon armor_stand ~ ~-1 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["needs_death_timer","on_death_timer","die"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,NoAI:1b,Color:0,Silent:1b,Tags:["needs_death_timer","on_death_timer","die"],ActiveEffects:[{Id:14b,Duration:1000000,Amplifier:1,ShowParticles:false}]}]}
execute anchored eyes positioned ^ ^ ^2 positioned ~ ~0.5 ~ run summon area_effect_cloud ~ ~-1 ~ {Duration:100000,Tags:["die","needs_death_timer","on_death_timer"],Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:1,BlockState:{Name:"minecraft:quartz_bricks"},Tags:["gracea_block","needs_death_timer","on_death_timer","die"],DropItem:0}]}

execute anchored eyes positioned ^1 ^ ^2 positioned ~ ~0.5 ~ run summon armor_stand ~ ~-1 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["needs_death_timer","on_death_timer","die"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,NoAI:1b,Color:0,Silent:1b,Tags:["needs_death_timer","on_death_timer","die"],ActiveEffects:[{Id:14b,Duration:1000000,Amplifier:1,ShowParticles:false}]}]}
execute anchored eyes positioned ^1 ^ ^2 positioned ~ ~0.5 ~ run summon area_effect_cloud ~ ~-1 ~ {Duration:100000,Tags:["die","needs_death_timer","on_death_timer"],Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:1,BlockState:{Name:"minecraft:quartz_bricks"},Tags:["gracea_block","needs_death_timer","on_death_timer","die"],DropItem:0}]}

execute anchored eyes positioned ^-1 ^ ^2 positioned ~ ~0.5 ~ run summon armor_stand ~ ~-1 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["needs_death_timer","on_death_timer","die"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,NoAI:1b,Color:0,Silent:1b,Tags:["needs_death_timer","on_death_timer","die"],ActiveEffects:[{Id:14b,Duration:1000000,Amplifier:1,ShowParticles:false}]}]}
execute anchored eyes positioned ^-1 ^ ^2 positioned ~ ~0.5 ~ run summon area_effect_cloud ~ ~-1 ~ {Duration:100000,Tags:["die","needs_death_timer","on_death_timer"],Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:1,BlockState:{Name:"minecraft:quartz_bricks"},Tags:["gracea_block","needs_death_timer","on_death_timer","die"],DropItem:0}]}

execute anchored eyes positioned ^-2 ^ ^2 positioned ~ ~0.5 ~ run summon armor_stand ~ ~-1 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["needs_death_timer","on_death_timer","die"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,NoAI:1b,Color:0,Silent:1b,Tags:["needs_death_timer","on_death_timer","die"],ActiveEffects:[{Id:14b,Duration:1000000,Amplifier:1,ShowParticles:false}]}]}
execute anchored eyes positioned ^-2 ^ ^2 positioned ~ ~0.5 ~ run summon area_effect_cloud ~ ~-1 ~ {Duration:100000,Tags:["die","needs_death_timer","on_death_timer"],Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:1,BlockState:{Name:"minecraft:quartz_bricks"},Tags:["gracea_block","needs_death_timer","on_death_timer","die"],DropItem:0}]}

execute anchored eyes positioned ^2 ^ ^2 positioned ~ ~0.5 ~ run summon armor_stand ~ ~-1 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["needs_death_timer","on_death_timer","die"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,NoAI:1b,Color:0,Silent:1b,Tags:["needs_death_timer","on_death_timer","die"],ActiveEffects:[{Id:14b,Duration:1000000,Amplifier:1,ShowParticles:false}]}]}
execute anchored eyes positioned ^2 ^ ^2 positioned ~ ~0.5 ~ run summon area_effect_cloud ~ ~-1 ~ {Duration:100000,Tags:["die","needs_death_timer","on_death_timer"],Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:1,BlockState:{Name:"minecraft:quartz_bricks"},Tags:["gracea_block","needs_death_timer","on_death_timer","die"],DropItem:0}]}


##Lowerer bricks
execute anchored eyes positioned ^ ^ ^2 positioned ~ ~-0.5 ~ run summon armor_stand ~ ~-1 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["needs_death_timer","on_death_timer","die"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,NoAI:1b,Color:0,Silent:1b,Tags:["needs_death_timer","on_death_timer","die"],ActiveEffects:[{Id:14b,Duration:1000000,Amplifier:1,ShowParticles:false}]}]}
execute anchored eyes positioned ^ ^ ^2 positioned ~ ~-0.5 ~ run summon area_effect_cloud ~ ~-1 ~ {Duration:100000,Tags:["die","needs_death_timer","on_death_timer"],Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:1,BlockState:{Name:"minecraft:quartz_bricks"},Tags:["gracea_block","needs_death_timer","on_death_timer","die"],DropItem:0}]}

execute anchored eyes positioned ^1 ^ ^2 positioned ~ ~-0.5 ~ run summon armor_stand ~ ~-1 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["needs_death_timer","on_death_timer","die"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,NoAI:1b,Color:0,Silent:1b,Tags:["needs_death_timer","on_death_timer","die"],ActiveEffects:[{Id:14b,Duration:1000000,Amplifier:1,ShowParticles:false}]}]}
execute anchored eyes positioned ^1 ^ ^2 positioned ~ ~-0.5 ~ run summon area_effect_cloud ~ ~-1 ~ {Duration:100000,Tags:["die","needs_death_timer","on_death_timer"],Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:1,BlockState:{Name:"minecraft:quartz_bricks"},Tags:["gracea_block","needs_death_timer","on_death_timer","die"],DropItem:0}]}

execute anchored eyes positioned ^-1 ^ ^2 positioned ~ ~-0.5 ~ run summon armor_stand ~ ~-1 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["needs_death_timer","on_death_timer","die"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,NoAI:1b,Color:0,Silent:1b,Tags:["needs_death_timer","on_death_timer","die"],ActiveEffects:[{Id:14b,Duration:1000000,Amplifier:1,ShowParticles:false}]}]}
execute anchored eyes positioned ^-1 ^ ^2 positioned ~ ~-0.5 ~ run summon area_effect_cloud ~ ~-1 ~ {Duration:100000,Tags:["die","needs_death_timer","on_death_timer"],Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:1,BlockState:{Name:"minecraft:quartz_bricks"},Tags:["gracea_block","needs_death_timer","on_death_timer","die"],DropItem:0}]}

execute anchored eyes positioned ^-2 ^ ^2 positioned ~ ~-0.5 ~ run summon armor_stand ~ ~-1 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["needs_death_timer","on_death_timer","die"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,NoAI:1b,Color:0,Silent:1b,Tags:["needs_death_timer","on_death_timer","die"],ActiveEffects:[{Id:14b,Duration:1000000,Amplifier:1,ShowParticles:false}]}]}
execute anchored eyes positioned ^-2 ^ ^2 positioned ~ ~-0.5 ~ run summon area_effect_cloud ~ ~-1 ~ {Duration:100000,Tags:["die","needs_death_timer","on_death_timer"],Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:1,BlockState:{Name:"minecraft:quartz_bricks"},Tags:["gracea_block","needs_death_timer","on_death_timer","die"],DropItem:0}]}

execute anchored eyes positioned ^2 ^ ^2 positioned ~ ~-0.5 ~ run summon armor_stand ~ ~-1 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["needs_death_timer","on_death_timer","die"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,NoAI:1b,Color:0,Silent:1b,Tags:["needs_death_timer","on_death_timer","die"],ActiveEffects:[{Id:14b,Duration:1000000,Amplifier:1,ShowParticles:false}]}]}
execute anchored eyes positioned ^2 ^ ^2 positioned ~ ~-0.5 ~ run summon area_effect_cloud ~ ~-1 ~ {Duration:100000,Tags:["die","needs_death_timer","on_death_timer"],Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:1,BlockState:{Name:"minecraft:quartz_bricks"},Tags:["gracea_block","needs_death_timer","on_death_timer","die"],DropItem:0}]}

##Top
execute anchored eyes positioned ^ ^ ^2 positioned ~ ~1.5 ~ run summon armor_stand ~ ~1 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["needs_death_timer","on_death_timer","die"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,NoAI:1b,Color:0,Silent:1b,Tags:["needs_death_timer","on_death_timer","die"],ActiveEffects:[{Id:14b,Duration:1000000,Amplifier:1,ShowParticles:false}]}]}
execute anchored eyes positioned ^ ^ ^2 positioned ~ ~1.5 ~ run summon area_effect_cloud ~ ~1 ~ {Duration:100000,Tags:["die","needs_death_timer","on_death_timer"],Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:1,BlockState:{Name:"minecraft:chiseled_quartz_block"},Tags:["gracea_block","needs_death_timer","on_death_timer","die"],DropItem:0}]}

execute anchored eyes positioned ^1 ^ ^2 positioned ~ ~1.5 ~ run summon armor_stand ~ ~0.5 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["needs_death_timer","on_death_timer","die"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,NoAI:1b,Color:0,Silent:1b,Tags:["needs_death_timer","on_death_timer","die"],ActiveEffects:[{Id:14b,Duration:1000000,Amplifier:1,ShowParticles:false}]}]}
execute anchored eyes positioned ^1 ^ ^2 positioned ~ ~1.5 ~ run summon area_effect_cloud ~ ~1 ~ {Duration:100000,Tags:["die","needs_death_timer","on_death_timer"],Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:1,BlockState:{Name:"minecraft:smooth_quartz_slab"},Tags:["gracea_block","needs_death_timer","on_death_timer","die"],DropItem:0}]}

execute anchored eyes positioned ^-1 ^ ^2 positioned ~ ~1.5 ~ run summon armor_stand ~ ~0.5 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["needs_death_timer","on_death_timer","die"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,NoAI:1b,Color:0,Silent:1b,Tags:["needs_death_timer","on_death_timer","die"],ActiveEffects:[{Id:14b,Duration:1000000,Amplifier:1,ShowParticles:false}]}]}
execute anchored eyes positioned ^-1 ^ ^2 positioned ~ ~1.5 ~ run summon area_effect_cloud ~ ~1 ~ {Duration:100000,Tags:["die","needs_death_timer","on_death_timer"],Passengers:[{id:"minecraft:falling_block",NoGravity:1b,Time:1,BlockState:{Name:"minecraft:smooth_quartz_slab"},Tags:["gracea_block","needs_death_timer","on_death_timer","die"],DropItem:0}]}


##Death timer updates
scoreboard players set @e[type=armor_stand,tag=needs_death_timer] death_timer 80
scoreboard players set @e[type=shulker,tag=needs_death_timer] death_timer 81
scoreboard players set @e[type=falling_block,tag=needs_death_timer] death_timer 80
scoreboard players set @e[type=area_effect_cloud,tag=needs_death_timer] death_timer 80

##Tag removals
tag @e[type=armor_stand,tag=needs_death_timer] remove needs_death_timer
tag @e[type=shulker,tag=needs_death_timer] remove needs_death_timer
tag @e[type=falling_block,tag=needs_death_timer] remove needs_death_timer
tag @e[type=area_effect_cloud,tag=needs_death_timer] remove needs_death_timer

##Tellraw
tellraw @s[tag=!no_ability_msg] [{"text":"--------------------------","color":"aqua"},{"text":"\nGround Ability: ","color":"gray","bold":true},{"text":"Beautiful Barricade\n","color":"white"},{"text":"(Hover for description.)\n","color":"#bd9b4b","italic":true,"hoverEvent":{"action":"show_text","value":"Places an impenetrable wall that lasts 4 seconds."}},{"text":"--------------------------","color":"aqua"}]


##Sounds
playsound minecraft:block.anvil.use master @a ~ ~ ~ 1 1
playsound minecraft:block.anvil.use master @a ~ ~ ~ 1 1.25

