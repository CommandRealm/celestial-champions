##Called to shoot the laser.
summon marker ~ ~ ~ {Tags:["on_death_timer","needs_death_timer","guardian_laser"]}
tp @e[type=marker,tag=needs_death_timer] @s
scoreboard players set @e[type=marker,tag=needs_death_timer] death_timer 80
scoreboard players operation @e[type=marker,tag=needs_death_timer] id = @s id

#tag
tag @s add this

##Tping the marker laser to the marker at our position
execute as @e[type=marker,tag=guardian_tp_point] run scoreboard players operation @s calculate = @s id
execute as @e[type=marker,tag=guardian_tp_point] run scoreboard players operation @s calculate -= @e[type=guardian,tag=this,limit=1] id

tp @e[type=marker,tag=needs_death_timer] @e[type=marker,tag=guardian_tp_point,scores={calculate=0},limit=1]

##tag
tag @s remove this

##sound
playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1 1.1

tag @e[type=marker,tag=needs_death_timer] remove needs_death_timer


