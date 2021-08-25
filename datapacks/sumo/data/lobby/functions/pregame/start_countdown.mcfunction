##Function that starts the countdown

##Prepares scores for the countdown.
scoreboard players set $countdown pregame 300
scoreboard players set $second pregame 20
##Other
title @a times 0 25 5

title @a[gamemode=adventure] title [{"text":"15","bold":true,"color":"white"},{"text":" seconds . . .","color":"aqua","bold":false}]

execute as @a at @s run playsound minecraft:entity.player.attack.knockback master @s ~ ~ ~ 10000 0.75

execute as @a at @s run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 0.5 2


##Sidebar obj
scoreboard objectives remove readied_players
scoreboard objectives add readied_players dummy [{"text":"-=-","color":"white","bold":false},{"text":" Playing ","color":"aqua","bold":true},{"text":"-=-","color":"white","bold":false}]
scoreboard objectives setdisplay sidebar readied_players