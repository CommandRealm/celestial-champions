##Called when Melon Man uses his air ability

##Scores

##Setting the ability state to active
scoreboard players set @s ability_state 1

##Showing how long until the ability can be used again
scoreboard players set @s ability_timer 100

##Clarifying it as an air ability (0 is ground, 1 is air)
scoreboard players set @s ability_type 1


##Levitation
effect clear @s levitation
scoreboard players set @s extra_jump_time 3
effect give @s levitation 10000 40 true

##Pausing random cooldown (it will be unpaused when we touch the ground)
tag @s add pause_random_cooldown
scoreboard players set @s random_cooldown 1

##Tellraw
tellraw @s[tag=!no_ability_msg] [{"translate":"--------------------------","color":"white"},{"translate":"\nAir Ability: ","color":"dark_aqua","bold":true},{"translate":"Ground Pound\n","color":"aqua"},{"translate":"(Hover for description.)\n","color":"#bd9b4b","italic":true,"hoverEvent":{"action":"show_text","value":{"translate":"Launch yourself in the air and ground pound, stunning nearby grounded opponents for 3 seconds."}}},{"translate":"--------------------------","color":"white"}]


##Sounds
playsound minecraft:entity.blaze.shoot master @s ~ ~ ~ 1 0