##Purpose is to re-route players to their own characters active ability over functions


##Fighters
execute if entity @s[scores={fighter=0}] run function fighter:theo/active_ability_over
execute if entity @s[scores={fighter=1}] run function fighter:zombie/active_ability_over
execute if entity @s[scores={fighter=2}] run function fighter:skeleton/active_ability_over
execute if entity @s[scores={fighter=3}] run function fighter:creeper/active_ability_over
execute if entity @s[scores={fighter=4}] run function fighter:spider/active_ability_over
execute if entity @s[scores={fighter=5}] run function fighter:chicken/active_ability_over
execute if entity @s[scores={fighter=6}] run function fighter:enderman/active_ability_over
execute if entity @s[scores={fighter=7}] run function fighter:incend/active_ability_over
execute if entity @s[scores={fighter=8}] run function fighter:drakier/active_ability_over
execute if entity @s[scores={fighter=9}] run function fighter:gracea/active_ability_over
execute if entity @s[scores={fighter=10}] run function fighter:callidus/active_ability_over
execute if entity @s[scores={fighter=11}] run function fighter:gene/active_ability_over
execute if entity @s[scores={fighter=12}] run function fighter:melon_man/active_ability_over
execute if entity @s[scores={fighter=13}] run function fighter:blaze/active_ability_over
execute if entity @s[scores={fighter=14}] run function fighter:slime/active_ability_over
execute if entity @s[scores={fighter=15}] run function fighter:malice/active_ability_over
execute if entity @s[scores={fighter=16}] run function fighter:arthor/active_ability_over
execute if entity @s[scores={fighter=17}] run function fighter:guardian/active_ability_over

execute if entity @s[tag=reset_timer_when_ability_over] run scoreboard players set @s ability_timer 1
tag @s remove reset_timer_when_ability_over
