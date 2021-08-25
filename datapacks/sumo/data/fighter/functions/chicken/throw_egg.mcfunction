##Called when a chicken throws its egg.

##Resetting egg score
scoreboard players reset @s throw_egg

##Setting random cooldown score
scoreboard players set @s random_cooldown 100

##Clearing egg
clear @s egg{Weapon:"combo"}


##Giving egg tag
tag @e[type=egg,sort=nearest,limit=1,nbt={Item:{tag:{egg_type:"chicken"}}},tag=!thrown_chicken_egg] add thrown_chicken_egg