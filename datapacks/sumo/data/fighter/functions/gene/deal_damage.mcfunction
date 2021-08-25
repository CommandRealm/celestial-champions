##Called when Gene deals damage
tag @s remove additional_damage_1
tag @s remove additional_damage_2
execute if entity @s[scores={knockback=5}] run tag @s add additional_damage_1