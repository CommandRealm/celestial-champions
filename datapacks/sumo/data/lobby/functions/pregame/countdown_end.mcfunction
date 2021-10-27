##Runs when countdown ends
scoreboard players reset $countdown pregame

##Sidebar reset
scoreboard objectives setdisplay sidebar

data modify entity @e[type=area_effect_cloud,tag=start_button_text,limit=1] CustomName set value '[{"text":"- ","color":"gray"},{"text":"☀ ","color":"aqua"},{"text":"Start","color":"gold","bold":true},{"text":" ☀","color":"aqua"},{"text":" -","color":"gray"}]'