##Function called by the player who died


##Particles (done before tp)
particle minecraft:damage_indicator ~ ~ ~ 0.25 0.25 0.25 0.5 10

##Resetting the player
gamemode spectator @s
tp @s @e[type=area_effect_cloud,tag=map_marker,sort=nearest,limit=1]
execute at @s run tp @s ~ 90 ~ ~ 0
clear @s


##death animation
function cosmetic:death_animation/die



##There should be a tellraw here that says player killed @s



##Remove life
scoreboard players remove @s lives 1

##
execute if entity @s[scores={lives=..0}] run function game:out_of_lives
##score
scoreboard players set @s[scores={lives=1..}] death_cooldown 100
##Tellraws
execute unless score $mode settings matches 1..3 run tellraw @s[scores={lives=2..}] [{"text":"You have died! ","color":"red"},{"text":"You have ","color":"aqua"},{"score":{"objective":"lives","name":"@s"},"color":"white","bold":true},{"text":" lives remaining.","color":"aqua"}]
execute unless score $mode settings matches 3 run tellraw @s[scores={lives=1}] [{"text":"You have died! ","color":"red"},{"text":"You have ","color":"aqua"},{"score":{"objective":"lives","name":"@s"},"color":"white","bold":true},{"text":" life remaining.","color":"aqua"}]
execute unless score $mode settings matches 3 run tellraw @s[scores={lives=0}] [{"text":"You have died! ","color":"red"},{"text":"You are now out of the game.","color":"aqua"}]


##add cur death if this is comp
execute if score $mode settings matches 4 run scoreboard players add @s cur_deaths 1

##Update suffix if necessary

tag @s add update_suffix

execute unless score $mode settings matches 1..2 if entity @s[scores={lives=1..}] run function game:suffix/update_suffix

tag @a remove update_suffix


##sounds
execute at @s run playsound minecraft:entity.player.death master @s



##Sidebar updates 

##Round sidebar update
execute if score $mode settings matches 0 run scoreboard players operation @s[tag=playing] sidebar = @s lives
execute if score $mode settings matches 4 run scoreboard players operation @s[tag=playing] sidebar = @s lives

##Reset actionbar
title @s actionbar {"text":" "}




##Death message

##remove killed tag

##Add killed tag
tag @s add killed

##Remove killer tag
tag @a remove killer




##Figuring out whose id score matches my damaged id score

##Resetting calculate
scoreboard players set @a[tag=is_fighter,tag=playing] calculate -10000

##Copying id to calculate
execute as @a[tag=is_fighter,tag=playing] at @s run scoreboard players operation @s calculate = @s id

##Subtracting players ids from the damaged id (Whoever has 0 has the matching id)
execute as @a[tag=is_fighter,tag=playing] at @s run scoreboard players operation @s calculate -= @a[tag=killed,limit=1] damaged_id


##Tagging the killer
tag @a[scores={calculate=0},tag=is_fighter,tag=playing] add killer


##advancements
advancement grant @a[tag=killer] only advancements:custom/kill
advancement grant @s only advancements:custom/die
advancement grant @s[scores={last_death_time=..600}] only advancements:custom/rip

##Removing killer tag from self (if it is ourself)
tag @s remove killer

##Changing teams to remove prefix
team join red @s
team join aqua @a[tag=killer]

##Tellraws (First one if for if you were killed by a player. Second is for if you died by your own accord) (Second set of two is for being eliminated)
execute unless score $mode settings matches 3 if entity @a[tag=killer] if entity @s[scores={lives=1..}] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":" was killed by ","color":"gold"},{"selector":"@a[tag=killer,limit=1]"}]

execute unless score $mode settings matches 3 unless entity @a[tag=killer] if entity @s[scores={lives=1..}] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":" has died.","color":"gold"}]


execute unless score $mode settings matches 3 if entity @a[tag=killer] if entity @s[scores={lives=0}] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":" was ","color":"gold"},{"text":"ELIMINATED ","bold":true,"color":"red"},{"text":"by ","color":"gold"},{"selector":"@a[tag=killer,limit=1]"}]

execute unless score $mode settings matches 3 unless entity @a[tag=killer] if entity @s[scores={lives=0}] run tellraw @a[tag=playing] [{"selector":"@s"},{"text":" has been ","color":"gold"},{"text":"ELIMINATED!","color":"red","bold":true}]

##Kills streaks
scoreboard players add @a[tag=playing,tag=killer] kill_streak 1
execute as @a[tag=playing,tag=killer,scores={kill_streak=3}] at @s unless score $mode settings matches 3 run tellraw @a[tag=playing] [{"text":"🗡","color":"red"},{"text":": ","color":"dark_red"},{"selector":"@s"},{"text":" has a kill streak of ","color":"#ff9600"},{"text":"3","color":"#ff4b00"},{"text":"!","color":"red"}]
execute as @a[tag=playing,tag=killer,scores={kill_streak=5}] at @s unless score $mode settings matches 3 run tellraw @a[tag=playing] [{"text":"🗡","color":"red"},{"text":": ","color":"dark_red"},{"selector":"@s"},{"text":" has a kill streak of ","color":"#ff7800"},{"text":"5","color":"#ff3c00"},{"text":"!","color":"red"}]
execute as @a[tag=playing,tag=killer,scores={kill_streak=8}] at @s unless score $mode settings matches 3 run tellraw @a[tag=playing] [{"text":"🗡","color":"red"},{"text":": ","color":"dark_red"},{"selector":"@s"},{"text":" has a kill streak of ","color":"#ff5a00"},{"text":"8","color":"#ff2300"},{"text":"!","color":"red"}]
execute as @a[tag=playing,tag=killer,scores={kill_streak=10}] at @s unless score $mode settings matches 3 run tellraw @a[tag=playing] [{"text":"🗡","color":"red"},{"text":": ","color":"dark_red"},{"selector":"@s"},{"text":" has a kill streak of ","color":"#ff3c00"},{"text":"10","color":"#ff0a00"},{"text":"!","color":"red"}]

#Kill streak sounds
execute if entity @a[tag=playing,tag=killer,scores={kill_streak=3}] as @a[tag=playing] at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 0.25 1.7
execute if entity @a[tag=playing,tag=killer,scores={kill_streak=5}] as @a[tag=playing] at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 0.25 1.7
execute if entity @a[tag=playing,tag=killer,scores={kill_streak=8}] as @a[tag=playing] at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 0.25 1.7
execute if entity @a[tag=playing,tag=killer,scores={kill_streak=10}] as @a[tag=playing] at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 0.25 1.7

advancement grant @a[tag=playing,tag=killer,scores={kill_streak=3..}] only advancements:custom/3_kills

advancement grant @a[tag=playing,tag=killer,scores={kill_streak=5..}] only advancements:custom/5_kills

##Reset our kill streak
scoreboard players reset @s kill_streak

##Adding stats
scoreboard players add @s stats_deaths 1
scoreboard players add @p[tag=killer,limit=1] stats_kills 1
execute as @p[tag=killer,limit=1] at @s if score @s kill_streak > @s stats_streak run scoreboard players operation @s stats_streak = @s kill_streak

##Playing sounds
execute as @a[tag=killer] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 100 0.75
execute as @a[tag=playing,distance=..500] at @s run playsound minecraft:entity.guardian.death master @a ~ ~ ~ 1 1.15

##Rejoining proper team

##Tags
tag @s[scores={lives=1..}] add join_team
tag @a[tag=killer] add join_team

##Rejoining team, this will change in different modes.

execute as @a[tag=playing,tag=join_team] at @s run function game:join_solo_team

##Removing tag
tag @a[tag=playing] remove join_team

team join dead @a[tag=killer,scores={lives=0}]


##Rejoin dead team if am dead
team join dead @s[scores={lives=0}]

##Specific mode functions
execute if score $mode settings matches 1 if score $teams settings matches 1 as @a[tag=killer,tag=is_fighter] at @s run function game:kills_criteria/get_kill
execute if score $mode settings matches 1 run function game:kills_criteria/got_killed
execute if score $mode settings matches 1 if score $teams settings matches 2.. as @a[tag=killer,tag=is_fighter] at @s run function game:kills_criteria/teams/get_kill

execute if score $mode settings matches 2 if score $teams settings matches 1 as @a[tag=killer,tag=is_fighter] at @s run function game:kills_timer/get_kill
execute if score $mode settings matches 2 run function game:kills_timer/got_killed
execute if score $mode settings matches 2 if score $teams settings matches 2.. as @a[tag=killer,tag=is_fighter] at @s run function game:kills_timer/teams/get_kill

##Reset damage id
scoreboard players reset @s damaged_id

##Removing tags from everyone
tag @a remove killer
tag @a remove killed

##specific fighter functions
execute if entity @s[scores={fighter=15}] run function fighter:malice/die


##Resetting our scores (is called here to remove any ongoing timers such as random_cooldowns in progress.)
function fighter:reset_scores

##making it so our last run time adds up
scoreboard players set @s last_death_time 0