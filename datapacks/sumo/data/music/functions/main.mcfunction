##Main music function. Will play the game's soundtrack.

scoreboard players remove @a[scores={music_time=1..}] music_time 1

scoreboard players remove @a[tag=!pause_music,scores={music_cooldown=1..}] music_cooldown 1


execute as @a[scores={music_time=..0}] at @s run function music:timer_over


##Controls
execute as @a at @s unless entity @s[nbt={Inventory:[{Slot:25b,tag:{toggle_play_button:1b}}]}] run function music:controls/check_play_toggle
execute as @a at @s unless entity @s[nbt={Inventory:[{Slot:24b,tag:{previous_button:1b}}]}] run function music:controls/check_previous_song
execute as @a at @s unless entity @s[nbt={Inventory:[{Slot:26b,tag:{skip_button:1b}}]}] run function music:controls/check_skip_song
