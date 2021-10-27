##Called when theo uses his ground ability

##Scores

##Setting the ability state to inactive
scoreboard players set @s ability_state 2

##Showing how long the ability lasts for
scoreboard players set @s ability_timer 5

##Clarifying it as a ground ability (0 is ground, 1 is air)
scoreboard players set @s ability_type 0



scoreboard players add @s random_stat 1
scoreboard players set @s[scores={random_stat=5..}] random_stat 0

item replace entity @s weapon.offhand with air
clear @s crossbow

##Tellraw
tellraw @s[tag=!no_ability_msg] [{"text":"--------------------------","color":"aqua"},{"text":"\nGround Ability: ","color":"gray","bold":true},{"text":"Upgrade\n","color":"white"},{"text":"(Hover for description.)\n","color":"#bd9b4b","italic":true,"hoverEvent":{"action":"show_text","value":"Changes the element affecting your crossbow and air ability."}},{"text":"--------------------------","color":"aqua"}]


##Sounds
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 0.0625 0
playsound minecraft:entity.wither.hurt master @a ~ ~ ~ 0.125 0
