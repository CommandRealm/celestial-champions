##called to toggle the advancement unlock

##Seeing what state we currently are at
execute unless entity @s[scores={celebration=18}] run tag @s add toggle

##Disable
scoreboard players set @s celebration 0

##Re-enable
scoreboard players set @s[tag=toggle] celebration 18

##Tag clear
tag @a remove toggle

##Restart the screen
function lobby:chest_menu/start_advancement_unlocks