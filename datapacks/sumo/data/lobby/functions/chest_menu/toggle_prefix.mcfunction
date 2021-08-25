##called to toggle the advancement unlock

##Seeing what state we currently are at
tag @s[tag=!explorer] add toggle

##Disable
tag @s remove explorer

##Re-enable
tag @s[tag=toggle] add explorer

##Tag clear
tag @a remove toggle

##Running rank
function general:rank

##Restart the screen
function lobby:chest_menu/start_advancement_unlocks