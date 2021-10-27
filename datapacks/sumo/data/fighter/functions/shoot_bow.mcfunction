##Called when a player shoots a bow. (Specific fighters will use this function to affect the nearby arrow.)
scoreboard players reset @s shoot_bow

##Adding tag so we can be referenced later without @s
tag @s add shot_bow


###UUID 0

##Storing our UUID in calculate
execute store result score @s calculate run data get entity @s UUID[0] 1
##Storing Arrow Owner UUID in calculate
execute as @e[type=arrow] at @s store result score @s calculate run data get entity @s Owner[0] 1
##Adding tag if the UUID matches
execute as @e[type=arrow] at @s if score @s calculate = @p[tag=shot_bow] calculate run tag @s add temporary_match_0

###UUID 1

##Storing our UUID in calculate
execute store result score @s calculate run data get entity @s UUID[1] 1
##Storing Arrow Owner UUID in calculate
execute as @e[type=arrow] at @s store result score @s calculate run data get entity @s Owner[1] 1
##Adding tag if the UUID matches
execute as @e[type=arrow] at @s if score @s calculate = @p[tag=shot_bow] calculate run tag @s add temporary_match_1

###UUID 2

##Storing our UUID in calculate
execute store result score @s calculate run data get entity @s UUID[2] 1
##Storing Arrow Owner UUID in calculate
execute as @e[type=arrow] at @s store result score @s calculate run data get entity @s Owner[2] 1
##Adding tag if the UUID matches
execute as @e[type=arrow] at @s if score @s calculate = @p[tag=shot_bow] calculate run tag @s add temporary_match_2

###UUID 3

##Storing our UUID in calculate
execute store result score @s calculate run data get entity @s UUID[3] 1
##Storing Arrow Owner UUID in calculate
execute as @e[type=arrow] at @s store result score @s calculate run data get entity @s Owner[3] 1
##Adding tag if the UUID matches
execute as @e[type=arrow] at @s if score @s calculate = @p[tag=shot_bow] calculate run tag @s add temporary_match_3

##Specific fighter needs
execute if entity @s[scores={fighter=2}] run tag @e[type=arrow,tag=temporary_match_0,tag=temporary_match_1,tag=temporary_match_2,tag=temporary_match_3] add skeleton_arrow
execute if entity @s[scores={fighter=8}] run function fighter:drakier/shoot_bow
execute if entity @s[scores={fighter=15}] run function fighter:malice/shoot_bow
execute if entity @s[scores={fighter=13}] run tag @e[type=arrow,tag=temporary_match_0,tag=temporary_match_1,tag=temporary_match_2,tag=temporary_match_3] add blaze_arrow

##Removing tags
tag @s remove shot_bow
tag @e[type=arrow] remove temporary_match_0
tag @e[type=arrow] remove temporary_match_1
tag @e[type=arrow] remove temporary_match_2
tag @e[type=arrow] remove temporary_match_3



