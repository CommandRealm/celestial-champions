##Called when the poisonous potato explodes

clear @a poisonous_potato{item:1}

##Damage
advancement grant @s only advancements:damage/additional_damage_20
function fighter:damage/damage_taken


##Lightning
summon lightning_bolt ~ ~ ~


##Particles
particle smoke ~ ~1 ~ 0.15 0.15 0.15 0.25 100

##Clearing tags
tag @s remove has_potato
tag @a remove has_had_potato

##Sound
playsound minecraft:block.honey_block.break master @a ~ ~ ~ 1 0