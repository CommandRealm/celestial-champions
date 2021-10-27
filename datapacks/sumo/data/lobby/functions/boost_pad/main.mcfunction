##Main boost pad function

##Boost pad force spectate
execute as @a[x=0,y=66,z=0,distance=..500,gamemode=spectator,tag=!playing,team=!spectator] at @s run function lobby:boost_pad/spectate_entity

##Cooldown
scoreboard players remove @a[scores={boost_pad_delay=1..}] boost_pad_delay 1
execute as @a[scores={boost_pad_delay=..0},tag=!playing,gamemode=spectator,x=0,y=66,z=0,distance=..500,team=!spectator] at @s unless block ~ ~-3 ~ air run function lobby:boost_pad/jump_over



