##Death timer
scoreboard players remove @e[tag=on_death_timer] death_timer 1
execute as @e[tag=on_death_timer,scores={death_timer=..0}] at @s run function fighter:entity_death_timer_over