##Costume function for Callidus

##Clears
clear @s leather_boots{costume:1b}
clear @s leather_leggings{costume:1b}
clear @s leather_chestplate{costume:1b}
clear @s player_head{costume:1b}

##Kill
kill @e[type=item,distance=..15,nbt={Item:{tag:{costume:1b}}}]


##Replaceitems


##

replaceitem entity @s armor.head player_head{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Callidus\' Head","italic":false,"color":"#d1ae5c","bold":true}]'},costume:1b,SkullOwner:{Id:[I;802386896,42614843,-1449392350,-1241965188],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmQ3YTUzYWI0Yjg3ZTQxZDA2MDk3ZDJlZDUyYjVmZDM3ZmY3ZjExYTYwNzgxOGQzMWE2YWViNmUxN2IxMWIyMiJ9fX0="}]}}}
replaceitem entity @s armor.chest leather_chestplate{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Callidus\' Torso","italic":false,"color":"#d1ae5c","bold":true}]',color:13741660},costume:1b}
replaceitem entity @s armor.legs leather_leggings{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Callidus\' Legs","italic":false,"color":"#d1ae5c","bold":true}]',color:8203565},costume:1b}
replaceitem entity @s[tag=!slow_falling_until_landing] armor.feet leather_boots{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Callidus\' Feet","italic":false,"color":"#d1ae5c","bold":true}]',color:6504235},costume:1b}
