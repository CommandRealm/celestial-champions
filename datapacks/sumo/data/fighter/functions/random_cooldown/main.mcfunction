##Called when a random cooldown is in progress.
scoreboard players remove @a[tag=is_fighter,gamemode=adventure,scores={random_cooldown=1..},tag=!pause_random_cooldown] random_cooldown 1

##Ending the cooldown
execute as @a[tag=is_fighter,gamemode=adventure,scores={random_cooldown=0},tag=!pause_random_cooldown] at @s run function fighter:random_cooldown/cooldown_over