##Called at the very start of this mode

##Title
title @a[tag=playing] title [{"translate":"Starting","color":"aqua"},{"translate":" Soon","color":"white"}]
title @a[tag=playing] subtitle [{"translate":" "}]

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
scoreboard players add @a[tag=playing] list 0

##Setting criteria to 0
scoreboard players set @a[tag=playing] criteria 0


##Set boss bar
bossbar set minecraft:game name [{"translate":"=","color":"aqua","bold":false},{"translate":"-","color":"white","bold":false},{"translate":"=","color":"aqua","bold":false},{"translate":" Time ","color":"aqua","bold":true},{"translate":"Remaining ","color":"white","bold":true},{"translate":"=","color":"aqua","bold":false},{"translate":"-","color":"white","bold":false},{"translate":"=","color":"aqua","bold":false}]
bossbar set minecraft:game players @a[tag=playing]
execute store result bossbar minecraft:game max run scoreboard players get $set_kills_timer settings
execute store result bossbar minecraft:game value run scoreboard players get $set_kills_timer settings


##Set timer to criteria
scoreboard players operation $time criteria = $set_kills_timer settings

##Resetting fighter scores
execute as @a[tag=playing] at @s run function fighter:reset_scores

##Giving back passive potion effects
execute as @a[tag=playing] at @s run function fighter:passive_effects

##Modifying sidebar and list objectives to have a fancy title
scoreboard objectives modify sidebar displayname [{"translate":"☀","color":"white","bold":false},{"translate":" Kills ","color":"aqua","bold":true},{"translate":"☀","color":"white","bold":false}]
scoreboard objectives modify list displayname [{"translate":"☀","color":"aqua","bold":false},{"translate":" Deaths ","color":"white","bold":true},{"translate":"☀","color":"aqua","bold":false}]