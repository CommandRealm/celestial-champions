##Costume function for theo

##Clears
clear @s leather_boots{costume:1b}
clear @s leather_leggings{costume:1b}
clear @s leather_chestplate{costume:1b}
clear @s player_head{costume:1b}

##Kill
kill @e[type=item,distance=..15,nbt={Item:{tag:{costume:1b}}}]


##Replaceitems


##

replaceitem entity @s armor.head player_head{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Chicken\'s Head","italic":false,"color":"#ddac00","bold":true}]'},costume:1b,SkullOwner:{Id:[I;-1936333234,-1009893063,-2000366542,-733710550],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGZmZGIwNzk3MDNjMWQ2OTNiNmQwY2Q4ODk5ZGRmMzQ5NTY0OGYxYzliZjk5MjkwOGE2NzQzMWJkNWYyNWIyYiJ9fX0="}]}}}
replaceitem entity @s armor.chest leather_chestplate{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Chicken\'s Torso","italic":false,"color":"#ddac00","bold":true}]',color:16180273},costume:1b}
replaceitem entity @s armor.legs leather_leggings{AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.035,UUID:[I; 50, 50, 50, 50]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Chicken\'s Legs","italic":false,"color":"#ddac00","bold":true}]',color:16161329},costume:1b}
replaceitem entity @s[tag=!slow_falling_until_landing] armor.feet leather_boots{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Chicken\'s Feet","italic":false,"color":"#ddac00","bold":true}]',color:16180273},costume:1b}
