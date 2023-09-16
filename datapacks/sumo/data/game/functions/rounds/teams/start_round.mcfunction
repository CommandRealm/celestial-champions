##Function rounds at the start of every ROUND

##Title
scoreboard players add $rounds game 1
title @a[tag=playing] title [{"translate":"Round: ","color":"aqua"},{"score":{"objective":"game","name":"$rounds"},"color":"white","bold":true}]
title @a[tag=playing] subtitle [{"translate":" "}]
##General resets
function game:reset_players_before_start



execute as @a[tag=playing,scores={handicap=1..}] if score @s handicap < @s lives run scoreboard players operation @s lives = @s handicap

execute as @a[tag=playing] at @s run scoreboard players operation @s sidebar = @s lives

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






##Modifying sidebar and list objectives to have a fancy title
scoreboard objectives modify sidebar displayname [{"translate":"☀","color":"white","bold":false},{"translate":" Lives ","color":"aqua","bold":true},{"translate":"☀","color":"white","bold":false}]
scoreboard objectives modify list displayname [{"translate":"☀","color":"aqua","bold":false},{"translate":" Rounds Won ","color":"white","bold":true},{"translate":"☀","color":"aqua","bold":false}]

##Updating list objective
scoreboard players operation Criteria: list = $rounds_to_win settings
scoreboard players add @a[tag=playing] list 0

##Set criteria
scoreboard players operation $criteria criteria = $rounds_to_win settings


##Resetting fighter scores
execute as @a[tag=playing] at @s run function fighter:reset_scores

##Giving back passive potion effects
execute as @a[tag=playing] at @s run function fighter:passive_effects