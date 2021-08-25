##Called when a random cooldown is in progress.
scoreboard players remove @a[tag=is_fighter,gamemode=adventure,scores={random_cooldown2=1..},tag=!pause_random_cooldown2] random_cooldown2 1

##Ending the cooldown
execute as @a[tag=is_fighter,gamemode=adventure,scores={random_cooldown2=0},tag=!pause_random_cooldown2] at @s run function fighter:random_cooldown2/cooldown_over