##Gets combo weapon for those who don't have it

##Clears
clear @s #minecraft:offhand_item{Weapon:"offhand_item"}

##Kill
kill @e[type=item,distance=..15,nbt={Item:{tag:{Weapon:"offhand_item"}}}]


##Giving items (and of the function is 0 and is meant to represent the costume score.)
item replace entity @s[scores={fighter=12}] weapon.offhand with fishing_rod{Unbreakable:1b,display:{Name:'[{"translate":"Fishing ","color":"#be886c","italic":false},{"translate":"Rod","color":"#905e43"}]'},Weapon:"offhand_item",HideFlags:63}



item replace entity @s[scores={fighter=16,random_stat=0}] weapon.offhand with magma_block{Unbreakable:1b,display:{Name:'[{"translate":"Fire ","color":"#f1390e","italic":false},{"translate":"Element","color":"gray"}]'},Weapon:"offhand_item",HideFlags:63}
item replace entity @s[scores={fighter=16,random_stat=1}] weapon.offhand with ice{Unbreakable:1b,display:{Name:'[{"translate":"Ice","color":"#6fe6ff","italic":false},{"translate":"Element","color":"gray"}]'},Weapon:"offhand_item",HideFlags:63}
item replace entity @s[scores={fighter=16,random_stat=2}] weapon.offhand with granite{Unbreakable:1b,display:{Name:'[{"translate":"Earth ","color":"#b27565","italic":false},{"translate":"Element","color":"gray"}]'},Weapon:"offhand_item",HideFlags:63}
item replace entity @s[scores={fighter=16,random_stat=3}] weapon.offhand with white_stained_glass{Unbreakable:1b,display:{Name:'[{"translate":"Air ","color":"#d6d6d6","italic":false},{"translate":"Element","color":"gray"}]'},Weapon:"offhand_item",HideFlags:63}
item replace entity @s[scores={fighter=16,random_stat=4}] weapon.offhand with blackstone{Unbreakable:1b,display:{Name:'[{"translate":"Darkness ","color":"#3e2e51","italic":false},{"translate":"Element","color":"gray"}]'},Weapon:"offhand_item",HideFlags:63}
