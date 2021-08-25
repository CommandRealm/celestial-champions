##called when we place a honey trap.

summon armor_stand ~ ~-1.75 ~ {Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:honey_block",Count:1b}],Tags:["on_death_timer","needs_death_timer","honey_trap"],Invulnerable:1b}

##Copying id score
scoreboard players operation @e[type=armor_stand,tag=needs_death_timer] id = @s id


##Death timer
scoreboard players set @e[type=armor_stand,tag=needs_death_timer] death_timer 600
tag @e[type=armor_stand,tag=needs_death_timer] remove needs_death_timer


##Sound
playsound minecraft:block.honey_block.break master @a ~ ~ ~ 1 1