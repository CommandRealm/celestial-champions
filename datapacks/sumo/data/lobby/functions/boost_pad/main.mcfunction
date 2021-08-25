##Main boost pad function

##Boost pad force spectate
execute as @a[x=0,y=66,z=0,distance=..500,gamemode=spectator,tag=!playing] at @s run function lobby:boost_pad/spectate_entity

##Ending the boost pad
execute as @e[type=armor_stand,tag=boost_pad_force_spectate,nbt={OnGround:1b}] at @s run function lobby:boost_pad/jump_over