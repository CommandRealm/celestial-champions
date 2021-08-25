##Called when Slime uses his ground ability

##Scores

##Setting the ability state to active
scoreboard players set @s ability_state 1

##Showing how long the ability lasts for
scoreboard players set @s ability_timer 40

##Clarifying it as a ground ability (0 is ground, 1 is air)
scoreboard players set @s ability_type 0
##Effects
effect give @s jump_boost 2 14 true



##Tellraw
tellraw @s[tag=!no_ability_msg] [{"text":"--------------------------","color":"aqua"},{"text":"\nGround Ability: ","color":"gray","bold":true},{"text":"Super Leap\n","color":"white"},{"text":"(Hover for description.)\n","color":"#bd9b4b","italic":true,"hoverEvent":{"action":"show_text","value":"Gain Jump Boost 15 for 2 seconds."}},{"text":"--------------------------","color":"aqua"}]


##Sounds
playsound minecraft:entity.slime.jump master @s ~ ~ ~ 1 0.75
playsound minecraft:entity.slime.jump master @s ~ ~ ~ 1 1.0
playsound minecraft:entity.slime.jump master @s ~ ~ ~ 1 1.25
