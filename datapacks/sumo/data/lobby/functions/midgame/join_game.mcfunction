##called when we press join
execute if score $mode settings matches 0 run team join dead
tellraw @s [{"text":"You will join the game as soon as possible.","color":"white"}]

gamemode spectator @s
tag @s add playing
tag @s add is_fighter
tag @s add needs_costume
clear @s
clear @a[tag=!playing] knowledge_book
scoreboard players add @s stats_played 1

##if we're a random fighter
execute if entity @s[tag=random_fighter] run function fighter:randomize_fighter

##Stats
function fighter:get_stats


##id generation
scoreboard players set $id_check calculate 0
function lobby:midgame/get_unique_id

##Bossbar
bossbar set minecraft:lobby players @a[tag=!playing,team=!spectator]
execute if score $mode settings matches 2 run bossbar set minecraft:game players @a[tag=playing]

##tps
tp @s @r[tag=playing,gamemode=spectator]
tp @s @r[tag=playing,gamemode=adventure]

#If teams are on
execute if score $teams settings matches 2.. run tag @s add on_red_team
execute if score $teams settings matches 2.. run tag @s add on_team

##Depending on mode do different things
execute if score $mode settings matches 1 run scoreboard players set @s death_cooldown 20

execute if score $mode settings matches 2 run scoreboard players set @s death_cooldown 20

##sound
execute at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 10000 1.25

##Lives
scoreboard players set @s lives 100
execute if score $mode settings matches 0 run scoreboard players set @s lives 0

##Tag to make players join team
execute if score $mode settings matches 1..2 run tag @s add join_team
execute if score $mode settings matches 1..2 run function game:join_solo_team
execute if score $mode settings matches 1..2 run tag @s remove join_team
##update teams suffixes
execute if score $mode settings matches 1..2 run tag @s add update_suffix
execute if score $mode settings matches 1..2 run function game:suffix/update_suffix
execute if score $mode settings matches 1..2 run tag @s remove update_suffix

execute if score $mode settings matches 1..2 run tag @s add update_prefix
execute if score $mode settings matches 1..2 run function game:prefix/update_prefix
execute if score $mode settings matches 1..2 run tag @s remove update_prefix


##Giving id tags
function game:assign_players_id_tags