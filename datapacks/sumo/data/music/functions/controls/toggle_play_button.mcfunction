##called to toggle our music.
tag @s[tag=pause_music] add toggle

##Pausing music
tag @s add pause_music
stopsound @s * minecraft:music.anthem_of_the_frogs
stopsound @s * minecraft:music.away_from_the_madness
stopsound @s * minecraft:music.beyond_the_fear
stopsound @s * minecraft:music.blockman
stopsound @s * minecraft:music.buckle_up
stopsound @s * minecraft:music.cut_and_run
stopsound @s * minecraft:music.danger_storm
stopsound @s * minecraft:music.dark_versus_light
stopsound @s * minecraft:music.depths
stopsound @s * minecraft:music.drive_me
stopsound @s * minecraft:music.edm_detection_mode
stopsound @s * minecraft:music.exit_the_premises
stopsound @s * minecraft:music.friendly_fire
stopsound @s * minecraft:music.hiding_your_reality
stopsound @s * minecraft:music.high_technologic_beat_explosion
stopsound @s * minecraft:music.into_the_abyss
stopsound @s * minecraft:music.lost_in_the_groove
stopsound @s * minecraft:music.mechanical_dusk
stopsound @s * minecraft:music.new_groove
stopsound @s * minecraft:music.oceanica
stopsound @s * minecraft:music.precipice
stopsound @s * minecraft:music.rolling_on
stopsound @s * minecraft:music.sax_rock_and_roll
stopsound @s * minecraft:music.son_of_a_rocket
stopsound @s * minecraft:music.special_spotlight
stopsound @s * minecraft:music.the_next_sunset
stopsound @s * minecraft:music.tilt
stopsound @s * minecraft:music.underwater_lifecycle
stopsound @s * minecraft:music.voices_of_reason
stopsound @s * minecraft:music.voltaic
stopsound @s * minecraft:music.waves_in_the_sky
stopsound @s * minecraft:music.werq

##If we're supposed to restart it.
execute if entity @s[tag=toggle] run tag @s remove pause_music
execute if entity @s[tag=toggle] run function music:randomize_track


##Removing tag
tag @s remove toggle

##Set our music cooldown if we're done playing music
scoreboard players set @s[tag=pause_music] music_time 5

##sound
playsound minecraft:ui.button.click master @s


