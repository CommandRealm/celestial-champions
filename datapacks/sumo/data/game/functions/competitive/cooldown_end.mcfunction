##Runs when the cooldown phase is over


##Runs math to see if anyone has met the criteria yet.
execute if entity @a[tag=playing,scores={list=2..}] run function game:competitive/start_ending_phase
execute unless entity @a[tag=playing,scores={list=2..}] run function game:competitive/end_round