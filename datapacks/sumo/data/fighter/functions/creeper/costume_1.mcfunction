##Costume function for theo

##Clears
execute unless data entity @s Inventory[{Slot:100b,tag:{costume:1b}}] run clear @s leather_boots{costume:1b}
execute unless data entity @s Inventory[{Slot:101b,tag:{costume:1b}}] run clear @s leather_leggings{costume:1b}
execute unless data entity @s Inventory[{Slot:102b,tag:{costume:1b}}] run clear @s leather_chestplate{costume:1b}
execute unless data entity @s Inventory[{Slot:103b,tag:{costume:1b}}] run clear @s player_head{costume:1b}

##Kill
kill @e[type=item,distance=..15,nbt={Item:{tag:{costume:1b}}}]


##Replaceitems


##

item replace entity @s armor.head with player_head{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Creeper\'s Head","italic":false,"color":"#92b5b4","bold":true}]'},costume:1b,SkullOwner:{Id:[I;-474971190,-640725018,-1806291795,-1888599106],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDg1MDhhZjFjMGVmNmQzOTlhNmZlZjNlZGFkN2I4NDBjOTA3MDRhNGExYzliNjYxOTExM2UxYmRlNWQ4NWU5MCJ9fX0="}]}}}
item replace entity @s armor.chest with leather_chestplate{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Creeper\'s Torso","italic":false,"color":"#92b5b4","bold":true}]',color:9614772},costume:1b}
item replace entity @s armor.legs with leather_leggings{AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.015,UUID:[I; 50, 50, 50, 50]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Creeper\'s Legs","italic":false,"color":"#92b5b4","bold":true}]',color:15462897},costume:1b}
item replace entity @s[tag=!slow_falling_until_landing] armor.feet with leather_boots{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Creeper\'s Feet","italic":false,"color":"#92b5b4","bold":true}]',color:9614772},costume:1b}

