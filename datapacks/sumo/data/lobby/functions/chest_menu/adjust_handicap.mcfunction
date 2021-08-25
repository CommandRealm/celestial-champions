##Called to adjust our handicap

##Remove our score
scoreboard players remove @s handicap 1

##Reset it if it goes too low
scoreboard players set @s[scores={handicap=..-1}] handicap 3

##Restart the screen
function lobby:chest_menu/start_options