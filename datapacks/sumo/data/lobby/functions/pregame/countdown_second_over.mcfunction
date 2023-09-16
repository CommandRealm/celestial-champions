##Does math to display the seconds and then updates the title (also plays sound.)

##
scoreboard players operation $display pregame = $countdown pregame
scoreboard players operation $display pregame /= $20 number


##Titles. It's two commands to avoid "1 seconds"
execute unless score $display pregame matches 1 run title @a[gamemode=adventure] title [{"score":{"objective":"pregame","name":"$display"},"color":"white","bold":true},{"translate":" seconds . . .","color":"aqua","bold":false}]
execute if score $display pregame matches 1 run title @a[gamemode=adventure] title [{"score":{"objective":"pregame","name":"$display"},"color":"white","bold":true},{"translate":" second . . .","color":"aqua","bold":false}]


##Sounds
execute as @a at @s run playsound minecraft:entity.player.attack.knockback master @s ~ ~ ~ 10000 0.75

execute if score $display pregame matches 6.. as @a at @s run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 0.5 2
execute if score $display pregame matches 5 as @a at @s run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 0.5 1.75
execute if score $display pregame matches 4 as @a at @s run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 0.5 1.65
execute if score $display pregame matches 3 as @a at @s run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 0.5 1.55
execute if score $display pregame matches 2 as @a at @s run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 0.5 1.45
execute if score $display pregame matches 1 as @a at @s run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 0.5 1.35

##Reset score
scoreboard players set $second pregame 20