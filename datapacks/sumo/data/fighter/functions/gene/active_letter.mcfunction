##Called when a letter is active
execute as @e[type=zombie,tag=gene_letter] at @s if entity @a[distance=..1,gamemode=adventure,tag=is_fighter] positioned ~ ~0.25 ~ run function fighter:gene/check_letter_position
execute at @e[type=zombie,tag=gene_letter] run particle dust 1 1 1 1 ~ ~0.85 ~
execute as @e[type=zombie,tag=gene_letter] at @s run tp @s ^ ^ ^0.3
