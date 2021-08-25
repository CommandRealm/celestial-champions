##Called when theo uses his air ability

##Scores

##Setting the ability state to active
scoreboard players set @s ability_state 1

##Showing how long until the ability can be used again
scoreboard players set @s ability_timer 100

##Clarifying it as an air ability (0 is ground, 1 is air)
scoreboard players set @s ability_type 1
##Effects

##Adding tags (used_ability is just so that it doesn't use yourself) (copy_id is to give the entity the damaged tag)

tag @s add used_ability
tag @s add copy_id

##Summon
summon skeleton ~ ~ ~ {Tags:["needs_copied_id","needs_motion","skeleton_tp","on_death_timer","needs_death_timer"],Invulnerable:0b,ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}],ActiveEffects:[{Id:18b,Amplifier:254b,Duration:1000,ShowParticles:false},{Id:11b,Amplifier:250b,Duration:1000,ShowParticles:false}],Attributes:[{Name:"generic.follow_range",Base:0}]}

##Changing skeleton's outfit
execute if entity @s[scores={costume=1}] run replaceitem entity @e[type=skeleton,tag=needs_motion,sort=nearest,limit=1] armor.head player_head{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Stray\'s Head","italic":false,"color":"#88b9b3","bold":true}]'},costume:1b,SkullOwner:{Id:[I;-895195206,-604027417,-2132896399,-605322634],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTFhMWJjMzhiMGM5NmM4ODNhZjU1OGFjMjAwZmY0YTk1OGY1Y2FiZTNmYzI1ZDhmODNjNmQ3MGZkNjdkM2M4YSJ9fX0="}]}}}
execute if entity @s[scores={costume=1}] run replaceitem entity @e[type=skeleton,tag=needs_motion,sort=nearest,limit=1] armor.chest leather_chestplate{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Stray\'s Torso","italic":false,"color":"#88b9b3","bold":true}]',color:7188145},costume:1b}


execute if entity @s[scores={costume=2}] run replaceitem entity @e[type=skeleton,tag=needs_motion,sort=nearest,limit=1] armor.head player_head{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Wither Skeleton\'s Head","italic":false,"color":"#4e4e4e","bold":true}]'},costume:1b,SkullOwner:{Id:[I;74542885,33506059,-2081859536,-268206202],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDc2MzM4ZTRjYTYwYjgzYTllOGFjZmJhM2E3OTkyZmIyZDkzY2RkNWFmNzg1Mjc2NWYyNTU3MmEwNjc0ZjM1MyJ9fX0="}]}}}
execute if entity @s[scores={costume=2}] run replaceitem entity @e[type=skeleton,tag=needs_motion,sort=nearest,limit=1] armor.chest diamond_chestplate{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Wither Skeleton\'s Torso","italic":false,"color":"#4e4e4e","bold":true}]'},costume:1b}
execute if entity @s[scores={costume=2}] run replaceitem entity @e[type=skeleton,tag=needs_motion,sort=nearest,limit=1] armor.legs diamond_leggings{AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.0175,UUID:[I; 50, 50, 50, 50]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Wither Skeleton\'s Legs","italic":false,"color":"#4e4e4e","bold":true}]'},costume:1b}
execute if entity @s[scores={costume=2}] run replaceitem entity @e[type=skeleton,tag=needs_motion,sort=nearest,limit=1] armor.feet leather_boots{AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999, 999]}],Unbreakable:1b,HideFlags:63,display:{Name:'[{"text":"Wither Skeleton\'s Feet","italic":false,"color":"#4e4e4e","bold":true}]',color:4473924},costume:1b}



##setting death timer
scoreboard players set @e[type=skeleton,tag=skeleton_tp,tag=needs_death_timer] death_timer 100


##Tp
execute as @e[type=skeleton,tag=needs_motion] at @s rotated as @p[tag=used_ability] run tp @s ~ ~ ~ ~ ~
##Summon aec for purpose of determining motion values.
execute anchored eyes run summon area_effect_cloud ^ ^ ^2.5 {Tags:["needs_motion"]}

##Copying UUID
execute as @e[type=area_effect_cloud,tag=needs_motion] at @s run data modify entity @s Owner set from entity @s UUID


##Store positions (players)
execute store result score @s pos_x run data get entity @s Pos[0] 100
execute store result score @s pos_y run data get entity @s Pos[1] 100
execute store result score @s pos_z run data get entity @s Pos[2] 100

##Store positions (arrow)
execute as @e[type=area_effect_cloud,tag=needs_motion] at @s store result score @s pos_x run data get entity @s Pos[0] 100
execute as @e[type=area_effect_cloud,tag=needs_motion] at @s store result score @s pos_z run data get entity @s Pos[2] 100

##Subtracting
execute as @e[type=area_effect_cloud,tag=needs_motion] at @s run scoreboard players operation @s pos_x -= @p[tag=used_ability] pos_x
execute as @e[type=area_effect_cloud,tag=needs_motion] at @s run scoreboard players operation @s pos_z -= @p[tag=used_ability] pos_z

##Applying motion
execute as @e[type=skeleton,tag=needs_motion] at @s store result entity @s Motion[0] double 0.01 run scoreboard players get @e[type=area_effect_cloud,tag=needs_motion,limit=1] pos_x
execute as @e[type=skeleton,tag=needs_motion] at @s store result entity @s Motion[2] double 0.01 run scoreboard players get @e[type=area_effect_cloud,tag=needs_motion,limit=1] pos_z

##Applying y motion
execute as @e[type=skeleton,tag=needs_motion] at @s run data modify entity @s Motion[1] set value 0.75

##Removing tag
kill @e[type=area_effect_cloud,tag=needs_motion]
tag @e[type=skeleton,tag=needs_motion] remove needs_death_timer
tag @e[type=skeleton,tag=needs_motion] remove needs_motion



##Copying id
scoreboard players operation @e[type=skeleton,tag=needs_copied_id,limit=1] id = @s id

##Getting tag
execute as @e[type=skeleton,tag=needs_copied_id] at @s run function game:give_entity_id


##Removing tags
tag @s remove copy_id
tag @s remove used_ability

##Effect
effect give @s slow_falling 5 255 true
effect give @s weakness 5 255 true

##Tellraw
tellraw @s[tag=!no_ability_msg] [{"text":"--------------------------","color":"white"},{"text":"\nAir Ability: ","color":"dark_aqua","bold":true},{"text":"Bone Toss\n","color":"aqua"},{"text":"(Hover for description.)\n","color":"#bd9b4b","italic":true,"hoverEvent":{"action":"show_text","value":"Toss a decoy skeleton, gain slow falling and weakness and teleport to the skeleton when it lands."}},{"text":"--------------------------","color":"white"}]

##Resistance (it wasn't working for whatever reason in the attribute effects)
effect give @e[type=skeleton,tag=skeleton_tp] resistance 10000 255 true
##Sounds
playsound minecraft:entity.skeleton.death master @a ~ ~ ~ 1 0.75