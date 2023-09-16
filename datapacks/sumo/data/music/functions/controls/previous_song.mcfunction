##Called to play the previous song

##If we don't have a previous song.
execute unless entity @s[scores={previous_track=1..}] run tellraw @s [{"translate":"⚡ ","color":"gold"},{"translate":"There are no previous songs to play.","color":"red"}]
execute unless entity @s[scores={previous_track=1..}] run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0

execute if entity @s[scores={previous_track=1..}] run tag @s add temporary_tag
execute if entity @s[tag=temporary_tag] run scoreboard players operation @s music_track = @s previous_track
execute if entity @s[tag=temporary_tag] run scoreboard players reset @s previous_track
execute if entity @s[tag=temporary_tag] run function music:play_track

##tag removal
tag @s remove temporary_tag