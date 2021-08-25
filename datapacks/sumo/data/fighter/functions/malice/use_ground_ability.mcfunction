##Called when Malice uses his ground ability

##Scores

##Setting the ability state to inactive
scoreboard players set @s ability_state 2

##Showing how long the ability lasts for
scoreboard players set @s ability_timer 300

##tag
tag @s add temporary_tag

execute as @e[type=area_effect_cloud,tag=malice_detonation] at @s run scoreboard players operation @s calculate = @s id
execute as @e[type=area_effect_cloud,tag=malice_detonation] at @s run scoreboard players operation @s calculate -= @p[tag=temporary_tag] id

execute as @e[type=area_effect_cloud,tag=malice_detonation,scores={calculate=0}] at @s run function fighter:malice/detonate


##getting back arrow
clear @s arrow 1
scoreboard players set @s arrow_timer 5

##tag removals
tag @s remove temporary_tag

##Tellraw
tellraw @s[tag=!no_ability_msg] [{"text":"--------------------------","color":"aqua"},{"text":"\nGround Ability: ","color":"gray","bold":true},{"text":"Arrow Detonation\n","color":"white"},{"text":"(Hover for description.)\n","color":"#bd9b4b","italic":true,"hoverEvent":{"action":"show_text","value":"Detonates explosive and launches opponents."}},{"text":"--------------------------","color":"aqua"}]


##Sounds
playsound minecraft:entity.tnt.primed master @a ~ ~ ~ 1 0