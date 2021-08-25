#Called when the tossed skeleton is active

##Copying id to calculate
scoreboard players operation @s calculate = @s id

##Copying all players to calculate
execute as @a[tag=is_fighter,gamemode=adventure] at @s run scoreboard players operation @s calculate = @s id

##Subtracting ids
execute as @a[tag=is_fighter,gamemode=adventure] at @s run scoreboard players operation @s calculate -= @e[type=skeleton,tag=skeleton_tp,scores={id=0..},limit=1] id

##Acting upon id 0
tp @a[scores={calculate=0},gamemode=adventure,tag=is_fighter] @s

##Effect clear
effect clear @a[scores={calculate=0},gamemode=adventure,tag=is_fighter] slow_falling
effect clear @a[scores={calculate=0},gamemode=adventure,tag=is_fighter] weakness

scoreboard players set @a[scores={calculate=0},gamemode=adventure,tag=is_fighter] ability_timer 1

function fighter:entity_death_timer_over