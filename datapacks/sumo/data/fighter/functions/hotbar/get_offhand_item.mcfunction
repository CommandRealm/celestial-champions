##Gets combo weapon for those who don't have it

##Clears
clear @s #minecraft:offhand_item{Weapon:"offhand_item"}

##Kill
kill @e[type=item,distance=..15,nbt={Item:{tag:{Weapon:"offhand_item"}}}]


##Giving items (and of the function is 0 and is meant to represent the costume score.)
replaceitem entity @s[scores={fighter=12}] weapon.offhand fishing_rod{Unbreakable:1b,display:{Name:'[{"text":"Fishing ","color":"#be886c","italic":false},{"text":"Rod","color":"#905e43"}]'},Weapon:"offhand_item",HideFlags:63}