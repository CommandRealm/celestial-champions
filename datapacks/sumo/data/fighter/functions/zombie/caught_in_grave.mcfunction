##Run by the player who was caught in a grave


##Effect
effect give @a[tag=is_fighter,gamemode=adventure,distance=..3,tag=!used_ability] levitation 1000 35 true

##Clearing double jumps and setting up timers
scoreboard players set @a[tag=is_fighter,gamemode=adventure,distance=..3,tag=!used_ability] extra_jump_time 3
scoreboard players remove @a[tag=is_fighter,gamemode=adventure,distance=..3,tag=!used_ability,scores={extra_jumps=2..}] extra_jumps 1

##sounds
playsound minecraft:block.beacon.activate master @a ~ ~ ~ 0.25 2

##Particle
particle crit ~ ~ ~ 0.5 1 0.5 0.15 50
particle block sandstone ~ ~ ~ 0.5 1 0.5 0.15 50