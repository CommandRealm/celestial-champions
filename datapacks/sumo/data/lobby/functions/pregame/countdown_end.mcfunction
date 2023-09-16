##Runs when countdown ends
scoreboard players reset $countdown pregame

##Sidebar reset
scoreboard objectives setdisplay sidebar

data modify entity @e[type=area_effect_cloud,tag=start_button_text,limit=1] CustomName set value '[{"translate":"- ","color":"gray"},{"translate":"☀ ","color":"aqua"},{"translate":"Start","color":"gold","bold":true},{"translate":" ☀","color":"aqua"},{"translate":" -","color":"gray"}]'