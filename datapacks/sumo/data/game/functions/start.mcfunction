##Function for the when the game first starts.
scoreboard players set $game state 1

scoreboard players set $time game 0



##End cooldown (This is for when podiums will be viewed.)
scoreboard players reset $end cooldown

tag @a[scores={ready=1..}] add playing

##clearing out tags
tag @a[tag=playing] remove needs_costume
tag @a[tag=playing] remove is_fighter

##Team distribution
tag @a remove on_team
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
execute as @a[tag=playing,team=teams_red] at @s run function game:team_distribution/join_red
execute as @a[tag=playing,team=teams_blue] at @s run function game:team_distribution/join_blue
execute as @a[tag=playing,team=teams_yellow] at @s run function game:team_distribution/join_yellow
execute as @a[tag=playing,team=teams_green] at @s run function game:team_distribution/join_green
execute as @a[tag=playing,team=teams_cyan] at @s run function game:team_distribution/join_cyan
execute as @a[tag=playing,team=teams_orange] at @s run function game:team_distribution/join_orange
execute as @a[tag=playing,team=teams_pink] at @s run function game:team_distribution/join_pink
execute as @a[tag=playing,team=teams_purple] at @s run function game:team_distribution/join_purple
execute as @a[tag=playing,team=teams_white] at @s run function game:team_distribution/join_white
execute as @a[tag=playing,team=teams_gray] at @s run function game:team_distribution/join_gray

##Making sure we have people on two teams

execute if score $teams settings matches 2.. if entity @a[tag=playing,tag=on_red_team] unless entity @a[tag=playing,tag=on_blue_team] unless entity @a[tag=playing,tag=on_yellow_team] unless entity @a[tag=playing,tag=on_green_team] unless entity @a[tag=playing,tag=on_cyan_team] unless entity @a[tag=playing,tag=on_orange_team] unless entity @a[tag=playing,tag=on_pink_team] unless entity @a[tag=playing,tag=on_purple_team] unless entity @a[tag=playing,tag=on_white_team] unless entity @a[tag=playing,tag=on_gray_team] as @r[tag=playing,tag=on_red_team] at @s run function game:team_distribution/join_blue
execute if score $teams settings matches 2.. if entity @a[tag=playing,tag=on_blue_team] unless entity @a[tag=playing,tag=on_red_team] unless entity @a[tag=playing,tag=on_yellow_team] unless entity @a[tag=playing,tag=on_green_team] unless entity @a[tag=playing,tag=on_cyan_team] unless entity @a[tag=playing,tag=on_orange_team] unless entity @a[tag=playing,tag=on_pink_team] unless entity @a[tag=playing,tag=on_purple_team] unless entity @a[tag=playing,tag=on_white_team] unless entity @a[tag=playing,tag=on_gray_team] as @r[tag=playing,tag=on_blue_team] at @s run function game:team_distribution/join_red

execute if score $teams settings matches 2.. if entity @a[tag=playing,tag=!on_team] run function game:team_distribution/distribute

##saving the map
execute if score $mode settings matches 4 run scoreboard players operation $saved_map game = $map settings

##Random map functions
execute if score $random_map settings matches -3 run function game:random_map/auto
execute if score $random_map settings matches -2 run function game:random_map/small
execute if score $random_map settings matches -1 run function game:random_map/medium
execute if score $random_map settings matches 0 run function game:random_map/large




##Tp
tp @a[tag=playing] 0 0 0 0 90

##If we're a random fighter, randomize our fighter
execute as @a[tag=playing] at @s if entity @s[tag=random_fighter] run function fighter:randomize_fighter

##Stat additions
scoreboard players set @s set_arrow_timer -1
scoreboard players set @s arrow_timer -1
scoreboard players add @a[tag=playing] stats_played 1

forceload remove all

##Solo rounds reset scores
scoreboard players set $rounds game 0

##Reset the objective on the sidebar
scoreboard objectives setdisplay sidebar

##Remove and recreate sidebar objective

scoreboard objectives remove sidebar
scoreboard objectives add sidebar dummy

##Remove and recreate list objective
scoreboard objectives remove list
scoreboard objectives add list dummy

##Remove and recreate bossbar
bossbar remove minecraft:game
bossbar add minecraft:game "temporary name"
bossbar set minecraft:game color blue
bossbar set minecraft:game players
bossbar set minecraft:game visible false

##Setting belowName objective
scoreboard objectives setdisplay belowName damage_percent

##Remove and recreate criteria objective
scoreboard objectives remove criteria
scoreboard objectives add criteria dummy

##Remove and recreate criteria objective
scoreboard objectives remove fake_criteria
scoreboard objectives add fake_criteria dummy

##Reset subtitle 
title @a[tag=playing] subtitle [{"translate":" "}]

##Give players tags
execute unless score $mode settings matches 4 run tag @a[tag=playing] add needs_costume


##Giving and taking advancements
advancement grant @a only advancements:damage/damage_dealt
advancement revoke @a only advancements:damage/damage_dealt

advancement grant @a only advancements:damage/direct_damage
advancement revoke @a only advancements:damage/direct_damage

advancement grant @a only advancements:damage/invalid_kb_hit
advancement revoke @a only advancements:damage/invalid_kb_hit

##Giving and taking damage advancements
advancement grant @a only advancements:damage/damaged_by_1
advancement grant @a only advancements:damage/damaged_by_2
advancement grant @a only advancements:damage/damaged_by_3
advancement grant @a only advancements:damage/damaged_by_4
advancement grant @a only advancements:damage/damaged_by_5
advancement grant @a only advancements:damage/damaged_by_6
advancement grant @a only advancements:damage/damaged_by_7
advancement grant @a only advancements:damage/damaged_by_8
advancement grant @a only advancements:damage/damaged_by_9
advancement grant @a only advancements:damage/damaged_by_10
advancement grant @a only advancements:damage/damaged_by_11
advancement grant @a only advancements:damage/damaged_by_12
advancement grant @a only advancements:damage/damaged_by_13
advancement grant @a only advancements:damage/damaged_by_14
advancement grant @a only advancements:damage/damaged_by_15
advancement grant @a only advancements:damage/damaged_by_16
advancement grant @a only advancements:damage/damaged_by_17
advancement grant @a only advancements:damage/damaged_by_18
advancement grant @a only advancements:damage/damaged_by_19
advancement grant @a only advancements:damage/damaged_by_20
advancement grant @a only advancements:damage/damaged_by_21
advancement grant @a only advancements:damage/damaged_by_22
advancement grant @a only advancements:damage/damaged_by_23
advancement grant @a only advancements:damage/damaged_by_24
advancement grant @a only advancements:damage/damaged_by_25
advancement grant @a only advancements:damage/damaged_by_26
advancement grant @a only advancements:damage/damaged_by_27
advancement grant @a only advancements:damage/damaged_by_28
advancement grant @a only advancements:damage/damaged_by_29
advancement grant @a only advancements:damage/damaged_by_30
advancement grant @a only advancements:damage/damaged_by_31
advancement grant @a only advancements:damage/damaged_by_32
advancement grant @a only advancements:damage/damaged_by_33
advancement grant @a only advancements:damage/damaged_by_34
advancement grant @a only advancements:damage/damaged_by_35
advancement grant @a only advancements:damage/damaged_by_36
advancement grant @a only advancements:damage/damaged_by_37
advancement grant @a only advancements:damage/damaged_by_38
advancement grant @a only advancements:damage/damaged_by_39
advancement grant @a only advancements:damage/damaged_by_40
advancement grant @a only advancements:damage/damaged_by_41
advancement grant @a only advancements:damage/damaged_by_42
advancement grant @a only advancements:damage/damaged_by_43
advancement grant @a only advancements:damage/damaged_by_44
advancement grant @a only advancements:damage/damaged_by_45
advancement grant @a only advancements:damage/damaged_by_46
advancement grant @a only advancements:damage/damaged_by_47
advancement grant @a only advancements:damage/damaged_by_48
advancement grant @a only advancements:damage/damaged_by_49
advancement grant @a only advancements:damage/damaged_by_50

advancement grant @a only advancements:damage/additional_damage_1
advancement grant @a only advancements:damage/additional_damage_2
advancement grant @a only advancements:damage/additional_damage_3
advancement grant @a only advancements:damage/additional_damage_4
advancement grant @a only advancements:damage/additional_damage_5
advancement grant @a only advancements:damage/additional_damage_6
advancement grant @a only advancements:damage/additional_damage_7
advancement grant @a only advancements:damage/additional_damage_8
advancement grant @a only advancements:damage/additional_damage_9
advancement grant @a only advancements:damage/additional_damage_10


advancement revoke @a only advancements:damage/damaged_by_1
advancement revoke @a only advancements:damage/damaged_by_2
advancement revoke @a only advancements:damage/damaged_by_3
advancement revoke @a only advancements:damage/damaged_by_4
advancement revoke @a only advancements:damage/damaged_by_5
advancement revoke @a only advancements:damage/damaged_by_6
advancement revoke @a only advancements:damage/damaged_by_7
advancement revoke @a only advancements:damage/damaged_by_8
advancement revoke @a only advancements:damage/damaged_by_9
advancement revoke @a only advancements:damage/damaged_by_10
advancement revoke @a only advancements:damage/damaged_by_11
advancement revoke @a only advancements:damage/damaged_by_12
advancement revoke @a only advancements:damage/damaged_by_13
advancement revoke @a only advancements:damage/damaged_by_14
advancement revoke @a only advancements:damage/damaged_by_15
advancement revoke @a only advancements:damage/damaged_by_16
advancement revoke @a only advancements:damage/damaged_by_17
advancement revoke @a only advancements:damage/damaged_by_18
advancement revoke @a only advancements:damage/damaged_by_19
advancement revoke @a only advancements:damage/damaged_by_20
advancement revoke @a only advancements:damage/damaged_by_21
advancement revoke @a only advancements:damage/damaged_by_22
advancement revoke @a only advancements:damage/damaged_by_23
advancement revoke @a only advancements:damage/damaged_by_24
advancement revoke @a only advancements:damage/damaged_by_25
advancement revoke @a only advancements:damage/damaged_by_26
advancement revoke @a only advancements:damage/damaged_by_27
advancement revoke @a only advancements:damage/damaged_by_28
advancement revoke @a only advancements:damage/damaged_by_29
advancement revoke @a only advancements:damage/damaged_by_30
advancement revoke @a only advancements:damage/damaged_by_31
advancement revoke @a only advancements:damage/damaged_by_32
advancement revoke @a only advancements:damage/damaged_by_33
advancement revoke @a only advancements:damage/damaged_by_34
advancement revoke @a only advancements:damage/damaged_by_35
advancement revoke @a only advancements:damage/damaged_by_36
advancement revoke @a only advancements:damage/damaged_by_37
advancement revoke @a only advancements:damage/damaged_by_38
advancement revoke @a only advancements:damage/damaged_by_39
advancement revoke @a only advancements:damage/damaged_by_40
advancement revoke @a only advancements:damage/damaged_by_41
advancement revoke @a only advancements:damage/damaged_by_42
advancement revoke @a only advancements:damage/damaged_by_43
advancement revoke @a only advancements:damage/damaged_by_44
advancement revoke @a only advancements:damage/damaged_by_45
advancement revoke @a only advancements:damage/damaged_by_46
advancement revoke @a only advancements:damage/damaged_by_47
advancement revoke @a only advancements:damage/damaged_by_48
advancement revoke @a only advancements:damage/damaged_by_49
advancement revoke @a only advancements:damage/damaged_by_50

advancement revoke @a only advancements:damage/additional_damage_1
advancement revoke @a only advancements:damage/additional_damage_2
advancement revoke @a only advancements:damage/additional_damage_3
advancement revoke @a only advancements:damage/additional_damage_4
advancement revoke @a only advancements:damage/additional_damage_5
advancement revoke @a only advancements:damage/additional_damage_6
advancement revoke @a only advancements:damage/additional_damage_7
advancement revoke @a only advancements:damage/additional_damage_8
advancement revoke @a only advancements:damage/additional_damage_9
advancement revoke @a only advancements:damage/additional_damage_10


##Reset blinking
execute unless score $mode settings matches 4 as @a[tag=playing] at @s run function fighter:costume/blink/stop_blinking


##Reset kill streak obj
scoreboard objectives remove kill_streak
scoreboard objectives add kill_streak dummy


##Resetting bossbar
bossbar set minecraft:lobby players @a[tag=!playing,team=!spectator]

##Resetting intro for those who are now playing
execute as @a[tag=playing] at @s run function lobby:intro/over

execute as @a[tag=playing] at @s run function item:random_time


##If time is set to random
execute if score $time_of_day settings matches 0 run function options:time_of_day/random_time

##Resetting lobby team things
execute as @a[tag=!playing] at @s run function general:rank
clear @a[tag=!playing] written_book
scoreboard objectives remove select_team


clear @a[tag=!playing] knowledge_book

##Map message
execute if score $mode settings matches 0..2 run function game:map_message

##last death time
scoreboard objectives remove last_death_time
scoreboard objectives add last_death_time dummy


##advancement
advancement grant @a[tag=playing] only advancements:custom/play_game
advancement grant @a[tag=playing,scores={stats_played=10..}] only advancements:custom/10_games

execute if score $mode settings matches 3 run advancement grant @a[tag=playing] only advancements:custom/play_duels

##specific fighter advancements
advancement grant @a[tag=playing,scores={fighter=0}] only advancements:custom/theo
advancement grant @a[tag=playing,scores={fighter=1}] only advancements:custom/zombie
advancement grant @a[tag=playing,scores={fighter=2}] only advancements:custom/skeleton
advancement grant @a[tag=playing,scores={fighter=3}] only advancements:custom/creeper
advancement grant @a[tag=playing,scores={fighter=4}] only advancements:custom/spider
advancement grant @a[tag=playing,scores={fighter=5}] only advancements:custom/chicken
advancement grant @a[tag=playing,scores={fighter=6}] only advancements:custom/enderman
advancement grant @a[tag=playing,scores={fighter=7}] only advancements:custom/incend
advancement grant @a[tag=playing,scores={fighter=8}] only advancements:custom/drakier
advancement grant @a[tag=playing,scores={fighter=9}] only advancements:custom/gracea
advancement grant @a[tag=playing,scores={fighter=10}] only advancements:custom/callidus
advancement grant @a[tag=playing,scores={fighter=11}] only advancements:custom/gene
advancement grant @a[tag=playing,scores={fighter=12}] only advancements:custom/melon_man
advancement grant @a[tag=playing,scores={fighter=13}] only advancements:custom/blaze
advancement grant @a[tag=playing,scores={fighter=14}] only advancements:custom/slime
advancement grant @a[tag=playing,scores={fighter=15}] only advancements:custom/malice
advancement grant @a[tag=playing,scores={fighter=16}] only advancements:custom/arthor
advancement grant @a[tag=playing,scores={fighter=17}] only advancements:custom/guardian
advancement grant @a[advancements={advancements:custom/all_characters=false,advancements:custom/theo=true,advancements:custom/incend=true,advancements:custom/drakier=true,advancements:custom/gracea=true,advancements:custom/callidus=true,advancements:custom/melon_man=true,advancements:custom/gene=true,advancements:custom/malice=true,advancements:custom/zombie=true,advancements:custom/skeleton=true,advancements:custom/spider=true,advancements:custom/creeper=true,advancements:custom/enderman=true,advancements:custom/chicken=true,advancements:custom/slime=true,advancements:custom/blaze=true,advancements:custom/arthor=true,advancements:custom/guardian=true}] only advancements:custom/all_characters
execute as @a[advancements={advancements:custom/all_characters=true}] at @s run function cosmetic:variants/unlock_all_variants

scoreboard players set $result calculate 1
scoreboard players operation $fighters_in_use calculate = @r[tag=playing] fighter
execute as @a[tag=playing] at @s unless score $fighters_in_use calculate = @s fighter run scoreboard players set $result calculate -100

##give adv
execute if score $item_rate settings matches 0 if score $result calculate matches 1 run advancement grant @a[tag=playing] only advancements:custom/competitive

##competitive start
execute if score $mode settings matches 4 run function game:competitive/start

##button
setblock 0 67 26 air destroy
scoreboard players set $button pregame 5

data modify entity @e[type=area_effect_cloud,tag=start_button_text,limit=1] CustomNameVisible set value 0b
data modify entity @e[type=area_effect_cloud,tag=start_button_text,limit=1] CustomName set value '[{"translate":"- ","color":"gray"},{"translate":"☀ ","color":"aqua"},{"translate":"Start","color":"gold","bold":true},{"translate":" ☀","color":"aqua"},{"translate":" -","color":"gray"}]'