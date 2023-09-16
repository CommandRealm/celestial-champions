##Called when callidus uses his ground ability

##Scores

##Setting the ability state to active
scoreboard players set @s ability_state 1

##Showing how long the ability lasts for
scoreboard players set @s ability_timer 80

##Clarifying it as a ground ability (0 is ground, 1 is air)
scoreboard players set @s ability_type 0
##Effects
effect give @s speed 4 2 true
effect give @s invisibility 4 255 true

##Pause needs costume
tag @s add pause_needs_costume

##Clear
clear @s leather_chestplate{costume:1b}
clear @s leather_leggings{costume:1b}
clear @s leather_boots{costume:1b}
clear @s player_head{costume:1b}

##Setting kb
scoreboard players set @s set_knockback 3
scoreboard players set @s knockback 3
clear @s #minecraft:knockback_weapon{Weapon:"knockback"}
tag @s add use_set_knockback


##New boots
item replace entity @s armor.feet with iron_boots{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"translate":"Callidus\' Feet","italic":false,"color":"#d1ae5c","bold":true}]'},costume:1b}


##Tellraw
tellraw @s[tag=!no_ability_msg] [{"translate":"--------------------------","color":"aqua"},{"translate":"\nGround Ability: ","color":"gray","bold":true},{"translate":"Stealthy Dash\n","color":"white"},{"translate":"(Hover for description.)\n","color":"#bd9b4b","italic":true,"hoverEvent":{"action":"show_text","value":{"translate":"Gives some invisibility, Speed 3, sets knockback to 3 for 4 seconds."}}},{"translate":"--------------------------","color":"aqua"}]


##Sounds
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 2
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 1.5
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 1.75