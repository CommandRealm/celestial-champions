##Called when a player is stunned

##Removing score
scoreboard players remove @a[tag=is_fighter,gamemode=adventure,scores={stun=1..}] stun 1

##Title
title @a[tag=is_fighter,gamemode=adventure,scores={stun=1..}] title [{"text":""}]
title @a[tag=is_fighter,gamemode=adventure,scores={stun=1..}] subtitle [{"text":"⚠ ","color":"gold","bold":false},{"text":"S","color":"yellow","bold":true},{"text":"T","color":"gold","bold":true},{"text":"U","color":"yellow","bold":true},{"text":"N","color":"gold","bold":true},{"text":"N","color":"yellow","bold":true},{"text":"E","color":"gold","bold":true},{"text":"D","color":"yellow","bold":true},{"text":" ⚠","color":"gold","bold":false}]

##Stunned Particles
execute as @a[tag=is_fighter,gamemode=adventure,scores={stun=1..}] at @s run particle dust 1 1 0 2 ~ ~1 ~ 0.5 1 0.5 0.5 2 force


##Stun over
execute as @a[tag=is_fighter,gamemode=adventure,scores={stun=0}] at @s run function fighter:stun/stun_over