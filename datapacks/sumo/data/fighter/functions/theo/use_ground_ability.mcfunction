##Called when theo uses his ground ability

##Scores

##Setting the ability state to active
scoreboard players set @s ability_state 1

##Showing how long the ability lasts for
scoreboard players set @s ability_timer 20

##Clarifying it as a ground ability (0 is ground, 1 is air)
scoreboard players set @s ability_type 0
##Effects
effect give @s jump_boost 1 5 true
effect give @s speed 1 3 true

##Setting kb
scoreboard players set @s set_knockback 2
scoreboard players set @s knockback 2
clear @s #minecraft:knockback_weapon{Weapon:"knockback"}
tag @s add use_set_knockback



##Tellraw
tellraw @s[tag=!no_ability_msg] [{"text":"--------------------------","color":"aqua"},{"text":"\nGround Ability: ","color":"gray","bold":true},{"text":"Adrenaline\n","color":"white"},{"text":"(Hover for description.)\n","color":"#bd9b4b","italic":true,"hoverEvent":{"action":"show_text","value":"Gain Speed 4 and Jump Boost 6 for 1 second. However, during this ability, knockback is locked to 2."}},{"text":"--------------------------","color":"aqua"}]


##Sounds
playsound minecraft:item.trident.throw master @a ~ ~ ~ 1 0.5
playsound minecraft:item.trident.throw master @a ~ ~ ~ 1 0.75
playsound minecraft:item.trident.throw master @a ~ ~ ~ 1 0.9

