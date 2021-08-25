##Kill previous shulker if it exists
execute as @e[type=armor_stand,tag=spider_platform,scores={calculate=0}] at @s run function fighter:entity_death_timer_over
execute as @e[type=shulker,tag=spider_platform,scores={calculate=0}] at @s run function fighter:entity_death_timer_over
execute as @e[type=falling_block,tag=spider_platform,scores={calculate=0}] at @s run function fighter:entity_death_timer_over

##Summoning shulker

summon armor_stand ~ ~-1.25 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Small:1b,Tags:["needs_death_timer","on_death_timer","needs_copied_id","spider_platform","die"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,NoAI:1b,Color:0,Silent:1b,Tags:["needs_death_timer","on_death_timer","needs_copied_id","spider_platform","die"],ActiveEffects:[{Id:14b,Duration:1000000,Amplfier:1,ShowParticles:false}]}]}
summon falling_block ~ ~-1.25 ~ {NoGravity:1b,Time:1,BlockState:{Name:"minecraft:white_wool"},Tags:["needs_death_timer","needs_copied_id","spider_platform","die","on_death_timer"],DropItem:0}

##Copying id to armor stand and shulker
scoreboard players operation @e[type=armor_stand,tag=needs_copied_id,sort=nearest,limit=1] id = @s id
scoreboard players operation @e[type=shulker,tag=needs_copied_id,sort=nearest,limit=1] id = @s id
scoreboard players operation @e[type=falling_block,tag=needs_copied_id,sort=nearest,limit=1] id = @s id

##Joining no collision team
team join collision @e[type=armor_stand,tag=needs_death_timer]
team join collision @e[type=shulker,tag=needs_death_timer]

##Setting death timer
scoreboard players set @e[type=armor_stand,tag=needs_death_timer] death_timer 30
scoreboard players set @e[type=shulker,tag=needs_death_timer] death_timer 31
scoreboard players set @e[type=falling_block,tag=needs_death_timer] death_timer 30

##Removing tags
tag @e[type=armor_stand,tag=needs_death_timer] remove needs_death_timer
tag @e[type=shulker,tag=needs_death_timer] remove needs_death_timer
tag @e[type=armor_stand,tag=needs_copied_id] remove needs_copied_id
tag @e[type=shulker,tag=needs_copied_id] remove needs_copied_id

tag @e[type=falling_block,tag=needs_death_timer] remove needs_death_timer
tag @e[type=falling_block,tag=needs_copied_id] remove needs_copied_id

##Particle
particle item cobweb ~ ~-1 ~ 0 0 0 0.05 5


##Adding tag
tag @s add spawned_spider_shulker