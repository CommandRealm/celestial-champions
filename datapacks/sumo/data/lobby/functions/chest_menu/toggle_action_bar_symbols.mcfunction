##Called to toggle action bar symbols

##If they're disabled give us a tag
tag @s[tag=!action_bar_symbols] add toggle

##Disable them
tag @s remove action_bar_symbols

##Re-enable them if we have a tag
tag @s[tag=toggle] add action_bar_symbols

##Restart screen
function lobby:chest_menu/start_options


##Remove tag
tag @s remove toggle