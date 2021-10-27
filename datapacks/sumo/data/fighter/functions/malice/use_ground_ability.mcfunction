##Called when Malice uses the ground ability

##Scores

##Setting the ability state to active
scoreboard players set @s ability_state 1

##Showing how long the ability lasts for
scoreboard players set @s ability_timer 100

##Clarifying it as a ground ability (0 is ground, 1 is air)
scoreboard players set @s ability_type 0

tag @s add fear_level_1

##Tellraw
tellraw @s[tag=!no_ability_msg] [{"text":"--------------------------","color":"aqua"},{"text":"\nGround Ability: ","color":"gray","bold":true},{"text":"Malicious Strikes\n","color":"white"},{"text":"(Hover for description.)\n","color":"#bd9b4b","italic":true,"hoverEvent":{"action":"show_text","value":"For 5 seconds, any player you attack will be struck with fear for 3 seconds"}},{"text":"--------------------------","color":"aqua"}]


playsound minecraft:entity.illusioner.cast_spell master @a ~ ~ ~ 1 1.5
playsound minecraft:entity.illusioner.cast_spell master @a ~ ~ ~ 1 1.25