##Called to check the grenade position

##Temp tag
tag @s add temporary_tag


##Copying player ids to calculate
execute as @a[distance=..3,gamemode=adventure,tag=is_fighter] at @s run scoreboard players operation @s calculate = @s id
##Subtraction
execute as @a[distance=..3,gamemode=adventure,tag=is_fighter] at @s run scoreboard players operation @s calculate -= @e[tag=temporary_tag,limit=1,sort=nearest] id

##If its not the player who uses it, then run the smoke function
execute if entity @a[scores={calculate=1..},distance=..3,gamemode=adventure,tag=is_fighter] run tag @s add about_to_smoke
execute if entity @a[scores={calculate=..-1},distance=..3,gamemode=adventure,tag=is_fighter] run tag @s add about_to_smoke

execute if entity @s[tag=about_to_smoke] run function fighter:callidus/smoke_grenade_activate
##Remove temp tag
tag @s remove temporary_tag
tag @s remove about_to_smoke
