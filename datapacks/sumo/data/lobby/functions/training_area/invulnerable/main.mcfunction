##Called to countdown players being invulnerable.
scoreboard players remove @a[tag=!playing,tag=is_fighter,scores={training_area=1..}] training_area 1
execute as @a[tag=!playing,tag=is_fighter,scores={training_area=0}] at @s run function lobby:training_area/invulnerable/cooldown_over