##Called to play a queued track
scoreboard players operation @s music_track = @s queued_track
scoreboard players reset @s queued_track
function music:play_track