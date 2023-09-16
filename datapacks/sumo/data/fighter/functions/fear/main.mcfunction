##Called when a player is fearned

##Removing score
scoreboard players remove @a[tag=is_fighter,gamemode=adventure,scores={fear=1..}] fear 1

##Title
title @a[tag=is_fighter,gamemode=adventure,scores={fear=1..}] title [{"translate":"brbrbrbr"}]
title @a[tag=is_fighter,gamemode=adventure,scores={fear=1..}] subtitle [{"translate":"☠ ","color":"dark_gray","bold":false},{"translate":"fearful_animation.0","fallback":"F","color":"#857487","bold":true},{"translate":"fearful_animation.1","fallback":"E","color":"#5f4762","bold":true},{"translate":"fearful_animation.2","fallback":"A","color":"#857487","bold":true},{"translate":"fearful_animation.3","fallback":"R","color":"#5f4762","bold":true},{"translate":"fearful_animation.4","fallback":"F","color":"#857487","bold":true},{"translate":"fearful_animation.5","fallback":"U","color":"#5f4762","bold":true},{"translate":"fearful_animation.6","fallback":"L","color":"#857487","bold":true},{"translate":" ☠","color":"dark_gray","bold":false}]

##fearned Particles
execute as @a[tag=is_fighter,gamemode=adventure,scores={fear=1..}] at @s run particle dust 0.427 0.38 0.506 2 ~ ~1 ~ 0.5 1 0.5 0.5 2 force


##fear over
execute as @a[tag=is_fighter,gamemode=adventure,scores={fear=0}] at @s run function fighter:fear/fear_over