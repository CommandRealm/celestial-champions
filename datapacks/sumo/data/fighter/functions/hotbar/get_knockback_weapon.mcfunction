##Gets knockback weapon for those who don't have it

##Clears
clear @s #minecraft:knockback_weapon{Weapon:"knockback"}

##Kill
kill @e[type=item,distance=..15,nbt={Item:{tag:{Weapon:"knockback"}}}]


##Giving items (and of the function is 0 and is meant to represent the costume score.)

##Theo
execute if entity @s[scores={fighter=0,costume=0..1}] run function fighter:theo/get_knockback_weapon_0

execute if entity @s[scores={fighter=0,costume=2}] run function fighter:theo/get_knockback_weapon_2

execute if entity @s[scores={fighter=0,costume=3}] run function fighter:theo/get_knockback_weapon_3

execute if entity @s[scores={fighter=0,costume=4}] run function fighter:theo/get_knockback_weapon_4


##Zombie
execute if entity @s[scores={fighter=1,costume=0..2}] run function fighter:zombie/get_knockback_weapon_0
execute if entity @s[scores={fighter=1,costume=3}] run function fighter:zombie/get_knockback_weapon_3

##Skeleton
execute if entity @s[scores={fighter=2}] run function fighter:skeleton/get_knockback_weapon_0

##Creeper
execute if entity @s[scores={fighter=3}] run function fighter:creeper/get_knockback_weapon_0

##Spider
execute if entity @s[scores={fighter=4,costume=0}] run function fighter:spider/get_knockback_weapon_0
execute if entity @s[scores={fighter=4,costume=1}] run function fighter:spider/get_knockback_weapon_1
execute if entity @s[scores={fighter=4,costume=2}] run function fighter:spider/get_knockback_weapon_0

##Chicken
execute if entity @s[scores={fighter=5}] run function fighter:chicken/get_knockback_weapon_0
##Enderman
execute if entity @s[scores={fighter=6}] run function fighter:enderman/get_knockback_weapon_0

##Incend
execute if entity @s[scores={fighter=7,costume=0}] run function fighter:incend/get_knockback_weapon_0
execute if entity @s[scores={fighter=7,costume=1}] run function fighter:incend/get_knockback_weapon_1
execute if entity @s[scores={fighter=7,costume=2}] run function fighter:incend/get_knockback_weapon_2
execute if entity @s[scores={fighter=7,costume=3}] run function fighter:incend/get_knockback_weapon_3
execute if entity @s[scores={fighter=7,costume=4}] run function fighter:incend/get_knockback_weapon_4

##Drakier
execute if entity @s[scores={fighter=8,costume=0}] run function fighter:drakier/get_knockback_weapon_0
execute if entity @s[scores={fighter=8,costume=1}] run function fighter:drakier/get_knockback_weapon_1
execute if entity @s[scores={fighter=8,costume=2}] run function fighter:drakier/get_knockback_weapon_2
execute if entity @s[scores={fighter=8,costume=3}] run function fighter:drakier/get_knockback_weapon_3
execute if entity @s[scores={fighter=8,costume=4}] run function fighter:drakier/get_knockback_weapon_4

##Gracea
execute if entity @s[scores={fighter=9,costume=0..1}] run function fighter:gracea/get_knockback_weapon_0
execute if entity @s[scores={fighter=9,costume=2}] run function fighter:gracea/get_knockback_weapon_2
execute if entity @s[scores={fighter=9,costume=3}] run function fighter:gracea/get_knockback_weapon_3
execute if entity @s[scores={fighter=9,costume=4}] run function fighter:gracea/get_knockback_weapon_4

##Callidus
execute if entity @s[scores={fighter=10}] run function fighter:callidus/get_knockback_weapon_0


##Gene
execute if entity @s[scores={fighter=11,costume=0..1}] run function fighter:gene/get_knockback_weapon_0
execute if entity @s[scores={fighter=11,costume=2}] run function fighter:gene/get_knockback_weapon_2

##Melon Man
execute if entity @s[scores={fighter=12,costume=0}] run function fighter:melon_man/get_knockback_weapon_0
execute if entity @s[scores={fighter=12,costume=1}] run function fighter:melon_man/get_knockback_weapon_1
execute if entity @s[scores={fighter=12,costume=2}] run function fighter:melon_man/get_knockback_weapon_2
execute if entity @s[scores={fighter=12,costume=3}] run function fighter:melon_man/get_knockback_weapon_3
execute if entity @s[scores={fighter=12,costume=4}] run function fighter:melon_man/get_knockback_weapon_4

##Blaze
execute if entity @s[scores={fighter=13}] run function fighter:blaze/get_knockback_weapon_0



##slime
execute if entity @s[scores={fighter=14,costume=0}] run function fighter:slime/get_knockback_weapon_0
execute if entity @s[scores={fighter=14,costume=1}] run function fighter:slime/get_knockback_weapon_1
execute if entity @s[scores={fighter=14,costume=2}] run function fighter:slime/get_knockback_weapon_2
execute if entity @s[scores={fighter=14,costume=3}] run function fighter:slime/get_knockback_weapon_3


##Malice
execute if entity @s[scores={fighter=15,costume=0..1}] run function fighter:malice/get_knockback_weapon_0
execute if entity @s[scores={fighter=15,costume=2}] run function fighter:malice/get_knockback_weapon_2
execute if entity @s[scores={fighter=15,costume=3}] run function fighter:malice/get_knockback_weapon_3
execute if entity @s[scores={fighter=15,costume=4}] run function fighter:malice/get_knockback_weapon_4