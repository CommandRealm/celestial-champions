##Called when a random cooldown is in progress.
scoreboard players remove @a[tag=is_fighter,gamemode=adventure,scores={random_cooldown3=1..},tag=!pause_random_cooldown3] random_cooldown3 1

##Ending the cooldown
execute as @a[tag=is_fighter,gamemode=adventure,scores={random_cooldown3=0},tag=!pause_random_cooldown3] at @s run function fighter:random_cooldown3/cooldown_over