##Raycast function

##Removing calculate score
scoreboard players remove @s calculate 1


##Calling function to see if we're near players
execute if entity @a[tag=is_fighter,gamemode=adventure,distance=..2.5,tag=!slow_falling_until_landing] run function fighter:enderman/check_near_players

##Particles
particle minecraft:reverse_portal ~ ~ ~ 0 0 0 1 1

##Calling the function again
execute if entity @s[scores={calculate=1..},tag=!temporary_tag] positioned ^ ^ ^0.25 if block ~ ~ ~ air run function fighter:enderman/raycast