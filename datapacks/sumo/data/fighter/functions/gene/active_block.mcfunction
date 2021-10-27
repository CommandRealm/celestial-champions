##Called when a block is active.

##Moving the block down.
execute as @e[type=armor_stand,tag=gene_block_tp] at @s run tp @s ~ ~-0.3 ~

##If the block beneath us isn't air, kill us
execute as @e[type=armor_stand,tag=gene_block] at @s unless block ~ ~-1 ~ air run function fighter:entity_death_timer_over
execute as @e[type=armor_stand,tag=gene_block] at @s if entity @s[y=30,distance=..10] run function fighter:entity_death_timer_over

execute as @e[type=armor_stand,tag=gene_block,scores={death_timer=..495}] at @s if entity @a[gamemode=adventure,tag=is_fighter,distance=..2.5] run function fighter:gene/check_falling_block_position