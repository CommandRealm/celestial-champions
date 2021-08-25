##called to shoot our wand

##temporary tag
tag @s add temporary_tag

##Color rotation
scoreboard players add @s random_stat 1
scoreboard players set @s[scores={random_stat=7..}] random_stat 1

##summon
execute if entity @s[scores={random_stat=1}] anchored eyes run summon zombie ^ ^ ^1 {ArmorItems:[{},{},{},{id:"minecraft:red_concrete",Count:1b}],Tags:["wand_item","needs_adjustments","on_death_timer","needs_death_timer"],IsBaby:1b,Silent:1b,Invulnerable:1b,Attributes:[{Base:0,Name:"generic.attack_damage"}]}
execute if entity @s[scores={random_stat=2}] anchored eyes run summon zombie ^ ^ ^1 {ArmorItems:[{},{},{},{id:"minecraft:orange_concrete",Count:1b}],Tags:["wand_item","needs_adjustments","on_death_timer","needs_death_timer"],IsBaby:1b,Silent:1b,Invulnerable:1b,Attributes:[{Base:0,Name:"generic.attack_damage"}]}
execute if entity @s[scores={random_stat=3}] anchored eyes run summon zombie ^ ^ ^1 {ArmorItems:[{},{},{},{id:"minecraft:yellow_concrete",Count:1b}],Tags:["wand_item","needs_adjustments","on_death_timer","needs_death_timer"],IsBaby:1b,Silent:1b,Invulnerable:1b,Attributes:[{Base:0,Name:"generic.attack_damage"}]}
execute if entity @s[scores={random_stat=4}] anchored eyes run summon zombie ^ ^ ^1 {ArmorItems:[{},{},{},{id:"minecraft:lime_concrete",Count:1b}],Tags:["wand_item","needs_adjustments","on_death_timer","needs_death_timer"],IsBaby:1b,Silent:1b,Invulnerable:1b,Attributes:[{Base:0,Name:"generic.attack_damage"}]}
execute if entity @s[scores={random_stat=5}] anchored eyes run summon zombie ^ ^ ^1 {ArmorItems:[{},{},{},{id:"minecraft:blue_concrete",Count:1b}],Tags:["wand_item","needs_adjustments","on_death_timer","needs_death_timer"],IsBaby:1b,Silent:1b,Invulnerable:1b,Attributes:[{Base:0,Name:"generic.attack_damage"}]}
execute if entity @s[scores={random_stat=6}] anchored eyes run summon zombie ^ ^ ^1 {ArmorItems:[{},{},{},{id:"minecraft:purple_concrete",Count:1b}],Tags:["wand_item","needs_adjustments","on_death_timer","needs_death_timer"],IsBaby:1b,Silent:1b,Invulnerable:1b,Attributes:[{Base:0,Name:"generic.attack_damage"}]}



##Store positions (players)
execute store result score @s pos_x run data get entity @s Pos[0] 100
execute store result score @s pos_y run data get entity @s Pos[1] 100
execute store result score @s pos_z run data get entity @s Pos[2] 100

##Store positions (zombie)
execute as @e[type=zombie,tag=needs_adjustments] at @s store result score @s pos_x run data get entity @s Pos[0] 100
execute as @e[type=zombie,tag=needs_adjustments] at @s store result score @s pos_y run data get entity @s Pos[1] 100
execute as @e[type=zombie,tag=needs_adjustments] at @s store result score @s pos_z run data get entity @s Pos[2] 100

##tp zombie down
execute as @e[type=zombie,tag=needs_adjustments] at @s run tp @s ~ ~-1.5 ~
execute as @e[type=zombie,tag=needs_adjustments] at @s run particle end_rod ~ ~ ~ 0.25 0.5 0.25 0.15 25

##Removing the 1.75 blocks from anchored eyes
scoreboard players remove @e[type=zombie,tag=needs_adjustments] pos_y 175

##Subtracting
execute as @e[type=zombie,tag=needs_adjustments] at @s run scoreboard players operation @s pos_x -= @p[tag=temporary_tag] pos_x
execute as @e[type=zombie,tag=needs_adjustments] at @s run scoreboard players operation @s pos_y -= @p[tag=temporary_tag] pos_y
execute as @e[type=zombie,tag=needs_adjustments] at @s run scoreboard players operation @s pos_z -= @p[tag=temporary_tag] pos_z

##Applying motion
execute as @e[type=zombie,tag=needs_adjustments] at @s store result entity @s Motion[0] double 0.025 run scoreboard players get @s pos_x
execute as @e[type=zombie,tag=needs_adjustments] at @s store result entity @s Motion[1] double 0.025 run scoreboard players get @s pos_y
execute as @e[type=zombie,tag=needs_adjustments] at @s store result entity @s Motion[2] double 0.025 run scoreboard players get @s pos_z


##removing tags and settings up death timer
scoreboard players set @e[type=zombie,tag=needs_adjustments,tag=wand_item,sort=nearest,limit=1] death_timer 25
tag @e[type=zombie,tag=needs_adjustments,tag=wand_item,sort=nearest,limit=1] remove needs_death_timer

tag @e[type=zombie,tag=needs_adjustments,tag=wand_item,sort=nearest,limit=1] remove needs_adjustments
tag @s remove temporary_tag


##sound
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 0.15 0.5