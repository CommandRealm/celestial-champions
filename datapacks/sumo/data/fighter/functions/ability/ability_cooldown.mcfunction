#Ability cooldowns


##Timer count down
scoreboard players remove @a[scores={ability_timer=1..},tag=is_fighter] ability_timer 1

##Call end function

execute as @a[scores={ability_timer=0},tag=is_fighter] at @s run function fighter:ability/ability_cooldown_over
