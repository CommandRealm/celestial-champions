##Gets combo weapon for those who don't have it

##Clears
clear @s #minecraft:offhand_item{Weapon:"offhand_item"}

##Kill
kill @e[type=item,distance=..15,nbt={Item:{tag:{Weapon:"offhand_item"}}}]


##Giving items (and of the function is 0 and is meant to represent the costume score.)
item replace entity @s[scores={fighter=12}] weapon.offhand with fishing_rod{Unbreakable:1b,display:{Name:'[{"text":"Fishing ","color":"#be886c","italic":false},{"text":"Rod","color":"#905e43"}]'},Weapon:"offhand_item",HideFlags:63}



item replace entity @s[scores={fighter=16,random_stat=0}] weapon.offhand with magma_block{Unbreakable:1b,display:{Name:'[{"text":"Fire ","color":"#f1390e","italic":false},{"text":"Element","color":"gray"}]'},Weapon:"offhand_item",HideFlags:63}
item replace entity @s[scores={fighter=16,random_stat=1}] weapon.offhand with ice{Unbreakable:1b,display:{Name:'[{"text":"Ice","color":"#6fe6ff","italic":false},{"text":"Element","color":"gray"}]'},Weapon:"offhand_item",HideFlags:63}
item replace entity @s[scores={fighter=16,random_stat=2}] weapon.offhand with granite{Unbreakable:1b,display:{Name:'[{"text":"Earth ","color":"#b27565","italic":false},{"text":"Element","color":"gray"}]'},Weapon:"offhand_item",HideFlags:63}
item replace entity @s[scores={fighter=16,random_stat=3}] weapon.offhand with white_stained_glass{Unbreakable:1b,display:{Name:'[{"text":"Air ","color":"#d6d6d6","italic":false},{"text":"Element","color":"gray"}]'},Weapon:"offhand_item",HideFlags:63}
item replace entity @s[scores={fighter=16,random_stat=4}] weapon.offhand with blackstone{Unbreakable:1b,display:{Name:'[{"text":"Darkness ","color":"#3e2e51","italic":false},{"text":"Element","color":"gray"}]'},Weapon:"offhand_item",HideFlags:63}
