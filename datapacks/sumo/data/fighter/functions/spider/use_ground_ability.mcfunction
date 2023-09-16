##Called when spider uses his ground ability

##Scores

##Setting the ability state to inactive
scoreboard players set @s ability_state 2

##ability cooldown
scoreboard players set @s ability_timer 100

##Clarifying it as a ground ability (0 is ground, 1 is air)
scoreboard players set @s ability_type 0


##Sound
playsound minecraft:entity.spider.hurt master @a ~ ~ ~ 1 0.5
particle item string ~ ~1.75 ~ 0.5 0.5 0.5 0.25 50


##Called to shoot an arrow with motion
execute positioned ^ ^ ^1 run summon zombie ~ ~0.75 ~ {Silent:1b,Invulnerable:1b,Tags:["needs_motion","needs_copied_id","on_death_timer","needs_death_timer","spider_web"],ArmorItems:[{},{},{},{id:"minecraft:light_gray_stained_glass_pane",Count:1b,tag:{CustomModelData:1}}],ActiveEffects:[{Id:14b,Amplifier:254,Duration:1000,ShowParticles:false},{Id:11b,Amplifier:254,Duration:1000,ShowParticles:false}],Attributes:[{Name:"generic.follow_range",Base:0}],Passengers:[{id:"minecraft:falling_block",Time:1,BlockState:{Name:"minecraft:cobweb"},NoGravity:1b,Tags:["on_death_timer","needs_death_timer","spider_web_display"]}]}



#adding tags
tag @s add copy_id
tag @s add used_ability

##Tp
execute as @e[type=zombie,tag=needs_motion] at @s rotated as @p[tag=used_ability] run tp @s ~ ~ ~ ~ ~

execute as @e[type=zombie,tag=needs_copied_id] at @s run scoreboard players operation @s id = @p[tag=used_ability] id

scoreboard players set @e[type=zombie,tag=needs_death_timer] death_timer 112

##Store positions (players)
execute store result score @s pos_x run data get entity @s Pos[0] 100
execute store result score @s pos_y run data get entity @s Pos[1] 100
execute store result score @s pos_z run data get entity @s Pos[2] 100

##Store positions (zombie)
execute as @e[type=zombie,tag=needs_motion] at @s store result score @s pos_x run data get entity @s Pos[0] 100
execute as @e[type=zombie,tag=needs_motion] at @s store result score @s pos_y run data get entity @s Pos[1] 100
execute as @e[type=zombie,tag=needs_motion] at @s store result score @s pos_z run data get entity @s Pos[2] 100


##Removing the 2.0 blocks from the ~ ~2 ~ in the summon
scoreboard players remove @e[type=zombie,tag=needs_motion] pos_y 75

##Subtracting
execute as @e[type=zombie,tag=needs_motion] at @s run scoreboard players operation @s pos_x -= @p[tag=used_ability] pos_x
execute as @e[type=zombie,tag=needs_motion] at @s run scoreboard players operation @s pos_y -= @p[tag=used_ability] pos_y
execute as @e[type=zombie,tag=needs_motion] at @s run scoreboard players operation @s pos_z -= @p[tag=used_ability] pos_z

##Applying motion
execute as @e[type=zombie,tag=needs_motion] at @s store result entity @s Motion[0] double 0.035 run scoreboard players get @s pos_x
execute as @e[type=zombie,tag=needs_motion] at @s store result entity @s Motion[1] double 0.035 run scoreboard players get @s pos_y
execute as @e[type=zombie,tag=needs_motion] at @s store result entity @s Motion[2] double 0.035 run scoreboard players get @s pos_z

##Removing tags
tag @e[type=zombie,tag=needs_motion] remove needs_motion
tag @e[type=zombie,tag=needs_motion] remove needs_death_timer


##Id for block
execute as @e[type=spider,tag=needs_death_timer] at @s run scoreboard players operation @s id = @p[tag=used_ability] id

##Death timer for falling blocks
scoreboard players operation @e[type=falling_block,tag=needs_death_timer] id = @s id
scoreboard players set @e[type=falling_block,tag=needs_death_timer] death_timer 112
tag @e[type=falling_block,tag=needs_death_timer] remove needs_death_timer
##player tags
tag @s remove copy_id
tag @s remove used_ability


##Tellraw
tellraw @s[tag=!no_ability_msg] [{"translate":"--------------------------","color":"aqua"},{"translate":"\nGround Ability: ","color":"gray","bold":true},{"translate":"Web Shoot\n","color":"white"},{"translate":"(Hover for description.)\n","color":"#bd9b4b","italic":true,"hoverEvent":{"action":"show_text","value":{"translate":"Shoots a web projectile that inflicts players with fear."}}},{"translate":"--------------------------","color":"aqua"}]


