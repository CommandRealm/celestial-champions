##Damage timer function

##Removing their time
scoreboard players remove @a[scores={damage_timer=1..},gamemode=adventure] damage_timer 1


##Timer end
execute as @a[scores={damage_timer=0},gamemode=adventure] at @s run function fighter:damage/damage_timer_over