##Costume function for Nether Shopkeeper

##Clears
clear @s leather_boots{costume:1b}
clear @s leather_leggings{costume:1b}
clear @s leather_chestplate{costume:1b}
clear @s netherrack{costume:1b}

##Kill
kill @e[type=item,distance=..15,nbt={Item:{tag:{costume:1b}}}]


##Replaceitems


##

replaceitem entity @s armor.head netherrack{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Nether Shopkeeper\'s Head","italic":false,"color":"#a62c31","bold":true}]'},costume:1b,CustomModelData:1}
replaceitem entity @s armor.chest leather_chestplate{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Nether Shopkeeper\'s Torso","italic":false,"color":"#a62c31","bold":true}]',color:5721421},costume:1b}
replaceitem entity @s armor.legs leather_leggings{AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.005,UUID:[I; 50, 50, 50, 50]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Nether Shopkeeper\'s Legs","italic":false,"color":"#a62c31","bold":true}]',color:4473924},costume:1b}
replaceitem entity @s[tag=!slow_falling_until_landing] armor.feet leather_boots{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Nether Shopkeeper\'s Feet","italic":false,"color":"#a62c31","bold":true}]',color:4330773},costume:1b}
