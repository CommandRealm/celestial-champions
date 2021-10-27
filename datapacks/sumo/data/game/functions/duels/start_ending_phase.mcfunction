##Starts the ending phase.

##Determining winner(s)
scoreboard objectives remove fake_criteria
scoreboard objectives add fake_criteria dummy
scoreboard players set $check_place fake_criteria 0
execute as @a[tag=playing] at @s run scoreboard players operation @s fake_criteria = @s criteria
execute as @a[tag=playing] at @s run scoreboard players operation $check_place fake_criteria > @s criteria
execute as @a[tag=playing] at @s run scoreboard players operation @s fake_criteria -= $check_place fake_criteria



##Score
scoreboard players set $end cooldown 100




##Joining team to remove prefix
team join aqua @a[tag=playing,scores={fake_criteria=0}]

##Remove sidebar
scoreboard objectives setdisplay sidebar

##Tellraws and titles

title @a[tag=playing] times 5 50 5
title @a[tag=playing] title [{"selector":"@r[tag=playing,scores={fake_criteria=0}]"},{"text":" wins!","color":"white"}]
tellraw @a[tag=playing] [{"selector":"@a[tag=playing,scores={fake_criteria=0}]"},{"text":" wins!","color":"white"}]

##Winner tag
tag @a remove winner
tag @a[tag=playing,scores={fake_criteria=0}] add winner
