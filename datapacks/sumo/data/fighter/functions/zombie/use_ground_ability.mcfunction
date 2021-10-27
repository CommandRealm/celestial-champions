##Called when theo uses his ground ability

##Scores

##Setting the ability state to active
scoreboard players set @s ability_state 2

##Showing how long the ability lasts for
scoreboard players set @s ability_timer 200

##Clarifying it as a ground ability (0 is ground, 1 is air)
scoreboard players set @s ability_type 0
##Effects

##Tag is added so that we don't affect the user.
tag @s add used_ability
execute anchored eyes positioned ^ ^ ^3.0 align y run function fighter:zombie/attempt_to_summon_grave
tag @s remove used_ability

##Tellraw
tellraw @s[tag=!no_ability_msg] [{"text":"--------------------------","color":"aqua"},{"text":"\nGround Ability: ","color":"gray","bold":true},{"text":"Grave Danger\n","color":"white"},{"text":"(Hover for description.)\n","color":"#bd9b4b","italic":true,"hoverEvent":{"action":"show_text","value":"Summons a grave in front of yourself, launching opponents into the air, removing one extra jump."}},{"text":"--------------------------","color":"aqua"}]



##Sounds
playsound minecraft:block.soul_sand.break master @a ~ ~ ~ 1 1
playsound minecraft:block.soul_sand.break master @a ~ ~ ~ 1 1.15
playsound minecraft:block.soul_sand.break master @a ~ ~ ~ 1 0.85