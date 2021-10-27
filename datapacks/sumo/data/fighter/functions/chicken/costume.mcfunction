##Costume function for theo

##Clears
execute unless data entity @s Inventory[{Slot:100b,tag:{costume:1b}}] run clear @s leather_boots{costume:1b}
execute unless data entity @s Inventory[{Slot:101b,tag:{costume:1b}}] run clear @s leather_leggings{costume:1b}
execute unless data entity @s Inventory[{Slot:102b,tag:{costume:1b}}] run clear @s leather_chestplate{costume:1b}
clear @s egg{costume:1b}

##Kill
kill @e[type=item,distance=..15,nbt={Item:{tag:{costume:1b}}}]


##Replaceitems


##

item replace entity @s armor.head with egg{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Chicken\'s Head","italic":false,"color":"gray","bold":true}]'},costume:1b,CustomModelData:1}
item replace entity @s armor.chest with leather_chestplate{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Chicken\'s Torso","italic":false,"color":"gray","bold":true}]',color:16777215},costume:1b}
item replace entity @s armor.legs with leather_leggings{AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.0385,UUID:[I; 50, 50, 50, 50]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Chicken\'s Legs","italic":false,"color":"gray","bold":true}]',color:13882323},costume:1b}
item replace entity @s[tag=!slow_falling_until_landing] armor.feet with leather_boots{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Chicken\'s Feet","italic":false,"color":"gray","bold":true}]',color:14728041},costume:1b}

