##Called when drakier uses his air ability

##Scores

##Setting the ability state to inactive
scoreboard players set @s ability_state 2

##Showing how long until the ability can be used again
scoreboard players set @s ability_timer 600

##Clarifying it as an air ability (0 is ground, 1 is air)
scoreboard players set @s ability_type 1


##Repairing elytra

tag @s remove pause_random_cooldown
scoreboard players reset @s random_cooldown

function fighter:drakier/get_elytra



##Particles
particle item elytra ~ ~ ~ 0.25 0.25 0.25 0.25 100


##Tellraw
tellraw @s[tag=!no_ability_msg] [{"text":"--------------------------","color":"white"},{"text":"\nAir Ability: ","color":"dark_aqua","bold":true},{"text":"Elytra Repair\n","color":"aqua"},{"text":"(Hover for description.)\n","color":"#bd9b4b","italic":true,"hoverEvent":{"action":"show_text","value":"Repairs elytra if lost."}},{"text":"--------------------------","color":"white"}]


##Sounds
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 1 2
playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1.5
playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1.0
playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 0.5