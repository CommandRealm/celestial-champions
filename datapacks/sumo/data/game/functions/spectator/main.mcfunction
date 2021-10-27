##active spectator function

##enable
scoreboard players enable @a[team=spectator] back_to_lobby

##if we have a score
execute as @a[team=spectator,scores={back_to_lobby=1..}] at @s run function game:spectator/back_to_lobby