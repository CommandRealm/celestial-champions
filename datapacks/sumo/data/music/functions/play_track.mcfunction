##Called to play a music track

##Stopping any currently running music
stopsound @s * minecraft:music.anthem_of_the_frogs
stopsound @s * minecraft:music.away_from_the_madness
stopsound @s * minecraft:music.beyond_the_fear
stopsound @s * minecraft:music.blockman
stopsound @s * minecraft:music.buckle_up
stopsound @s * minecraft:music.cut_and_run
stopsound @s * minecraft:music.danger_storm
stopsound @s * minecraft:music.dark_versus_light
stopsound @s * minecraft:music.edm_detection_mode
stopsound @s * minecraft:music.exit_the_premises
stopsound @s * minecraft:music.hiding_your_reality
stopsound @s * minecraft:music.into_the_abyss
stopsound @s * minecraft:music.lost_in_the_groove
stopsound @s * minecraft:music.mechanical_dusk
stopsound @s * minecraft:music.new_groove
stopsound @s * minecraft:music.sax_rock_and_roll
stopsound @s * minecraft:music.son_of_a_rocket
stopsound @s * minecraft:music.special_spotlight
stopsound @s * minecraft:music.the_next_sunset
stopsound @s * minecraft:music.underwater_lifecycle
stopsound @s * minecraft:music.voices_of_reason
stopsound @s * minecraft:music.voltaic
stopsound @s * minecraft:music.waves_in_the_sky
stopsound @s * minecraft:music.werq
stopsound @s * minecraft:music.mistake_the_getaway

##Setting tag
tag @s remove pause_music
clear @s redstone{toggle_play_button:1b}

##Tracks
execute if entity @s[scores={music_track=1}] run playsound minecraft:music.anthem_of_the_frogs record @s ~ ~ ~ 0.25
execute if entity @s[scores={music_track=1}] run tellraw @s[tag=!no_music_msg] [{"translate":"Music: ","color":"gold","bold":true},{"translate":"Anthem of the Frogs","color":"aqua","bold":false},{"translate":" - ","color":"gray"},{"translate":"TeknoAXE","color":"white","bold":false}]
scoreboard players set @s[scores={music_track=1}] music_time 5200

execute if entity @s[scores={music_track=2}] run playsound minecraft:music.away_from_the_madness record @s ~ ~ ~ 0.25
execute if entity @s[scores={music_track=2}] run tellraw @s[tag=!no_music_msg] [{"translate":"Music: ","color":"gold","bold":true},{"translate":"Away from the Madness","color":"aqua","bold":false},{"translate":" - ","color":"gray"},{"translate":"TeknoAXE","color":"white","bold":false}]
scoreboard players set @s[scores={music_track=2}] music_time 6720

execute if entity @s[scores={music_track=3}] run playsound minecraft:music.beyond_the_fear record @s ~ ~ ~ 0.25
execute if entity @s[scores={music_track=3}] run tellraw @s[tag=!no_music_msg] [{"translate":"Music: ","color":"gold","bold":true},{"translate":"Beyond the Fear","color":"aqua","bold":false},{"translate":" - ","color":"gray"},{"translate":"TeknoAXE","color":"white","bold":false}]
scoreboard players set @s[scores={music_track=3}] music_time 5840

execute if entity @s[scores={music_track=4}] run playsound minecraft:music.blockman record @s ~ ~ ~ 0.25
execute if entity @s[scores={music_track=4}] run tellraw @s[tag=!no_music_msg] [{"translate":"Music: ","color":"gold","bold":true},{"translate":"BlockMan","color":"aqua","bold":false},{"translate":" - ","color":"gray"},{"translate":"Kevin MacLeod","color":"white","bold":false}]
scoreboard players set @s[scores={music_track=4}] music_time 2360

execute if entity @s[scores={music_track=5}] run playsound minecraft:music.buckle_up record @s ~ ~ ~ 0.25
execute if entity @s[scores={music_track=5}] run tellraw @s[tag=!no_music_msg] [{"translate":"Music: ","color":"gold","bold":true},{"translate":"Buckle Up!","color":"aqua","bold":false},{"translate":" - ","color":"gray"},{"translate":"Vexento","color":"white","bold":false}]
scoreboard players set @s[scores={music_track=5}] music_time 3460

execute if entity @s[scores={music_track=6}] run playsound minecraft:music.cut_and_run record @s ~ ~ ~ 0.25
execute if entity @s[scores={music_track=6}] run tellraw @s[tag=!no_music_msg] [{"translate":"Music: ","color":"gold","bold":true},{"translate":"Cut and Run","color":"aqua","bold":false},{"translate":" - ","color":"gray"},{"translate":"Kevin MacLeod","color":"white","bold":false}]
scoreboard players set @s[scores={music_track=6}] music_time 4280

execute if entity @s[scores={music_track=7}] run playsound minecraft:music.danger_storm record @s ~ ~ ~ 0.25
execute if entity @s[scores={music_track=7}] run tellraw @s[tag=!no_music_msg] [{"translate":"Music: ","color":"gold","bold":true},{"translate":"Danger Storm","color":"aqua","bold":false},{"translate":" - ","color":"gray"},{"translate":"Kevin MacLeod","color":"white","bold":false}]
scoreboard players set @s[scores={music_track=7}] music_time 3900

execute if entity @s[scores={music_track=8}] run playsound minecraft:music.dark_versus_light record @s ~ ~ ~ 0.25
execute if entity @s[scores={music_track=8}] run tellraw @s[tag=!no_music_msg] [{"translate":"Music: ","color":"gold","bold":true},{"translate":"Dark Versus Light","color":"aqua","bold":false},{"translate":" - ","color":"gray"},{"translate":"TeknoAXE","color":"white","bold":false}]
scoreboard players set @s[scores={music_track=8}] music_time 5200

execute if entity @s[scores={music_track=9}] run playsound minecraft:music.edm_detection_mode record @s ~ ~ ~ 0.25
execute if entity @s[scores={music_track=9}] run tellraw @s[tag=!no_music_msg] [{"translate":"Music: ","color":"gold","bold":true},{"translate":"Edm Detection Mode","color":"aqua","bold":false},{"translate":" - ","color":"gray"},{"translate":"Kevin MacLeod","color":"white","bold":false}]
scoreboard players set @s[scores={music_track=9}] music_time 7300

execute if entity @s[scores={music_track=10}] run playsound minecraft:music.exit_the_premises record @s ~ ~ ~ 0.25
execute if entity @s[scores={music_track=10}] run tellraw @s[tag=!no_music_msg] [{"translate":"Music: ","color":"gold","bold":true},{"translate":"Exit the Premises","color":"aqua","bold":false},{"translate":" - ","color":"gray"},{"translate":"Kevin MacLeod","color":"white","bold":false}]
scoreboard players set @s[scores={music_track=10}] music_time 4200

execute if entity @s[scores={music_track=11}] run playsound minecraft:music.hiding_your_reality record @s ~ ~ ~ 0.25
execute if entity @s[scores={music_track=11}] run tellraw @s[tag=!no_music_msg] [{"translate":"Music: ","color":"gold","bold":true},{"translate":"Hiding Your Reality","color":"aqua","bold":false},{"translate":" - ","color":"gray"},{"translate":"Kevin MacLeod","color":"white","bold":false}]
scoreboard players set @s[scores={music_track=11}] music_time 3840

execute if entity @s[scores={music_track=12}] run playsound minecraft:music.into_the_abyss record @s ~ ~ ~ 0.25
execute if entity @s[scores={music_track=12}] run tellraw @s[tag=!no_music_msg] [{"translate":"Music: ","color":"gold","bold":true},{"translate":"Into the Abyss","color":"aqua","bold":false},{"translate":" - ","color":"gray"},{"translate":"TeknoAXE","color":"white","bold":false}]
scoreboard players set @s[scores={music_track=12}] music_time 5060

execute if entity @s[scores={music_track=13}] run playsound minecraft:music.lost_in_the_groove record @s ~ ~ ~ 0.25
execute if entity @s[scores={music_track=13}] run tellraw @s[tag=!no_music_msg] [{"translate":"Music: ","color":"gold","bold":true},{"translate":"Lost in the Groove","color":"aqua","bold":false},{"translate":" - ","color":"gray"},{"translate":"TeknoAXE","color":"white","bold":false}]
scoreboard players set @s[scores={music_track=13}] music_time 4740

execute if entity @s[scores={music_track=14}] run playsound minecraft:music.mechanical_dusk record @s ~ ~ ~ 0.25
execute if entity @s[scores={music_track=14}] run tellraw @s[tag=!no_music_msg] [{"translate":"Music: ","color":"gold","bold":true},{"translate":"Mechanical Dusk","color":"aqua","bold":false},{"translate":" - ","color":"gray"},{"translate":"TeknoAXE","color":"white","bold":false}]
scoreboard players set @s[scores={music_track=14}] music_time 6580

execute if entity @s[scores={music_track=15}] run playsound minecraft:music.new_groove record @s ~ ~ ~ 0.25
execute if entity @s[scores={music_track=15}] run tellraw @s[tag=!no_music_msg] [{"translate":"Music: ","color":"gold","bold":true},{"translate":"New Groove","color":"aqua","bold":false},{"translate":" - ","color":"gray"},{"translate":"TeknoAXE","color":"white","bold":false}]
scoreboard players set @s[scores={music_track=15}] music_time 4720

execute if entity @s[scores={music_track=16}] run playsound minecraft:music.sax_rock_and_roll record @s ~ ~ ~ 0.25
execute if entity @s[scores={music_track=16}] run tellraw @s[tag=!no_music_msg] [{"translate":"Music: ","color":"gold","bold":true},{"translate":"Sax, Rock, and Roll","color":"aqua","bold":false},{"translate":" - ","color":"gray"},{"translate":"Kevin MacLeod","color":"white","bold":false}]
scoreboard players set @s[scores={music_track=16}] music_time 4080

execute if entity @s[scores={music_track=17}] run playsound minecraft:music.son_of_a_rocket record @s ~ ~ ~ 0.25
execute if entity @s[scores={music_track=17}] run tellraw @s[tag=!no_music_msg] [{"translate":"Music: ","color":"gold","bold":true},{"translate":"Son of a Rocket","color":"aqua","bold":false},{"translate":" - ","color":"gray"},{"translate":"Kevin MacLeod","color":"white","bold":false}]
scoreboard players set @s[scores={music_track=17}] music_time 4800

execute if entity @s[scores={music_track=18}] run playsound minecraft:music.special_spotlight record @s ~ ~ ~ 0.25
execute if entity @s[scores={music_track=18}] run tellraw @s[tag=!no_music_msg] [{"translate":"Music: ","color":"gold","bold":true},{"translate":"Special Spotlight","color":"aqua","bold":false},{"translate":" - ","color":"gray"},{"translate":"Kevin MacLeod","color":"white","bold":false}]
scoreboard players set @s[scores={music_track=18}] music_time 3840

execute if entity @s[scores={music_track=19}] run playsound minecraft:music.the_next_sunset record @s ~ ~ ~ 0.25
execute if entity @s[scores={music_track=19}] run tellraw @s[tag=!no_music_msg] [{"translate":"Music: ","color":"gold","bold":true},{"translate":"The Next Sunset","color":"aqua","bold":false},{"translate":" - ","color":"gray"},{"translate":"TeknoAXE","color":"white","bold":false}]
scoreboard players set @s[scores={music_track=19}] music_time 6180

execute if entity @s[scores={music_track=20}] run playsound minecraft:music.underwater_lifecycle record @s ~ ~ ~ 0.25
execute if entity @s[scores={music_track=20}] run tellraw @s[tag=!no_music_msg] [{"translate":"Music: ","color":"gold","bold":true},{"translate":"Underwater Lifecycle","color":"aqua","bold":false},{"translate":" - ","color":"gray"},{"translate":"TeknoAXE","color":"white","bold":false}]
scoreboard players set @s[scores={music_track=20}] music_time 5540

execute if entity @s[scores={music_track=21}] run playsound minecraft:music.voices_of_reason record @s ~ ~ ~ 0.25
execute if entity @s[scores={music_track=21}] run tellraw @s[tag=!no_music_msg] [{"translate":"Music: ","color":"gold","bold":true},{"translate":"Voices of Reason","color":"aqua","bold":false},{"translate":" - ","color":"gray"},{"translate":"TeknoAXE","color":"white","bold":false}]
scoreboard players set @s[scores={music_track=21}] music_time 5640


execute if entity @s[scores={music_track=22}] run playsound minecraft:music.voltaic record @s ~ ~ ~ 0.25
execute if entity @s[scores={music_track=22}] run tellraw @s[tag=!no_music_msg] [{"translate":"Music: ","color":"gold","bold":true},{"translate":"Voltaic","color":"aqua","bold":false},{"translate":" - ","color":"gray"},{"translate":"Kevin MacLeod","color":"white","bold":false}]
scoreboard players set @s[scores={music_track=22}] music_time 3920

execute if entity @s[scores={music_track=23}] run playsound minecraft:music.waves_in_the_sky record @s ~ ~ ~ 0.25
execute if entity @s[scores={music_track=23}] run tellraw @s[tag=!no_music_msg] [{"translate":"Music: ","color":"gold","bold":true},{"translate":"Waves in the Sky","color":"aqua","bold":false},{"translate":" - ","color":"gray"},{"translate":"TeknoAXE","color":"white","bold":false}]
scoreboard players set @s[scores={music_track=23}] music_time 4340

execute if entity @s[scores={music_track=24}] run playsound minecraft:music.werq record @s ~ ~ ~ 0.25
execute if entity @s[scores={music_track=24}] run tellraw @s[tag=!no_music_msg] [{"translate":"Music: ","color":"gold","bold":true},{"translate":"Werq","color":"aqua","bold":false},{"translate":" - ","color":"gray"},{"translate":"Kevin MacLeod","color":"white","bold":false}]
scoreboard players set @s[scores={music_track=24}] music_time 3240

execute if entity @s[scores={music_track=25}] run playsound minecraft:music.mistake_the_getaway record @s ~ ~ ~ 0.25
execute if entity @s[scores={music_track=25}] run tellraw @s[tag=!no_music_msg] [{"translate":"Music: ","color":"gold","bold":true},{"translate":"Mistake the Getaway","color":"aqua","bold":false},{"translate":" - ","color":"gray"},{"translate":"Kevin MacLeod","color":"white","bold":false}]
scoreboard players set @s[scores={music_track=25}] music_time 2440




