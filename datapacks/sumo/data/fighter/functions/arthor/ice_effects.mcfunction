##ice effects for the air jump

execute at @a[tag=is_fighter,scores={fighter=16,random_cooldown2=1..}] run particle item ice ~ ~ ~ 0 0 0 0.25 3
execute at @a[tag=is_fighter,scores={fighter=16,random_cooldown2=1..}] run playsound minecraft:block.amethyst_block.chime master @a ~ ~ ~ 2 1.5