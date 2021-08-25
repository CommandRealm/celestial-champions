##Called when we use the rocket jump

##Resetting our current air jump
effect clear @s levitation
effect clear @s slow_falling

##Setting our new jump
effect give @s levitation 1000 35 true
scoreboard players set @s extra_jump_time 10

##sounds
playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1
playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1.1
playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1.2
playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1.3
playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1.4
playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1.5

##Particles
particle firework ~ ~ ~ 0.25 0.25 0.25 0.25 50