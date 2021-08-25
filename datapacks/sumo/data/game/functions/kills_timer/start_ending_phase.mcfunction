##Starts the ending phase.

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

##Tag to make players join team
tag @a[tag=playing,scores={fake_criteria=0}] add join_team
function game:join_solo_team
tag @a[tag=playing] remove join_team
