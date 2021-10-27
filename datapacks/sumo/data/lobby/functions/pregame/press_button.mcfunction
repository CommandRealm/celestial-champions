##Called when someone presses the start button.

##Resetting the button and trapdor

setblock 0 67 26 air destroy
setblock 0 68 27 minecraft:iron_trapdoor[facing=north,half=bottom,open=false,powered=false,waterlogged=false]
setblock 1 67 27 minecraft:iron_trapdoor[facing=east,half=top,open=true,powered=false,waterlogged=false]
setblock 0 66 27 minecraft:iron_trapdoor[facing=north,half=top,open=false,powered=false,waterlogged=false]
setblock -1 67 27 minecraft:iron_trapdoor[facing=west,half=top,open=true,powered=false,waterlogged=false]

execute if score $countdown pregame matches 0.. run tag @p add temporary_tag
execute if score $countdown pregame matches 0.. run function lobby:pregame/countdown_end
execute unless score $mode settings matches 4 if score $ready_players pregame matches 2..50 unless score $countdown pregame matches 0.. unless entity @a[tag=temporary_tag] run function lobby:pregame/start_countdown
execute if score $mode settings matches 4 if score $ready_players pregame matches 2 unless score $countdown pregame matches 0.. unless entity @a[tag=temporary_tag] run function lobby:pregame/start_countdown

execute if score $ready_players pregame matches ..1 run function lobby:pregame/not_enough_players
execute unless score $mode settings matches 4 if score $ready_players pregame matches 50.. run function lobby:pregame/too_many_players
execute if score $mode settings matches 4 if score $ready_players pregame matches 3.. run function lobby:pregame/too_many_players
 
tag @a remove temporary_tag

##Setting up button delay
scoreboard players set $button pregame 10


##Changing start to cancel
execute if score $countdown pregame matches 0.. run data modify entity @e[type=area_effect_cloud,tag=start_button_text,limit=1] CustomName set value '[{"text":"- ","color":"gray"},{"text":"☀ ","color":"aqua"},{"text":"Cancel","color":"red","bold":true},{"text":" ☀","color":"aqua"},{"text":" -","color":"gray"}]'
execute unless score $countdown pregame matches 0.. run data modify entity @e[type=area_effect_cloud,tag=start_button_text,limit=1] CustomName set value '[{"text":"- ","color":"gray"},{"text":"☀ ","color":"aqua"},{"text":"Start","color":"gold","bold":true},{"text":" ☀","color":"aqua"},{"text":" -","color":"gray"}]'