##Called when the tnt is active and near players

##Temp tag
tag @s add temporary_tag


##Copying player ids to calculate
execute as @a[distance=..2,gamemode=adventure,tag=is_fighter] at @s run scoreboard players operation @s calculate = @s id
##Subtraction
execute as @a[distance=..2,gamemode=adventure,tag=is_fighter] at @s run scoreboard players operation @s calculate -= @e[tag=temporary_tag,limit=1,sort=nearest] id

##If its not the player who uses it, then run the activate function
execute if entity @a[scores={calculate=1..},distance=..2,gamemode=adventure,tag=is_fighter] run tag @s add about_to_activate
execute if entity @a[scores={calculate=..-1},distance=..2,gamemode=adventure,tag=is_fighter] run tag @s add about_to_activate

execute if entity @s[tag=about_to_activate] run function fighter:guardian/laser_activate
##Remove temp tag
tag @s remove temporary_tag
tag @s remove about_to_activate