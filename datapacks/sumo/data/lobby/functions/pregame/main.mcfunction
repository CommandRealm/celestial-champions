##Function is to see if it should start the countdown

##Toggle ready if player clicked
execute as @a[scores={pregame_click=1..}] at @s run function lobby:pregame/click

##Check if player needs book
execute as @a[x=0,y=66,z=0,distance=..500,gamemode=adventure,tag=!is_fighter] at @s unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:knowledge_book"}]}] unless score $ready_players pregame matches 50.. run function lobby:pregame/get_book

execute store result score $players_on pregame if entity @a

##Actionbar titles
title @a[x=0,y=66,z=0,distance=..500,gamemode=adventure,scores={ready=0},tag=!is_fighter] actionbar [{"text":"You will ","color":"gray"},{"text":"not play.","color":"dark_gray"},{"text":" (","color":"white","bold":true},{"score":{"objective":"pregame","name":"$ready_players"},"color":"aqua","bold":false},{"text":"/","color":"white","bold":false},{"score":{"objective":"pregame","name":"$players_on"},"color":"aqua","bold":false},{"text":")","color":"white","bold":true}]
title @a[x=0,y=66,z=0,distance=..500,gamemode=adventure,scores={ready=1},tag=!is_fighter] actionbar [{"text":"You will ","color":"white"},{"text":"play.","color":"aqua"},{"text":" (","color":"white","bold":true},{"score":{"objective":"pregame","name":"$ready_players"},"color":"aqua","bold":false},{"text":"/","color":"white","bold":false},{"score":{"objective":"pregame","name":"$players_on"},"color":"aqua","bold":false},{"text":")","color":"white","bold":true}]

##Count readied players
execute store result score $ready_players pregame if entity @a[scores={ready=1..}]
execute if entity @a[tag=admin] run scoreboard players add $ready_players pregame 1

##Start countdown if it's ready to be started
execute if block 0 67 26 stone_button[powered=true] run function lobby:pregame/press_button

##Continue countdown
execute if score $countdown pregame matches 1.. run function lobby:pregame/countdown

##Running death timer
execute unless entity @a[tag=is_fighter] run function fighter:death_timer

##Reset below_name display
execute if score $game state matches 0 unless entity @a[tag=is_fighter] run scoreboard objectives setdisplay below_name


##Button
execute if score $button pregame matches 1.. run function lobby:pregame/button/main