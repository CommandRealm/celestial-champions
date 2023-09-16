##Costume function for theo

##Clears
execute unless data entity @s Inventory[{Slot:100b,tag:{costume:1b}}] run clear @s leather_boots{costume:1b}
execute unless data entity @s Inventory[{Slot:101b,tag:{costume:1b}}] run clear @s iron_leggings{costume:1b}
execute unless data entity @s Inventory[{Slot:102b,tag:{costume:1b}}] run clear @s leather_chestplate{costume:1b}
execute unless data entity @s Inventory[{Slot:103b,tag:{costume:1b}}] run clear @s player_head{costume:1b}

##Kill
kill @e[type=item,distance=..15,nbt={Item:{tag:{costume:1b}}}]


##Replaceitems


##

item replace entity @s armor.head with player_head{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"translate":"Stray\'s Head","italic":false,"color":"#88b9b3","bold":true}]'},costume:1b,SkullOwner:{Id:[I;-895195206,-604027417,-2132896399,-605322634],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTFhMWJjMzhiMGM5NmM4ODNhZjU1OGFjMjAwZmY0YTk1OGY1Y2FiZTNmYzI1ZDhmODNjNmQ3MGZkNjdkM2M4YSJ9fX0="}]}}}
item replace entity @s armor.chest with leather_chestplate{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"translate":"Stray\'s Torso","italic":false,"color":"#88b9b3","bold":true}]',color:7188145},costume:1b}
item replace entity @s armor.legs with iron_leggings{AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.0175,UUID:[I; 50, 50, 50, 50]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"translate":"Stray\'s Legs","italic":false,"color":"#88b9b3","bold":true}]'},costume:1b}
item replace entity @s[tag=!slow_falling_until_landing] armor.feet with leather_boots{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"translate":"Stray\'s Feet","italic":false,"color":"#88b9b3","bold":true}]',color:16777215},costume:1b}

