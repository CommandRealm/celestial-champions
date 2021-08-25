##Called whenever a grenade should explode

##Getting the owner the copy_id tag

##Copying id to calculate objective
scoreboard players operation @s calculate = @s id

##Copying players ids to calculate objective
execute as @a[tag=is_fighter,tag=playing] at @s run scoreboard players operation @s calculate = @s id

##Subtraction
execute as @a[tag=is_fighter,tag=playing] run scoreboard players operation @s calculate -= @e[type=zombie,tag=creeper_grenade,nbt={OnGround:1b},scores={death_timer=..110},sort=nearest,limit=1] id

##Giving tag
tag @a[scores={calculate=0},tag=is_fighter,tag=playing] add copy_id


##Summon
summon creeper ~ ~ ~ {Fuse:0s,Invulnerable:1b,Tags:["needs_copied_id"]}

##Giving entity tag
execute as @e[type=creeper,tag=needs_copied_id] at @s run function game:give_entity_id

tag @a[scores={calculate=0},tag=is_fighter,tag=playing] remove copy_id


##Sounds
playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1 0.5