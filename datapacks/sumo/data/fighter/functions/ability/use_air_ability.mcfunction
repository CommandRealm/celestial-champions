##Called whenever a player uses an air ability

##Fighters:
execute if entity @s[scores={fighter=0}] run function fighter:theo/use_air_ability
execute if entity @s[scores={fighter=1}] run function fighter:zombie/use_air_ability
execute if entity @s[scores={fighter=2}] run function fighter:skeleton/use_air_ability
execute if entity @s[scores={fighter=3}] run function fighter:creeper/use_air_ability
execute if entity @s[scores={fighter=4}] run function fighter:spider/use_air_ability
execute if entity @s[scores={fighter=5}] run function fighter:chicken/use_air_ability
execute if entity @s[scores={fighter=6}] run function fighter:enderman/use_air_ability
execute if entity @s[scores={fighter=7}] run function fighter:incend/use_air_ability
execute if entity @s[scores={fighter=8}] run function fighter:drakier/use_air_ability
execute if entity @s[scores={fighter=9}] run function fighter:gracea/use_air_ability
execute if entity @s[scores={fighter=10}] run function fighter:callidus/use_air_ability
execute if entity @s[scores={fighter=11}] run function fighter:gene/use_air_ability
execute if entity @s[scores={fighter=12}] run function fighter:melon_man/use_air_ability
execute if entity @s[scores={fighter=13}] run function fighter:blaze/use_air_ability
execute if entity @s[scores={fighter=14}] run function fighter:slime/use_air_ability
execute if entity @s[scores={fighter=15}] run function fighter:malice/use_air_ability
execute if entity @s[scores={fighter=16}] run function fighter:arthor/use_air_ability
execute if entity @s[scores={fighter=17}] run function fighter:guardian/use_air_ability

execute if entity @s[scores={fighter=8},nbt={SelectedItem:{id:"minecraft:firework_rocket"}}] run function fighter:drakier/get_firework