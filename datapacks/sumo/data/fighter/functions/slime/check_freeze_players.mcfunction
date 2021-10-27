##Called to freeze players to their marker

tag @s add temporary_tag
execute as @e[type=marker,tag=slime_freeze] at @s run scoreboard players operation @s calculate = @s id
execute as @e[type=marker,tag=slime_freeze] at @s run scoreboard players operation @s calculate -= @p[tag=temporary_tag] id
execute if entity @e[type=marker,sort=nearest,limit=1,scores={calculate=0}] run function fighter:slime/continue_freeze


tag @s remove temporary_tag