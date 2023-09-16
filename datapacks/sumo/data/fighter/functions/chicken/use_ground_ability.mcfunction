##Called when chicken uses his ground ability

##Scores

##Setting the ability state to inactive
scoreboard players set @s ability_state 2

##Showing how long the ability lasts for
scoreboard players set @s ability_timer 300

##Clarifying it as a ground ability (0 is ground, 1 is air)
scoreboard players set @s ability_type 0



##Tellraw
tellraw @s[tag=!no_ability_msg] [{"translate":"--------------------------","color":"aqua"},{"translate":"\nGround Ability: ","color":"gray","bold":true},{"translate":"Feather Fury\n","color":"white"},{"translate":"(Hover for description.)\n","color":"#bd9b4b","italic":true,"hoverEvent":{"action":"show_text","value":{"translate":"Stuns opponents in front of the user for one second."}}},{"translate":"--------------------------","color":"aqua"}]


##Sounds
playsound minecraft:entity.chicken.ambient master @s ~ ~ ~ 100 1
playsound minecraft:entity.chicken.ambient master @s ~ ~ ~ 100 1
playsound minecraft:entity.chicken.ambient master @s ~ ~ ~ 100 1


##Adding tag
tag @s add used_ability

##Effects
execute anchored eyes positioned ^ ^ ^2.75 as @a[gamemode=adventure,tag=!used_ability,tag=is_fighter,distance=..3] run function fighter:chicken/stunned_by_ground_ability

##Armor stand feathers
execute anchored eyes positioned ^ ^ ^2.75 run function fighter:chicken/summon_feathers

##Removing tag
tag @s remove used_ability