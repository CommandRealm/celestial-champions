##called to toggle the advancement unlock

##Seeing what state we currently are at
execute unless score @s prefix matches 20 run tag @s add toggle

##Disable
scoreboard players set @s prefix -1

##Re-enable
scoreboard players set @s[tag=toggle] prefix 20

##Tag clear
tag @a remove toggle

##Running rank
function general:rank

##Restart the screen
function lobby:chest_menu/start_advancement_unlocks