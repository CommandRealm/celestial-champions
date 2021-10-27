##Called when zombie uses his air ability

##Scores

##Setting the ability state to active
scoreboard players set @s ability_state 1

##Showing how long until the ability can be used again
scoreboard players set @s ability_timer 30

##Clarifying it as an air ability (0 is ground, 1 is air)
scoreboard players set @s ability_type 1
##Effects



##Applying armor
item replace entity @s[scores={costume=0}] armor.chest with leather_chestplate{AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:1,UUID:[I; 64, 64, 64, 64]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Zombie\'s Torso","italic":false,"color":"dark_green","bold":true}]',color:50886},costume:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}
item replace entity @s[scores={costume=0}] armor.legs with leather_leggings{AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:1,UUID:[I; 64, 64, 64, 64]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Zombie\'s Legs","italic":false,"color":"dark_green","bold":true}]',color:5128890},costume:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}
item replace entity @s[tag=!slow_falling_until_landing,scores={costume=0}] armor.feet with leather_boots{AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:1,UUID:[I; 64, 64, 64, 64]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Zombie\'s Feet","italic":false,"color":"dark_green","bold":true}]',color:7895160},costume:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}

item replace entity @s[scores={costume=1}] armor.chest with leather_chestplate{AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:1,UUID:[I; 64, 64, 64, 64]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Husk\'s Torso","italic":false,"color":"#888f58","bold":true}]',color:10263667},costume:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}
item replace entity @s[scores={costume=1}] armor.legs with leather_leggings{AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:1,UUID:[I; 64, 64, 64, 64]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Husk\'s Legs","italic":false,"color":"#888f58","bold":true}]',color:4012582},costume:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}
item replace entity @s[tag=!slow_falling_until_landing,scores={costume=1}] armor.feet with leather_boots{AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:1,UUID:[I; 64, 64, 64, 64]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Husk\'s Feet","italic":false,"color":"#888f58","bold":true}]',color:4342338},costume:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}

item replace entity @s[scores={costume=2}] armor.chest with leather_chestplate{AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:1,UUID:[I; 64, 64, 64, 64]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Zombie\'s Torso","italic":false,"color":"dark_green","bold":true}]',color:50886},costume:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}
item replace entity @s[scores={costume=2}] armor.legs with leather_leggings{AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:1,UUID:[I; 64, 64, 64, 64]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Zombie\'s Legs","italic":false,"color":"dark_green","bold":true}]',color:5128890},costume:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}
item replace entity @s[tag=!slow_falling_until_landing,scores={costume=2}] armor.feet with leather_boots{AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:1,UUID:[I; 64, 64, 64, 64]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Zombie\'s Feet","italic":false,"color":"dark_green","bold":true}]',color:7895160},costume:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}

item replace entity @s[scores={costume=3}] armor.chest with leather_chestplate{AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:1,UUID:[I; 64, 64, 64, 64]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Drowned\'s Torso","italic":false,"color":"#6a9589","bold":true}]',color:6179641},costume:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}
item replace entity @s[scores={costume=3}] armor.legs with leather_leggings{AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:1,UUID:[I; 64, 64, 64, 64]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Drowned\'s Legs","italic":false,"color":"#6a9589","bold":true}]',color:5589565},costume:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}
item replace entity @s[tag=!slow_falling_until_landing,scores={costume=3}] armor.feet with leather_boots{AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:1,UUID:[I; 64, 64, 64, 64]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Drowned\'s Feet","italic":false,"color":"#6a9589","bold":true}]',color:7252122},costume:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}


##Removing tags
tag @s remove copy_id
tag @s remove used_ability


##Particles
particle minecraft:crimson_spore ~ ~1 ~ 0 0 0 5 100


##Tellraw
tellraw @s[tag=!no_ability_msg] [{"text":"--------------------------","color":"white"},{"text":"\nAir Ability: ","color":"dark_aqua","bold":true},{"text":"Fortify\n","color":"aqua"},{"text":"(Hover for description.)\n","color":"#bd9b4b","italic":true,"hoverEvent":{"action":"show_text","value":"Gives invincibility for 2 seconds."}},{"text":"--------------------------","color":"white"}]


##Sounds
playsound minecraft:entity.zombie.attack_iron_door master @a ~ ~ ~ 10 0
playsound minecraft:entity.zombie.hurt master @a ~ ~ ~ 1 0
playsound minecraft:entity.zombie.hurt master @a ~ ~ ~ 1 0.75