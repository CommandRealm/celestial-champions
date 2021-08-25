##Called when Gene uses his ground ability

##Scores

##Setting the ability state to active
scoreboard players set @s ability_state 1

##Showing how long the ability lasts for
scoreboard players set @s ability_timer 140

##Clarifying it as a ground ability (0 is ground, 1 is air)
scoreboard players set @s ability_type 0

##First shot
scoreboard players set @s random_stat2 0
function fighter:gene/shoot_letter


##Tellraw
tellraw @s[tag=!no_ability_msg] [{"text":"--------------------------","color":"aqua"},{"text":"\nGround Ability: ","color":"gray","bold":true},{"text":"Spelling Scenario\n","color":"white"},{"text":"(Hover for description.)\n","color":"#bd9b4b","italic":true,"hoverEvent":{"action":"show_text","value":"Fire projectiles that do damage."}},{"text":"--------------------------","color":"aqua"}]


##Sounds
playsound minecraft:entity.guardian.hurt master @a ~ ~ ~ 0.25 2

