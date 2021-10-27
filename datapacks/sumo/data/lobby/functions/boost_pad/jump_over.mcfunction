##Called when the boost pad jump is over

tag @s add temporary_tag

##Entering fighting mode
execute if entity @s[gamemode=spectator,x=75,y=80,z=0,distance=..10] at @s run function lobby:training_area/enter

gamemode adventure @s


##Sound
playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1 0.75

##Killing armor stnad
execute as @a[gamemode=spectator,x=0,y=66,z=0,distance=..500,tag=!playing] at @s run scoreboard players operation @s calculate = @s lobby_id
execute as @a[gamemode=spectator,x=0,y=66,z=0,distance=..500,tag=!playing] at @s run scoreboard players operation @s calculate -= @e[type=armor_stand,tag=boost_pad_force_spectate,tag=temporary_tag,sort=nearest,limit=1] lobby_id

execute as @e[type=armor_stand,tag=boost_pad_force_spectate,tag=temporary_tag] at @s run scoreboard players operation @s calculate = @s lobby_id
execute as @e[type=armor_stand,tag=boost_pad_force_spectate,tag=temporary_tag] at @s run scoreboard players operation @s calculate = @p[tag=temporary_tag] lobby_id
kill @e[type=armor_stand,tag=boost_pad_force_spectate,tag=temporary_tag,scores={calculate=0},limit=1]


##Tag removal
tag @s remove temporary_tag
tag @a remove temporary_tag

