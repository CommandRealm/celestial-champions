##called to toggle the advancement unlock

##Seeing what state we currently are at
execute unless entity @s[scores={death_animation=12}] run tag @s add toggle

##Disable
scoreboard players set @s death_animation 0

##Re-enable
scoreboard players set @s[tag=toggle] death_animation 12

##Tag clear
tag @a remove toggle

##Restart the screen
function lobby:chest_menu/start_advancement_unlocks