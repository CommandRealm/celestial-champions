##Function rounds at the start of every ROUND

##If we're a random fighter, randomize our fighter
execute as @a[tag=playing] at @s if entity @s[tag=random_fighter] run function fighter:randomize_fighter

##Title
scoreboard players add $rounds game 1
title @a[tag=playing] title [{"text":"Round: ","color":"aqua"},{"score":{"objective":"game","name":"$rounds"},"color":"white","bold":true}]
title @a[tag=playing] subtitle [{"text":" "}]
##General resets
function game:reset_players_before_start

##Tags
tag @a[tag=playing] add needs_costume


##Setting lives
scoreboard players set @a[tag=playing] lives 2


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



scoreboard objectives remove cur_deaths
scoreboard objectives add cur_deaths dummy
scoreboard players set @a[tag=playing] cur_deaths 0




##Modifying sidebar and list objectives to have a fancy title
scoreboard objectives modify sidebar displayname [{"text":"☀","color":"white","bold":false},{"text":" Lives ","color":"aqua","bold":true},{"text":"☀","color":"white","bold":false}]
scoreboard objectives modify list displayname [{"text":"☀","color":"aqua","bold":false},{"text":" Rounds Won ","color":"white","bold":true},{"text":"☀","color":"aqua","bold":false}]

scoreboard players set @a[tag=playing] sidebar 2

scoreboard objectives setdisplay sidebar sidebar
scoreboard objectives setdisplay list list

##Updating list objective
scoreboard players set Criteria: list 2
scoreboard players add @a[tag=playing] list 0

##Resetting fighter scores
execute as @a[tag=playing] at @s run function fighter:reset_scores

##Giving back passive potion effects
execute as @a[tag=playing] at @s run function fighter:passive_effects

data merge storage game:comp {cur:{w_fighter:'',l_fighter:'',w_deaths:"",l_deaths:"",w:"",l:""}}