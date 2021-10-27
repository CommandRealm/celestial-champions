##Ground raycast

scoreboard players remove $calculate calculate 1
particle dust 0.271 0.369 0.302 1 ~ ~ ~ 0 0 0 0 1 force @a
tag @a[tag=!this,distance=..0.9,tag=is_fighter,gamemode=adventure] add hit
execute positioned ~ ~-1 ~ run tag @a[tag=!this,distance=..0.9,tag=is_fighter,gamemode=adventure] add hit

execute if score $calculate calculate matches 0 run particle dust 1 0 0 3 ~ ~ ~ 0 0 0 0 1 force @a
execute if score $calculate calculate matches 1.. positioned ^ ^ ^0.25 run function fighter:guardian/ground_raycast

