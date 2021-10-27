##raycast for spider ability

##Removing score
scoreboard players remove @s calculate 1

##Particles
particle item cobweb ~ ~ ~ 0 0 0 0.15 1

##Checking hit
execute if entity @a[tag=!used_ability,distance=..3,gamemode=adventure,tag=!slow_falling_until_landing] run function fighter:spider/check_raycast_hit
execute unless block ~ ~ ~ air run tag @s add hit_raycast

##Summon marker if we hit something
execute if entity @s[tag=hit_raycast] run summon marker ~ ~ ~ {Tags:["on_death_timer","spider_marker"]}

##Repeating function
execute if score @s calculate matches 1.. unless entity @s[tag=hit_raycast,gamemode=adventure] positioned ^ ^ ^0.5 run function fighter:spider/raycast