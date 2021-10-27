##Called to get a random track.

##setting our previous song
scoreboard players operation @s[tag=!dont_update_previous_track] previous_track = @s music_track

##Random number
scoreboard players set $mod random 25
function random:random
scoreboard players add $rand random 1

##If it matches our current track

execute if score $rand random = @s music_track run scoreboard players add $rand random 1

scoreboard players operation @s music_track = $rand random

##If our score went too high
execute if entity @s[scores={music_track=26..}] run scoreboard players set @s music_track 1


##Starting next track
function music:play_track

##score reset
scoreboard players reset @s music_cooldown

tag @s remove dont_update_previous_track