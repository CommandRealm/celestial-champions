##Called when Melon Man uses his ground ability

##Scores

##Setting the ability state to inactive
scoreboard players set @s ability_state 2

##Showing how long the ability lasts for
scoreboard players set @s ability_timer 200

##Clarifying it as a ground ability (0 is ground, 1 is air)
scoreboard players set @s ability_type 0





##Tellraw
tellraw @s[tag=!no_ability_msg] [{"text":"--------------------------","color":"aqua"},{"text":"\nGround Ability: ","color":"gray","bold":true},{"text":"Stunning Throw\n","color":"white"},{"text":"(Hover for description.)\n","color":"#bd9b4b","italic":true,"hoverEvent":{"action":"show_text","value":"Throws an object that stuns opponents within a small radius for 1 seconds."}},{"text":"--------------------------","color":"aqua"}]

tag @s add used_ability


##Throwing a melon
execute if entity @s[scores={costume=0}] anchored eyes positioned ^ ^ ^1 run summon zombie ~ ~ ~ {Silent:1b,Invulnerable:1b,Tags:["needs_motion","needs_copied_id","on_death_timer","needs_death_timer","melon_man_melon","melon_costume_0"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;206223347,-2113190707,-1179904260,691120316],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTYzNmRlZTgwNmJhNDdhMmM0MGU5NWI1N2ExMmYzN2RlNmMyZTY3N2YyMTYwMTMyYTA3ZTI0ZWVmZmE2In19fQ=="}]}}}}],ActiveEffects:[{Id:14b,Amplifier:254,Duration:1000,ShowParticles:false},{Id:11b,Amplifier:254,Duration:1000,ShowParticles:false}],Attributes:[{Name:"generic.follow_range",Base:0}]}
execute if entity @s[scores={costume=1}] anchored eyes positioned ^ ^ ^1 run summon zombie ~ ~ ~ {Silent:1b,Invulnerable:1b,Tags:["needs_motion","needs_copied_id","on_death_timer","needs_death_timer","melon_man_melon","melon_costume_1"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;630075668,915163297,-2046968232,152236255],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTcxNTI4NzZiYzNhOTZkZDJhMjI5OTI0NWVkYjNiZWVmNjQ3YzhhNTZhYzg4NTNhNjg3YzNlN2I1ZDhiYiJ9fX0="}]}}}}],ActiveEffects:[{Id:14b,Amplifier:254,Duration:1000,ShowParticles:false},{Id:11b,Amplifier:254,Duration:1000,ShowParticles:false}],Attributes:[{Name:"generic.follow_range",Base:0}]}
execute if entity @s[scores={costume=2}] anchored eyes positioned ^ ^ ^1 run summon zombie ~ ~ ~ {Silent:1b,Invulnerable:1b,Tags:["needs_motion","needs_copied_id","on_death_timer","needs_death_timer","melon_man_melon","melon_costume_2"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;99148268,-120500629,-1273983585,1401885143],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWFmMzI4Yzg3YjA2ODUwOWFjYTk4MzRlZmFjZTE5NzcwNWZlNWQ0ZjA4NzE3MzFiN2IyMWNkOTliOWZkZGMifX19"}]}}}}],ActiveEffects:[{Id:14b,Amplifier:254,Duration:1000,ShowParticles:false},{Id:11b,Amplifier:254,Duration:1000,ShowParticles:false}],Attributes:[{Name:"generic.follow_range",Base:0}]}
execute if entity @s[scores={costume=3}] anchored eyes positioned ^ ^ ^1 run summon zombie ~ ~ ~ {Silent:1b,Invulnerable:1b,Tags:["needs_motion","needs_copied_id","on_death_timer","needs_death_timer","melon_man_melon","melon_costume_3"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;420496346,704925621,-2097778403,1450691027],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjdkNTdiNWJjOWFiM2Y1M2VjOWNjMmY5NGI3MmMxMzRhY2RlODU1YTY0M2MyNWU1YTI2YzNlMGIyYTYwM2FkZCJ9fX0="}]}}}}],ActiveEffects:[{Id:14b,Amplifier:254,Duration:1000,ShowParticles:false},{Id:11b,Amplifier:254,Duration:1000,ShowParticles:false}],Attributes:[{Name:"generic.follow_range",Base:0}]}
execute if entity @s[scores={costume=4}] anchored eyes positioned ^ ^ ^1 run summon zombie ~ ~ ~ {Silent:1b,Invulnerable:1b,Tags:["needs_motion","needs_copied_id","on_death_timer","needs_death_timer","melon_man_melon","melon_costume_4"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1383019434,1634551509,-1797643298,247843792],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDZlZWFiNDViZWVjMmYwODYxMDI2YjlhMzU0YjYzZjIzYzJiODhkNzllNDFiNzUwNGM4N2JjYmViNzc5ZSJ9fX0="}]}}}}],ActiveEffects:[{Id:14b,Amplifier:254,Duration:1000,ShowParticles:false},{Id:11b,Amplifier:254,Duration:1000,ShowParticles:false}],Attributes:[{Name:"generic.follow_range",Base:0}]}

#adding tags
tag @s add copy_id
tag @s add used_ability

##Tp
execute as @e[type=zombie,tag=needs_motion] at @s rotated as @p[tag=used_ability] run tp @s ~ ~ ~ ~ ~

execute as @e[type=zombie,tag=needs_copied_id] at @s run scoreboard players operation @s id = @p[tag=used_ability] id

scoreboard players set @e[type=zombie,tag=needs_death_timer] death_timer 100

##Store positions (players)
execute store result score @s pos_x run data get entity @s Pos[0] 100
execute store result score @s pos_y run data get entity @s Pos[1] 100
execute store result score @s pos_z run data get entity @s Pos[2] 100

##Store positions (zombie)
execute as @e[type=zombie,tag=needs_motion] at @s store result score @s pos_x run data get entity @s Pos[0] 100
execute as @e[type=zombie,tag=needs_motion] at @s store result score @s pos_y run data get entity @s Pos[1] 100
execute as @e[type=zombie,tag=needs_motion] at @s store result score @s pos_z run data get entity @s Pos[2] 100


##Removing the 1.75 blocks from anchored eyes
scoreboard players remove @e[type=zombie,tag=needs_motion] pos_y 175

##Subtracting
execute as @e[type=zombie,tag=needs_motion] at @s run scoreboard players operation @s pos_x -= @p[tag=used_ability] pos_x
execute as @e[type=zombie,tag=needs_motion] at @s run scoreboard players operation @s pos_y -= @p[tag=used_ability] pos_y
execute as @e[type=zombie,tag=needs_motion] at @s run scoreboard players operation @s pos_z -= @p[tag=used_ability] pos_z

##Applying motion
execute as @e[type=zombie,tag=needs_motion] at @s store result entity @s Motion[0] double 0.03 run scoreboard players get @s pos_x
execute as @e[type=zombie,tag=needs_motion] at @s store result entity @s Motion[1] double 0.03 run scoreboard players get @s pos_y
execute as @e[type=zombie,tag=needs_motion] at @s store result entity @s Motion[2] double 0.03 run scoreboard players get @s pos_z

##Removing tags
tag @e[type=zombie,tag=needs_motion] remove needs_motion
tag @e[type=zombie,tag=needs_motion] remove needs_death_timer
tag @s remove copy_id
tag @s remove used_ability

##Sounds
playsound minecraft:block.wood.place master @a ~ ~ ~ 1 0.5
playsound minecraft:block.wood.place master @a ~ ~ ~ 1 0.65
playsound minecraft:block.wood.place master @a ~ ~ ~ 1 0.8