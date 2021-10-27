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
scoreboard players set @a[tag=playing] sidebar 0


##Updating list objective
scoreboard players operation Criteria: sidebar = $kills_to_win settings
scoreboard players add @a[tag=playing] list 0

##Setting criteria to 0
scoreboard players set @a[tag=playing] criteria 0


##Set criteria
scoreboard players operation $criteria criteria = $kills_to_win settings


##Resetting fighter scores
execute as @a[tag=playing] at @s run function fighter:reset_scores

##Giving back passive potion effects
execute as @a[tag=playing] at @s run function fighter:passive_effects

##Modifying sidebar and list objectives to have a fancy title
scoreboard objectives modify sidebar displayname [{"text":"☀","color":"white","bold":false},{"text":" Kills ","color":"aqua","bold":true},{"text":"☀","color":"white","bold":false}]
scoreboard objectives modify list displayname [{"text":"☀","color":"aqua","bold":false},{"text":" Deaths ","color":"white","bold":true},{"text":"☀","color":"aqua","bold":false}]