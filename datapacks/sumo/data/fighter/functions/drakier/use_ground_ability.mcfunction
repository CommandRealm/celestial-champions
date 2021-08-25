##Called when drakier uses his ground ability

##Scores

##Setting the ability state to active
scoreboard players set @s ability_state 1

##Showing how long the ability lasts for
scoreboard players set @s ability_timer 100

##Clarifying it as a ground ability (0 is ground, 1 is air)
scoreboard players set @s ability_type 0

##No specific thing here because it's called from the main function.


##Tellraw
tellraw @s[tag=!no_ability_msg] [{"text":"--------------------------","color":"aqua"},{"text":"\nGround Ability: ","color":"gray","bold":true},{"text":"Dragon's Breath\n","color":"white"},{"text":"(Hover for description.)\n","color":"#bd9b4b","italic":true,"hoverEvent":{"action":"show_text","value":"Dragon's breath AOE damages opponents in it, lasts 5 seconds."}},{"text":"--------------------------","color":"aqua"}]


##Sounds
playsound minecraft:entity.splash_potion.break master @s ~ ~ ~ 1 0
playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 1000 1.25
playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 1000 1.0

##Particles
particle item glass_bottle ~ ~1 ~ 0.25 0.5 0.25 0.15 50