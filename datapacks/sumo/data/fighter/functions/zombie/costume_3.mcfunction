##Costume function for theo

##Clears
execute unless entity @s[nbt={Inventory:[{Slot:102b,tag:{costume:1b}}]}] run execute unless data entity @s Inventory[{Slot:100b,tag:{costume:1b}}] run clear @s leather_boots{costume:1b}
execute unless entity @s[nbt={Inventory:[{Slot:101b,tag:{costume:1b}}]}] run execute unless data entity @s Inventory[{Slot:101b,tag:{costume:1b}}] run clear @s leather_leggings{costume:1b}
execute unless entity @s[nbt={Inventory:[{Slot:100b,tag:{costume:1b}}]}] run execute unless data entity @s Inventory[{Slot:102b,tag:{costume:1b}}] run clear @s leather_chestplate{costume:1b}
execute unless data entity @s Inventory[{Slot:103b,tag:{costume:1b}}] run clear @s player_head{costume:1b}

##Kill
kill @e[type=item,distance=..15,nbt={Item:{tag:{costume:1b}}}]

##Replaceitems


##

item replace entity @s armor.head with player_head{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Drowned\'s Head","italic":false,"color":"#6a9589","bold":true}]'},costume:1b,SkullOwner:{Id:[I;1197379214,523912727,-2125570454,-151695049],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzdmMWMyMDc4NzZmN2Q5MGZjN2M1MDY5YmMxMTVjYjhjMDM1YWIwNTgzNTM0MDI2ZjIyNmFlZDE3NjU1MzIzNSJ9fX0="}]}}}
execute unless entity @s[nbt={Inventory:[{Slot:102b,tag:{costume:1b}}]}] run item replace entity @s armor.chest with leather_chestplate{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Drowned\'s Torso","italic":false,"color":"#6a9589","bold":true}]',color:6179641},costume:1b}
execute unless entity @s[nbt={Inventory:[{Slot:101b,tag:{costume:1b}}]}] run item replace entity @s armor.legs with leather_leggings{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Drowned\'s Legs","italic":false,"color":"#6a9589","bold":true}]',color:5589565},costume:1b}
execute unless entity @s[nbt={Inventory:[{Slot:100b,tag:{costume:1b}}]}] run item replace entity @s[tag=!slow_falling_until_landing] armor.feet with leather_boots{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Drowned\'s Feet","italic":false,"color":"#6a9589","bold":true}]',color:7252122},costume:1b}

