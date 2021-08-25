##Called by each individual player jumping on a boost pad

##Add tag
tag @s add temporary_tag

##Copying boost pad ids to calculate
execute as @e[type=armor_stand,tag=boost_pad_force_spectate] at @s run scoreboard players operation @s calculate = @s lobby_id
execute as @e[type=armor_stand,tag=boost_pad_force_spectate] at @s run scoreboard players operation @s calculate -= @p[tag=temporary_tag] lobby_id

spectate @e[type=armor_stand,tag=boost_pad_force_spectate,sort=nearest,limit=1,scores={calculate=0}]

##Called as a fail safe
##execute unless entity @e[type=armor_stand,tag=boost_pad_force_spectate,sort=nearest,limit=1,scores={calculate=0}] if entity @s[x=83,y=80,z=1,distance=..60] run function lobby:boost_pad/error
##execute unless entity @e[type=armor_stand,tag=boost_pad_force_spectate,sort=nearest,limit=1,scores={calculate=0}] unless entity @s[x=83,y=80,z=1,distance=..60] run function lobby:boost_pad/right_side_error

##Remove tag
tag @s remove temporary_tag