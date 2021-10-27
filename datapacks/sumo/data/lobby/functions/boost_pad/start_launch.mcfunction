##Clear
clear @s

##Called to start a boost pad launch
execute if entity @s[x=40,y=66,z=0,distance=..3.0] run function lobby:boost_pad/left/start
execute if entity @s[x=-48,y=66,z=0,distance=..3.0] run function lobby:boost_pad/right/start
execute if entity @s[x=-73,y=73,z=0,distance=..3.0] run function lobby:boost_pad/right_back/start
execute if entity @s[x=0,y=83,z=-46,distance=..3.0] run function lobby:boost_pad/back_back/start
execute if entity @s[x=0,y=66,z=-25,distance=..3.0] run function lobby:boost_pad/back/start

##
scoreboard players set @s boost_pad_delay 20

##Sound 
playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 0


##Local sounds

playsound minecraft:entity.firework_rocket.launch master @s ~ ~ ~ 1000 0