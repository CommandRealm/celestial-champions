##Called when a player is stunned

##Removing score
scoreboard players remove @a[tag=is_fighter,gamemode=adventure,scores={stun=1..}] stun 1

##Title
title @a[tag=is_fighter,gamemode=adventure,scores={stun=1..}] title [{"translate":""}]
title @a[tag=is_fighter,gamemode=adventure,scores={stun=1..}] subtitle [{"translate":"⚠ ","color":"gold","bold":false},{"translate":"stunned_animation.0","fallback":"S","color":"yellow","bold":true},{"translate":"stunned_animation.1","fallback":"T","color":"gold","bold":true},{"translate":"stunned_animation.2","fallback":"U","color":"yellow","bold":true},{"translate":"stunned_animation.3","fallback":"N","color":"gold","bold":true},{"translate":"stunned_animation.4","fallback":"N","color":"yellow","bold":true},{"translate":"stunned_animation.5","fallback":"E","color":"gold","bold":true},{"translate":"stunned_animation.6","fallback":"D","color":"yellow","bold":true},{"translate":" ⚠","color":"gold","bold":false}]

##Stunned Particles
execute as @a[tag=is_fighter,gamemode=adventure,scores={stun=1..}] at @s run particle dust 1 1 0 2 ~ ~1 ~ 0.5 1 0.5 0.5 2 force


##Stun over
execute as @a[tag=is_fighter,gamemode=adventure,scores={stun=0}] at @s run function fighter:stun/stun_over