##called to check the phase.

execute unless entity @a[tag=playing,scores={list=1..}] run function game:competitive/striking_phase/main
execute if entity @a[tag=playing,scores={list=1..}] run function game:competitive/selection_phase/main