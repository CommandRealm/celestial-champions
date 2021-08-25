##Spreads players around and then teleports them to the proper area.


##Uses @r with an individiual score to remove edge bias of /spreadplayers.

##Tag to indicate that players should be spread around the map
tag @a[tag=playing] add spreadplayers

##Calling function that moves players
function game:place_players

##Removing tag
tag @a remove spreadplayers