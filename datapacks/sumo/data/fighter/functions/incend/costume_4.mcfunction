##Costume function for Incend

##Clears
clear @s leather_boots{costume:1b}
clear @s leather_leggings{costume:1b}
clear @s leather_chestplate{costume:1b}
clear @s player_head{costume:1b}

##Kill
kill @e[type=item,distance=..15,nbt={Item:{tag:{costume:1b}}}]


##Replaceitems


##

replaceitem entity @s armor.head player_head{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Incend\'s Head","italic":false,"color":"#3f3f3f","bold":true}]'},costume:1b,SkullOwner:{Id:[I;-777232514,752830048,-1331949425,1078704968],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTcwODE1NDk0MTc4ZDM2MmIyYmNlNmI2NWE1NzJjNDA0NGY4YWNhYjA0ZWFjMWMyMjdiOWUyYjEyNzA1OWI5YyJ9fX0="}]}}}
replaceitem entity @s armor.chest leather_chestplate{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Incend\'s Torso","italic":false,"color":"#3f3f3f","bold":true}]',color:2434341},costume:1b}
replaceitem entity @s armor.legs leather_leggings{AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.0225,UUID:[I; 50, 50, 50, 50]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Incend\'s Legs","italic":false,"color":"#3f3f3f","bold":true}]',color:4342338},costume:1b}
replaceitem entity @s[tag=!slow_falling_until_landing] armor.feet leather_boots{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Incend\'s Feet","italic":false,"color":"#3f3f3f","bold":true}]',color:16224304},costume:1b}
