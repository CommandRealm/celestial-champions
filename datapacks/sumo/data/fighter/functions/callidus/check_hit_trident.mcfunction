##Called to see if we hit someone floating or not.

##If we don't have the invalid tag
execute if entity @s[tag=!invalid_trident] run function fighter:callidus/hit_trident

tag @s remove invalid_trident