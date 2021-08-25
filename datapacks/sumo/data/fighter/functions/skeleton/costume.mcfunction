##Costume function for theo

##Clears
clear @s leather_boots{costume:1b}
clear @s iron_leggings{costume:1b}
clear @s iron_chestplate{costume:1b}
clear @s skeleton_skull{costume:1b}

##Kill
kill @e[type=item,distance=..15,nbt={Item:{tag:{costume:1b}}}]


##Replaceitems


##

replaceitem entity @s armor.head skeleton_skull{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Skeleton\'s Head","italic":false,"color":"gray","bold":true}]'},costume:1b}
replaceitem entity @s armor.chest iron_chestplate{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Skeleton\'s Torso","italic":false,"color":"gray","bold":true}]'},costume:1b}
replaceitem entity @s armor.legs iron_leggings{AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.0175,UUID:[I; 50, 50, 50, 50]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Skeleton\'s Legs","italic":false,"color":"gray","bold":true}]'},costume:1b}
replaceitem entity @s[tag=!slow_falling_until_landing] armor.feet leather_boots{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Skeleton\'s Feet","italic":false,"color":"gray","bold":true}]',color:16777215},costume:1b}

