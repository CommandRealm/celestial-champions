##Called when a block is active.
execute as @e[type=armor_stand,tag=gene_block,scores={death_timer=73}] at @s run data modify entity @s NoGravity set value 0b
execute as @e[type=falling_block,tag=gene_falling_block_entity,scores={death_timer=..70}] at @s if entity @a[gamemode=adventure,tag=is_fighter,distance=..2.5] run function fighter:gene/check_falling_block_position
execute as @e[type=armor_stand,tag=gene_block,nbt={OnGround:1b},scores={death_timer=..70}] at @s run function fighter:entity_death_timer_over