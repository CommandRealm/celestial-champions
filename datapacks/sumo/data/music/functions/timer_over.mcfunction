##called when the cooldown is over.

##set cooldown if our song just ended
execute unless entity @s[scores={music_cooldown=0..}] if entity @s[tag=!pause_music] run function music:song_over

##random new track
execute if entity @s[tag=!pause_music] if entity @s[tag=!ran_function] unless entity @s[scores={music_cooldown=1..}] unless entity @s[scores={queued_track=1..}] run function music:randomize_track
execute if entity @s[tag=!pause_music] if entity @s[tag=!ran_function] unless entity @s[scores={music_cooldown=1..}] if entity @s[scores={queued_track=1..}] run function music:play_queued_track

##If we're just here to stop the music
execute if entity @s[tag=pause_music] run function music:stop_track


##tag removal
tag @s remove ran_function