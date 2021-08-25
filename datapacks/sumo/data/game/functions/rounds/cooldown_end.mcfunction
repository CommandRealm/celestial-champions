##Runs when the cooldown phase is over


##Runs math to see if anyone has met the criteria yet.
execute as @a[tag=playing] at @s run scoreboard players operation @s fake_criteria = @s criteria
execute as @a[tag=playing] at @s run scoreboard players operation @s fake_criteria -= $criteria criteria
execute if entity @a[tag=playing,scores={fake_criteria=0}] run function game:rounds/start_ending_phase
execute unless entity @a[tag=playing,scores={fake_criteria=0}] run function game:rounds/end_round