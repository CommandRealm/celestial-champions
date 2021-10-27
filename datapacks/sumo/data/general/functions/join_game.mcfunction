##called whenever a player joins the game

##Basic functions
tp @s 0 67 0 0 -10
spawnpoint @s 0 67 0
scoreboard players set @s has_joined 1
clear @s
gamemode adventure @s
title @s times 0 25 5
effect clear @s

##Reset scoreboards
scoreboard players set @s ready 1
advancement revoke @s only advancements:damage/damage_dealt
scoreboard players reset @s damage_taken

##Remove tags
tag @s remove is_fighter
tag @s remove needs_costume
tag @s remove playing

##Removing team tags
tag @s remove on_red_team
tag @s remove on_blue_team
tag @s remove on_yellow_team
tag @s remove on_green_team
tag @s remove on_cyan_team
tag @s remove on_orange_team
tag @s remove on_pink_team
tag @s remove on_purple_team
tag @s remove on_white_team
tag @s remove on_gray_team

tag @s remove rejoin_red
tag @s remove rejoin_blue
tag @s remove rejoin_yellow
tag @s remove rejoin_green
tag @s remove rejoin_cyan
tag @s remove rejoin_orange
tag @s remove rejoin_pink
tag @s remove rejoin_purple
tag @s remove rejoin_white
tag @s remove rejoinw_gray



##resetting our music
scoreboard players set @s[tag=!pause_music] music_time 1
scoreboard players set @s[tag=!pause_music] music_cooldown 1
scoreboard players reset @s previous_track

tag @s add dont_update_previous_track

##Reset if necessary
execute unless entity @s[scores={resetting=1}] run function general:reset

##Join team
function general:rank

##Resetting bossbar
bossbar set minecraft:lobby players @a[tag=!playing,team=!spectator]

##Giving us tag to look for intro animation
tag @s add intro_text_call
scoreboard players reset @s intro


##Sound for when we join
execute as @a at @s run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1000 1.333333



##Starting message
tellraw @s [{"text":"☀ ","color":"aqua","bold":false},{"text":"Welcome to ","color":"white"},{"text":"Celestial","color":"white","bold":true},{"text":" Champions","color":"aqua","bold":true},{"text":". \nThe goal of Celestial Champions is to push your opponents off of the edge and into the void.","color":"white"},{"text":"\nYou can crouch in game to activate an extra jump or drop items to activate abilities.","color":"aqua"},{"text":"\nThe in-depth tutorial is to your right. You can read about all of the fighter abilities on the bridge.","color":"white"}]

##Resetting our sidebar score
scoreboard players reset @s sidebar