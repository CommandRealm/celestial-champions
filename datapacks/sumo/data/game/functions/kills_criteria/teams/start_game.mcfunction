##Called at the very start of this mode

##Title
title @a[tag=playing] title [{"text":"Starting","color":"aqua"},{"text":" Soon","color":"white"}]
title @a[tag=playing] subtitle [{"text":" "}]

##General resets
function game:reset_players_before_start


##Set lives to 100
scoreboard players set @a[tag=playing] lives 100

##Joining proper team

##Tag to make players join team
tag @a[tag=playing] add join_team
function game:join_solo_team
tag @a[tag=playing] remove join_team
##update teams suffixes
tag @a[tag=playing] add update_suffix
function game:suffix/update_suffix
tag @a[tag=playing] remove update_suffix

tag @a[tag=playing] add update_prefix
function game:prefix/update_prefix
tag @a[tag=playing] remove update_prefix



##Setting sidebar
execute if entity @a[tag=playing,tag=on_red_team] run scoreboard players set Red: sidebar 0
execute if entity @a[tag=playing,tag=on_blue_team] run scoreboard players set Blue: sidebar 0
execute if entity @a[tag=playing,tag=on_green_team] run scoreboard players set Green: sidebar 0
execute if entity @a[tag=playing,tag=on_yellow_team] run scoreboard players set Yellow: sidebar 0
execute if entity @a[tag=playing,tag=on_cyan_team] run scoreboard players set Cyan: sidebar 0
execute if entity @a[tag=playing,tag=on_orange_team] run scoreboard players set Orange: sidebar 0
execute if entity @a[tag=playing,tag=on_pink_team] run scoreboard players set Pink: sidebar 0
execute if entity @a[tag=playing,tag=on_purple_team] run scoreboard players set Purple: sidebar 0
execute if entity @a[tag=playing,tag=on_white_team] run scoreboard players set White: sidebar 0
execute if entity @a[tag=playing,tag=on_gray_team] run scoreboard players set Gray: sidebar 0


##Updating list objective
scoreboard players operation Criteria: sidebar = $kills_to_win settings
scoreboard players add @a[tag=playing] list 0

##Set criteria
scoreboard players operation $criteria criteria = $kills_to_win settings


##Resetting fighter scores
execute as @a[tag=playing] at @s run function fighter:reset_scores

##Giving back passive potion effects
execute as @a[tag=playing] at @s run function fighter:passive_effects

##Modifying sidebar and list objectives to have a fancy title
scoreboard objectives modify sidebar displayname [{"text":"☀","color":"white","bold":false},{"text":" Kills ","color":"aqua","bold":true},{"text":"☀","color":"white","bold":false}]
scoreboard objectives modify list displayname [{"text":"☀","color":"aqua","bold":false},{"text":" Deaths ","color":"white","bold":true},{"text":"☀","color":"aqua","bold":false}]