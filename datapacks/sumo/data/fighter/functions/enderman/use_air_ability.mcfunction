##Called when enderman uses his air ability

##Scores

##Setting the ability state to inactive
scoreboard players set @s ability_state 2

##Showing how long until the ability can be used again
scoreboard players set @s ability_timer 600

##Clarifying it as an air ability (0 is ground, 1 is air)
scoreboard players set @s ability_type 1
##Effects

##Adding tags (used_ability is just so that it doesn't use yourself) (copy_id is to give the entity the damaged tag)
tag @s add used_ability

##Setting up raycast
scoreboard players set @s calculate 200

##Calling raycast function
execute anchored eyes run function fighter:enderman/raycast


##Removing tags
tag @s remove used_ability
tag @s remove temporary_tag


##Particles


##Tellraw
tellraw @s[tag=!no_ability_msg] [{"text":"--------------------------","color":"white"},{"text":"\nAir Ability: ","color":"dark_aqua","bold":true},{"text":"Laser Swap\n","color":"aqua"},{"text":"(Hover for description.)\n","color":"#bd9b4b","italic":true,"hoverEvent":{"action":"show_text","value":"Fire a laser and swap positions with whomever you hit."}},{"text":"--------------------------","color":"white"}]


##Sounds
playsound minecraft:entity.ender_eye.death master @a ~ ~ ~ 1 0
execute at @s run playsound minecraft:entity.ender_eye.death master @a ~ ~ ~ 1 0