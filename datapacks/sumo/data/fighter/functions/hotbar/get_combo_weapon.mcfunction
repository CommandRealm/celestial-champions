##Gets combo weapon for those who don't have it

##Clears
clear @s #minecraft:combo_weapon{Weapon:"combo"}

##Kill
kill @e[type=item,distance=..15,nbt={Item:{tag:{Weapon:"combo"}}}]


##Giving items (and of the function is 0 and is meant to represent the costume score.)

##Theo
execute if entity @s[scores={fighter=0,costume=0..1}] run function fighter:theo/get_combo_weapon_0

execute if entity @s[scores={fighter=0,costume=2}] run function fighter:theo/get_combo_weapon_2

execute if entity @s[scores={fighter=0,costume=3}] run function fighter:theo/get_combo_weapon_3

execute if entity @s[scores={fighter=0,costume=4}] run function fighter:theo/get_combo_weapon_4

##Zombie
execute if entity @s[scores={fighter=1,costume=0}] run function fighter:zombie/get_combo_weapon_0
execute if entity @s[scores={fighter=1,costume=1}] run function fighter:zombie/get_combo_weapon_1
execute if entity @s[scores={fighter=1,costume=2}] run function fighter:zombie/get_combo_weapon_0
execute if entity @s[scores={fighter=1,costume=3}] run function fighter:zombie/get_combo_weapon_3

##Skeleton
execute if entity @s[scores={fighter=2,costume=0..1}] run function fighter:skeleton/get_combo_weapon_0
execute if entity @s[scores={fighter=2,costume=2}] run function fighter:skeleton/get_combo_weapon_2 

##Creeper
execute if entity @s[scores={fighter=3,costume=0}] run function fighter:creeper/get_combo_weapon_0
execute if entity @s[scores={fighter=3,costume=1}] run function fighter:creeper/get_combo_weapon_1
execute if entity @s[scores={fighter=3,costume=2}] run function fighter:creeper/get_combo_weapon_2

##Spider
execute if entity @s[scores={fighter=4,costume=0..1}] run function fighter:spider/get_combo_weapon_0
execute if entity @s[scores={fighter=4,costume=2}] run function fighter:spider/get_combo_weapon_2

##Chicken
execute if entity @s[scores={fighter=5}] run function fighter:chicken/get_combo_weapon_0

##Enderman
execute if entity @s[scores={fighter=6}] run function fighter:enderman/get_combo_weapon_0

##Incend
execute if entity @s[scores={fighter=7,costume=0..1}] run function fighter:incend/get_combo_weapon_0
execute if entity @s[scores={fighter=7,costume=2}] run function fighter:incend/get_combo_weapon_2
execute if entity @s[scores={fighter=7,costume=3}] run function fighter:incend/get_combo_weapon_3
execute if entity @s[scores={fighter=7,costume=4}] run function fighter:incend/get_combo_weapon_4

##Drakier
execute if entity @s[scores={fighter=8,costume=0}] run function fighter:drakier/get_combo_weapon_0
execute if entity @s[scores={fighter=8,costume=1}] run function fighter:drakier/get_combo_weapon_1
execute if entity @s[scores={fighter=8,costume=2}] run function fighter:drakier/get_combo_weapon_2
execute if entity @s[scores={fighter=8,costume=3}] run function fighter:drakier/get_combo_weapon_3
execute if entity @s[scores={fighter=8,costume=4}] run function fighter:drakier/get_combo_weapon_4

##Gracea
execute if entity @s[scores={fighter=9,costume=0..1}] run function fighter:gracea/get_combo_weapon_0
execute if entity @s[scores={fighter=9,costume=2}] run function fighter:gracea/get_combo_weapon_2
execute if entity @s[scores={fighter=9,costume=3}] run function fighter:gracea/get_combo_weapon_3
execute if entity @s[scores={fighter=9,costume=4}] run function fighter:gracea/get_combo_weapon_4

##Callidus
execute if entity @s[scores={fighter=10,costume=0..1}] run function fighter:callidus/get_combo_weapon_0
execute if entity @s[scores={fighter=10,costume=2}] run function fighter:callidus/get_combo_weapon_2
execute if entity @s[scores={fighter=10,costume=3}] run function fighter:callidus/get_combo_weapon_3
execute if entity @s[scores={fighter=10,costume=4}] run function fighter:callidus/get_combo_weapon_4

##Gene
execute if entity @s[scores={fighter=11,costume=0..1}] run function fighter:gene/get_combo_weapon_0
execute if entity @s[scores={fighter=11,costume=2}] run function fighter:gene/get_combo_weapon_2

##Melon Man
execute if entity @s[scores={fighter=12,costume=0}] run function fighter:melon_man/get_combo_weapon_0
execute if entity @s[scores={fighter=12,costume=1}] run function fighter:melon_man/get_combo_weapon_1
execute if entity @s[scores={fighter=12,costume=2}] run function fighter:melon_man/get_combo_weapon_2
execute if entity @s[scores={fighter=12,costume=3}] run function fighter:melon_man/get_combo_weapon_3
execute if entity @s[scores={fighter=12,costume=4}] run function fighter:melon_man/get_combo_weapon_4

##Blaze
execute if entity @s[scores={fighter=13,costume=0}] run function fighter:blaze/get_combo_weapon_0
execute if entity @s[scores={fighter=13,costume=1}] run function fighter:blaze/get_combo_weapon_1
execute if entity @s[scores={fighter=13,costume=2}] run function fighter:blaze/get_combo_weapon_2
execute if entity @s[scores={fighter=13,costume=3}] run function fighter:blaze/get_combo_weapon_3

##Slime
execute if entity @s[scores={fighter=14,costume=0}] run function fighter:slime/get_combo_weapon_0
execute if entity @s[scores={fighter=14,costume=1}] run function fighter:slime/get_combo_weapon_1
execute if entity @s[scores={fighter=14,costume=2}] run function fighter:slime/get_combo_weapon_2
execute if entity @s[scores={fighter=14,costume=3}] run function fighter:slime/get_combo_weapon_3

##Malice
execute if entity @s[scores={fighter=15}] run function fighter:malice/get_combo_weapon_0