##Ending function of the game

##Unlocking cosmetics
execute as @a[tag=playing] at @s run function cosmetic:potential_unlock

##Ready scores
scoreboard players set @a[tag=playing] ready 1



##making it so this resets spectators.
tag @a[team=spectator] add playing

scoreboard players reset @a[tag=playing] drop_ready_book

##Mode specific functions
execute if score $mode settings matches 2 if score $teams settings matches 1 run function game:kills_timer/display_scoreboard
execute if score $mode settings matches 2 if score $teams settings matches 2.. run function game:kills_timer/teams/display_scoreboard
execute if score $mode settings matches 3 run function game:duels/display_scoreboard


##Sets game state to 0
scoreboard players set $game state 0

title @a[tag=playing] times 0 25 5

##Resets players
effect clear @a[tag=playing]
gamemode adventure @a[tag=playing]
clear @a[tag=playing]
tp @a[tag=playing] 0 67 0 0 -10

##giving people tag to rejoin colored teams
tag @a[tag=playing,tag=on_red_team] add rejoin_red
tag @a[tag=playing,tag=on_blue_team] add rejoin_blue
tag @a[tag=playing,tag=on_yellow_team] add rejoin_yellow
tag @a[tag=playing,tag=on_green_team] add rejoin_green
tag @a[tag=playing,tag=on_cyan_team] add rejoin_cyan
tag @a[tag=playing,tag=on_orange_team] add rejoin_orange
tag @a[tag=playing,tag=on_pink_team] add rejoin_pink
tag @a[tag=playing,tag=on_purple_team] add rejoin_purple
tag @a[tag=playing,tag=on_white_team] add rejoin_white
tag @a[tag=playing,tag=on_gray_team] add rejoin_gray

execute as @a[tag=playing] at @s run function general:rank

##if teams are on
execute if score $teams settings matches 2.. run scoreboard objectives add select_team trigger


##Removing tags
tag @a[tag=playing] remove is_fighter
tag @a[tag=playing] remove needs_costume
tag @a[tag=playing] remove playing

##Kill entities
kill @e[tag=die]
kill @e[type=area_effect_cloud,tag=map_marker]
kill @e[type=item,x=0,y=76,z=83,distance=..30]

##Removing forceload
forceload remove all


##Sidebar reset
scoreboard objectives setdisplay sidebar

scoreboard objectives setdisplay list

##Belowname reset
scoreboard objectives setdisplay belowName


##Objective resets
scoreboard players reset $end cooldown


bossbar set minecraft:game visible false



##Removing team tags
tag @a remove on_red_team
tag @a remove on_blue_team
tag @a remove on_yellow_team
tag @a remove on_green_team
tag @a remove on_cyan_team
tag @a remove on_orange_team
tag @a remove on_pink_team
tag @a remove on_purple_team
tag @a remove on_white_team
tag @a remove on_gray_team




##if there is a random map score, set it to be THE map score
execute if score $random_map settings matches -3..0 run scoreboard players operation $map settings = $random_map settings

advancement grant @a[advancements={advancements:custom/all_kills=false,advancements:custom/kill=true,advancements:custom/die=true,advancements:custom/3_kills=true,advancements:custom/5_kills=true,advancements:custom/rip=true,advancements:custom/recovery=true}] only advancements:custom/all_kills
advancement grant @a[advancements={advancements:custom/all_games=false,advancements:custom/play_game=true,advancements:custom/win_game=true,advancements:custom/play_duels=true,advancements:custom/flawless=true,advancements:custom/10_games=true,advancements:custom/competitive=true}] only advancements:custom/all_games


clear @a knowledge_book

data modify entity @e[type=area_effect_cloud,tag=start_button_text,limit=1] CustomNameVisible set value 1b

##Disabling the fighter nameplate
data modify entity @e[type=area_effect_cloud,tag=competitive_fighter_nameplate,limit=1] CustomNameVisible set value 0b



##Competitive temp
kill @e[tag=competitive_mode_temp]

##If this was competitive mode, set the map back to what it was.
execute if score $mode settings matches 4 run scoreboard players operation $map settings = $saved_map game