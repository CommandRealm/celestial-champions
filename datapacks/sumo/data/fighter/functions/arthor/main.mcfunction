##Main function for arthor

execute as @e[type=arrow,nbt={inGround:1b},tag=earth_arrow] at @s run function fighter:arthor/earth_arrow
##If we're damaged by earth arrow, explode.
execute as @a[tag=is_fighter,gamemode=adventure,advancements={fighter:arthor/earth_arrow_damage=true}] at @s run function fighter:arthor/explode_self

##If someone is on their ice jump
execute if entity @a[tag=is_fighter,scores={fighter=16,random_cooldown2=1..}] run function fighter:arthor/ice_effects