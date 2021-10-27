##This function will give players their fighter stats.

##Removing offhand item tag
tag @s remove has_offhand_item


##Fighters:
execute if entity @s[scores={fighter=0}] run function fighter:theo/stats
execute if entity @s[scores={fighter=1}] run function fighter:zombie/stats
execute if entity @s[scores={fighter=2}] run function fighter:skeleton/stats
execute if entity @s[scores={fighter=3}] run function fighter:creeper/stats
execute if entity @s[scores={fighter=4}] run function fighter:spider/stats
execute if entity @s[scores={fighter=5}] run function fighter:chicken/stats
execute if entity @s[scores={fighter=6}] run function fighter:enderman/stats
execute if entity @s[scores={fighter=7}] run function fighter:incend/stats
execute if entity @s[scores={fighter=8}] run function fighter:drakier/stats
execute if entity @s[scores={fighter=9}] run function fighter:gracea/stats
execute if entity @s[scores={fighter=10}] run function fighter:callidus/stats
execute if entity @s[scores={fighter=11}] run function fighter:gene/stats
execute if entity @s[scores={fighter=12}] run function fighter:melon_man/stats
execute if entity @s[scores={fighter=13}] run function fighter:blaze/stats
execute if entity @s[scores={fighter=14}] run function fighter:slime/stats
execute if entity @s[scores={fighter=15}] run function fighter:malice/stats
execute if entity @s[scores={fighter=16}] run function fighter:arthor/stats
execute if entity @s[scores={fighter=17}] run function fighter:guardian/stats