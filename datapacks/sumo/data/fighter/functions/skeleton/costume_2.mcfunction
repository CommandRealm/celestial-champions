##Costume function for theo

##Clears
execute unless data entity @s Inventory[{Slot:100b,tag:{costume:1b}}] run clear @s leather_boots{costume:1b}
execute unless data entity @s Inventory[{Slot:101b,tag:{costume:1b}}] run clear @s diamond_leggings{costume:1b}
execute unless data entity @s Inventory[{Slot:102b,tag:{costume:1b}}] run clear @s diamond_chestplate{costume:1b}
execute unless data entity @s Inventory[{Slot:103b,tag:{costume:1b}}] run clear @s player_head{costume:1b}

##Kill
kill @e[type=item,distance=..15,nbt={Item:{tag:{costume:1b}}}]


##Replaceitems


##

item replace entity @s armor.head with player_head{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Wither Skeleton\'s Head","italic":false,"color":"#4e4e4e","bold":true}]'},costume:1b,SkullOwner:{Id:[I;74542885,33506059,-2081859536,-268206202],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDc2MzM4ZTRjYTYwYjgzYTllOGFjZmJhM2E3OTkyZmIyZDkzY2RkNWFmNzg1Mjc2NWYyNTU3MmEwNjc0ZjM1MyJ9fX0="}]}}}
item replace entity @s armor.chest with diamond_chestplate{CustomModelData:1,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Wither Skeleton\'s Torso","italic":false,"color":"#4e4e4e","bold":true}]'},costume:1b}
item replace entity @s armor.legs with diamond_leggings{CustomModelData:1,AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.0175,UUID:[I; 50, 50, 50, 50]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Wither Skeleton\'s Legs","italic":false,"color":"#4e4e4e","bold":true}]'},costume:1b}
item replace entity @s[tag=!slow_falling_until_landing] armor.feet with leather_boots{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Wither Skeleton\'s Feet","italic":false,"color":"#4e4e4e","bold":true}]',color:4473924},costume:1b}

