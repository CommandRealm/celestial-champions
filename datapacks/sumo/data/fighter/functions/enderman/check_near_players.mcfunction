##Called to see if there is a nearby player.
execute if entity @a[distance=0..0.9,tag=!used_ability,tag=is_fighter,gamemode=adventure,tag=!slow_falling_until_landing] run tag @s add temporary_tag
execute positioned ~ ~-1 ~ if entity @a[distance=0..0.9,tag=!used_ability,tag=is_fighter,gamemode=adventure,tag=!slow_falling_until_landing] run tag @s add temporary_tag
execute if entity @s[tag=temporary_tag] run function fighter:enderman/swap