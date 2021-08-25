##Called when we step on a honey trap

##Stun
scoreboard players set @s stun 50
function fighter:stun/start_stun

##sound
playsound minecraft:block.honey_block.place master @a ~ ~ ~ 1 0.5
playsound minecraft:block.honey_block.place master @a ~ ~ ~ 1 0.75

##Particles
particle item honey_block ~ ~ ~ 0.15 0.15 0.15 0.25 50


##Killing the block we stepped on
scoreboard players set @e[type=armor_stand,tag=honey_trap,tag=temporary_tag] death_timer 1