##Called when Malice uses his air ability

##Scores

##Setting the ability state to active
scoreboard players set @s ability_state 1

##Showing how long until the ability can be used again
scoreboard players set @s ability_timer 120

##Clarifying it as an air ability (0 is ground, 1 is air)
scoreboard players set @s ability_type 1
##Effects

##resetting any jump we were using
effect clear @s levitation
effect clear @s slow_falling
scoreboard players reset @s extra_jump_time

##Levitation
effect give @s levitation 6 1 true



##Tellraw
tellraw @s[tag=!no_ability_msg] [{"text":"--------------------------","color":"white"},{"text":"\nAir Ability: ","color":"dark_aqua","bold":true},{"text":"Jetpack Launch\n","color":"aqua"},{"text":"(Hover for description.)\n","color":"#bd9b4b","italic":true,"hoverEvent":{"action":"show_text","value":"Jetpack, lasts for 6 seconds, canceled by air jumping."}},{"text":"--------------------------","color":"white"}]


##Sounds
playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 0.25 0 
