##Costume function for Guardian

##Clears
execute unless data entity @s Inventory[{Slot:100b,tag:{costume:1b}}] run clear @s leather_boots{costume:1b}
execute unless data entity @s Inventory[{Slot:101b,tag:{costume:1b}}] run clear @s leather_leggings{costume:1b}
execute unless data entity @s Inventory[{Slot:102b,tag:{costume:1b}}] run clear @s leather_chestplate{costume:1b}
execute unless data entity @s Inventory[{Slot:103b,tag:{costume:1b}}] run clear @s player_head{costume:1b}

##Kill
kill @e[type=item,distance=..15,nbt={Item:{tag:{costume:1b}}}]


##Replaceitems


##

item replace entity @s armor.head with player_head{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"translate":"Guardian\'s Head","italic":false,"color":"#6a5f8f","bold":true}]'},costume:1b,SkullOwner:{Id:[I;-1188073042,727600383,-1883303907,-283267139],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzM1NmJlMGViMWQ5MjBkZjI1NzJhMmIyYzQ4NjQ4MjQwZDE0OGJkMmU2YjVlNjc5NmEzMWI5ZDUzOTM4MzU2ZCJ9fX0="}]}}}
item replace entity @s armor.chest with leather_chestplate{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"translate":"Guardian\'s Torso","italic":false,"color":"#6a5f8f","bold":true}]',color:7890340},costume:1b}
item replace entity @s armor.legs with leather_leggings{AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.014,UUID:[I; 50, 50, 50, 50]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"translate":"Guardian\'s Legs","italic":false,"color":"#6a5f8f","bold":true}]',color:4756619},costume:1b}
item replace entity @s[tag=!slow_falling_until_landing] armor.feet with leather_boots{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"translate":"Guardian\'s Feet","italic":false,"color":"#6a5f8f","bold":true}]',color:7890340},costume:1b}

