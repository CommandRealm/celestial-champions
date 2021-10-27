##Called to summon in the training buddy

##Actual summon
summon skeleton 85 81 1 {ActiveEffects:[{Id:18b,Duration:1000000,Amplifier:100b,ShowParticles:false},{Id:8b,Duration:1000000,Amplifier:4b,ShowParticles:false}],Silent:1b,Rotation:[90f,0f],Invulnerable:0b,Tags:["on_death_timer","training_buddy"],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:15779271}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:10913929}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:15779271}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;67052722,2019248191,-1414515712,498644137],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGQ5Mjc5ODVhYTM1NjA5MWZmODY1OTYwOGNiMGFkNjZkNDA1MGUzYmIwODMyYjRmODFiZTEzYjgzNzlhMDkwNSJ9fX0="}]}}}}]}

##Updates
effect clear @e[type=skeleton,tag=training_buddy,limit=1] weakness
execute if score $buddy training_area matches 0 run item replace entity @e[type=skeleton,tag=training_buddy,limit=1] weapon.mainhand with red_dye{CustomModelData:1,Enchantments:[{id:"minecraft:knockback",lvl:5}]}
execute if score $buddy training_area matches 1 run item replace entity @e[type=skeleton,tag=training_buddy,limit=1] weapon.mainhand with black_dye{CustomModelData:1}
execute if score $buddy training_area matches 2 run item replace entity @e[type=skeleton,tag=training_buddy,limit=1] weapon.mainhand with air

execute if score $buddy training_area matches 0 run data merge entity @e[type=skeleton,tag=training_buddy,limit=1] {Attributes:[{Name:"generic.movement_speed",Base:0.3}]}
execute if score $buddy training_area matches 1 run data merge entity @e[type=skeleton,tag=training_buddy,limit=1] {Attributes:[{Name:"generic.movement_speed",Base:0.00}]}
execute if score $buddy training_area matches 1 run effect give @e[type=skeleton,tag=training_buddy,limit=1] weakness 1000 255 true
execute if score $buddy training_area matches 2 run kill @e[type=skeleton,tag=training_buddy]

##Score set
scoreboard players set @e[type=skeleton,tag=training_buddy] death_timer 2
function lobby:training_area/buddy/stop_blinking

##Specific setting changes

##Particles
particle cloud 85 82 1 0.5 1 0.5 0.25 100

##Sound
playsound minecraft:entity.enderman.teleport master @a 85 82 1

effect give @e[type=skeleton,tag=training_buddy,limit=1] resistance 1000000 255 true

##/give @p minecraft:player_head{display:{Name:"{\"text\":\"s\"}"},SkullOwner:{Id:[I;67052722,2019248191,-1414515712,498644137],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGQ5Mjc5ODVhYTM1NjA5MWZmODY1OTYwOGNiMGFkNjZkNDA1MGUzYmIwODMyYjRmODFiZTEzYjgzNzlhMDkwNSJ9fX0="}]}}} 1