##Called when a player is fearned

##Removing score
scoreboard players remove @a[tag=is_fighter,gamemode=adventure,scores={fear=1..}] fear 1

##Title
title @a[tag=is_fighter,gamemode=adventure,scores={fear=1..}] title [{"text":""}]
title @a[tag=is_fighter,gamemode=adventure,scores={fear=1..}] subtitle [{"text":"☠ ","color":"dark_gray","bold":false},{"text":"F","color":"#857487","bold":true},{"text":"E","color":"#5f4762","bold":true},{"text":"A","color":"#857487","bold":true},{"text":"R","color":"#5f4762","bold":true},{"text":"F","color":"#857487","bold":true},{"text":"U","color":"#5f4762","bold":true},{"text":"L","color":"#857487","bold":true},{"text":" ☠","color":"dark_gray","bold":false}]

##fearned Particles
execute as @a[tag=is_fighter,gamemode=adventure,scores={fear=1..}] at @s run particle dust 0.427 0.38 0.506 2 ~ ~1 ~ 0.5 1 0.5 0.5 2 force


##fear over
execute as @a[tag=is_fighter,gamemode=adventure,scores={fear=0}] at @s run function fighter:fear/fear_over