##Called to toggle music msgs

##If they're disabled give us a tag
tag @s[tag=!no_music_msg] add toggle

##Disable them
tag @s remove no_music_msg

##Re-enable them if we have a tag
tag @s[tag=toggle] add no_music_msg

##Restart screen
function lobby:chest_menu/start_options


##Remove tag
tag @s remove toggle