##Called to summon the idle buddy

##Training buddy copies
execute anchored eyes run summon skeleton ^ ^ ^1 {CustomNameVisible:1b,CustomName:'[{"translate":"Idle","color":"#ffd1d3","italic":false},{"translate":" Buddy","color":"#907677","italic":false}]',ActiveEffects:[{Id:18b,Duration:1000000,Amplifier:100b,ShowParticles:false},{Id:8b,Duration:1000000,Amplifier:4b,ShowParticles:false}],Silent:1b,Rotation:[90f,0f],Invulnerable:0b,Tags:["on_death_timer","idle_buddy","needs_death_timer"],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:15779271}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:10913929}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:15779271}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;67052722,2019248191,-1414515712,498644137],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGQ5Mjc5ODVhYTM1NjA5MWZmODY1OTYwOGNiMGFkNjZkNDA1MGUzYmIwODMyYjRmODFiZTEzYjgzNzlhMDkwNSJ9fX0="}]}}}}]}
data merge entity @e[type=skeleton,tag=needs_death_timer,limit=1] {Attributes:[{Name:"generic.movement_speed",Base:0.00}]}
effect give @e[type=skeleton,tag=needs_death_timer,limit=1] weakness 1000 255 true

##Fixing Rotation
execute at @e[type=skeleton,tag=needs_death_timer] rotated as @s run tp @e[type=skeleton,tag=needs_death_timer,sort=nearest,limit=1] ~ ~ ~ ~ ~


##Death timer
scoreboard players set @e[type=skeleton,tag=needs_death_timer] death_timer 150
tag @e[type=skeleton,tag=needs_death_timer] remove needs_death_timer


##sound
playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 1.75

##particle
execute anchored eyes run particle portal ^ ^ ^1 0.25 0.5 0.25 0.15 25