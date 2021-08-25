##Called when the boost pad jump is over

tag @s add temporary_tag
execute as @a[gamemode=spectator,x=0,y=66,z=0,distance=..500,tag=!playing] at @s run scoreboard players operation @s calculate = @s lobby_id
execute as @a[gamemode=spectator,x=0,y=66,z=0,distance=..500,tag=!playing] at @s run scoreboard players operation @s calculate -= @e[type=armor_stand,tag=boost_pad_force_spectate,tag=temporary_tag,sort=nearest,limit=1] lobby_id

##Entering fighting mode
execute as @p[gamemode=spectator,x=75,y=80,z=0,distance=..10,scores={calculate=0},tag=!playing] at @s run function lobby:training_area/enter



##kill
execute if entity @p[gamemode=spectator,x=0,y=66,z=0,distance=..500,scores={calculate=0},tag=!playing] run tp @s 0 0 0
execute if entity @p[gamemode=spectator,x=0,y=66,z=0,distance=..500,scores={calculate=0},tag=!playing] run kill @s

gamemode adventure @p[gamemode=spectator,x=0,y=66,z=0,distance=..500,scores={calculate=0},tag=!playing]


##Sound
playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1 0.75





##Tag removal
tag @s remove temporary_tag
tag @a remove temporary_tag

