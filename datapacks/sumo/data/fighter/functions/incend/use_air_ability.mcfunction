##Called when incend uses his air ability

##Scores

##Setting the ability state to inactive
scoreboard players set @s ability_state 2

##Showing how long until the ability can be used again
scoreboard players set @s ability_timer 160

##Clarifying it as an air ability (0 is ground, 1 is air)
scoreboard players set @s ability_type 1
##Effects

##Adding tags (used_ability is just so that it doesn't use yourself) (copy_id is to give the entity the damaged tag)
tag @s add used_ability
tag @s add copy_id
tag @s add copy_team

##Summon tnt

##Called to shoot the tnt
execute anchored eyes positioned ^ ^ ^1 run summon skeleton ~ ~ ~ {NoGravity:1b,Tags:["only_explode_near_players","needs_copied_id","incend_blue_tnt","incend_tnt","needs_motion","on_death_timer","needs_death_timer"],Silent:1b,Invulnerable:0b,Attributes:[{Name:"generic.movement_speed",Base:0},{Name:"generic.follow_range",Base:0},{Name:"generic.attack_damage",Base:0}],ArmorItems:[{id:"minecraft:leather_boots",Count:1,tag:{display:{color:16730112}}},{id:"minecraft:leather_leggings",Count:1,tag:{display:{color:16777215}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16730112}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1031853657,919423726,-2059367205,1418649205],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2FmNTk3NzZmMmYwMzQxMmM3YjU5NDdhNjNhMGNmMjgzZDUxZmU2NWFjNmRmN2YyZjg4MmUwODM0NDU2NWU5In19fQ=="}]}}}}]}

##Giving TNT data

##Id, tag, and team
team join no_collision @e[type=skeleton,tag=incend_blue_tnt,tag=needs_copied_id,sort=nearest,limit=1]
scoreboard players operation @e[type=skeleton,tag=incend_blue_tnt,tag=needs_copied_id,sort=nearest,limit=1] id = @s id
execute as @e[type=skeleton,tag=incend_blue_tnt,tag=needs_copied_id] at @s run function game:give_entity_id


scoreboard players set @e[type=skeleton,tag=incend_blue_tnt,tag=needs_death_timer,sort=nearest,limit=1] death_timer 160

#adding tags
tag @s add copy_id
tag @s add used_ability

##Tp
execute as @e[type=skeleton,tag=needs_motion] at @s rotated as @p[tag=used_ability] run tp @s ~ ~ ~ ~ ~

execute as @e[type=skeleton,tag=needs_copied_id] at @s run scoreboard players operation @s id = @p[tag=used_ability] id

scoreboard players set @e[type=skeleton,tag=needs_death_timer] death_timer 25

##Store positions (players)
execute store result score @s pos_x run data get entity @s Pos[0] 100
execute store result score @s pos_y run data get entity @s Pos[1] 100
execute store result score @s pos_z run data get entity @s Pos[2] 100

##Store positions (skeleton)
execute as @e[type=skeleton,tag=needs_motion] at @s store result score @s pos_x run data get entity @s Pos[0] 100
execute as @e[type=skeleton,tag=needs_motion] at @s store result score @s pos_y run data get entity @s Pos[1] 100
execute as @e[type=skeleton,tag=needs_motion] at @s store result score @s pos_z run data get entity @s Pos[2] 100


##Removing the 1.75 blocks from anchored eyes
scoreboard players remove @e[type=skeleton,tag=needs_motion] pos_y 175

##Subtracting
execute as @e[type=skeleton,tag=needs_motion] at @s run scoreboard players operation @s pos_x -= @p[tag=used_ability] pos_x
execute as @e[type=skeleton,tag=needs_motion] at @s run scoreboard players operation @s pos_y -= @p[tag=used_ability] pos_y
execute as @e[type=skeleton,tag=needs_motion] at @s run scoreboard players operation @s pos_z -= @p[tag=used_ability] pos_z

##Applying motion
execute as @e[type=skeleton,tag=needs_motion] at @s store result entity @s Motion[0] double 0.05 run scoreboard players get @s pos_x
##execute as @e[type=skeleton,tag=needs_motion] at @s store result entity @s Motion[1] double 0.045 run scoreboard players get @s pos_y
execute as @e[type=skeleton,tag=needs_motion] at @s store result entity @s Motion[2] double 0.05 run scoreboard players get @s pos_z

##Effects
effect give @e[type=skeleton,tag=incend_blue_tnt,tag=needs_death_timer,sort=nearest,limit=1] weakness 10000 255 true
effect give @e[type=skeleton,tag=incend_blue_tnt,tag=needs_death_timer,sort=nearest,limit=1] resistance 10000 255 true

##REmoving entity tags
tag @e[type=skeleton,tag=incend_blue_tnt] remove needs_motion
tag @e[type=skeleton,tag=incend_blue_tnt] remove needs_copied_id
tag @e[type=skeleton,tag=incend_blue_tnt,tag=needs_death_timer,sort=nearest,limit=1] remove needs_death_timer

##Particles
particle item gunpowder ~ ~1 ~ 0.25 0.5 0.25 0.25 100


##Tellraw
tellraw @s[tag=!no_ability_msg] [{"text":"--------------------------","color":"white"},{"text":"\nAir Ability: ","color":"dark_aqua","bold":true},{"text":"TNT Missile\n","color":"aqua"},{"text":"(Hover for description.)\n","color":"#bd9b4b","italic":true,"hoverEvent":{"action":"show_text","value":"Fire a TNT missile that explodes near players."}},{"text":"--------------------------","color":"white"}]


##Sounds
playsound minecraft:entity.tnt.primed master @a ~ ~ ~ 1 1
playsound minecraft:entity.tnt.primed master @s ~ ~ ~ 1.25 1
playsound minecraft:entity.tnt.primed master @s ~ ~ ~ 0.75 1