##Called to toggle ability msgs

##If they're disabled give us a tag
tag @s[tag=!no_ability_msg] add toggle

##Disable them
tag @s remove no_ability_msg

##Re-enable them if we have a tag
tag @s[tag=toggle] add no_ability_msg

##Restart screen
function lobby:chest_menu/start_options


##Remove tag
tag @s remove toggle