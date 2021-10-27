##Called when Slime uses his air ability

##Scores

##Setting the ability state to inactive
scoreboard players set @s ability_state 1

##Showing how long until the ability can be used again
scoreboard players set @s ability_timer 100

##Clarifying it as an air ability (0 is ground, 1 is air)
scoreboard players set @s ability_type 1

execute if entity @s[scores={costume=0}] anchored eyes positioned ^ ^ ^2.5 run summon armor_stand ~ ~ ~ {Tags:["on_death_timer","needs_death_timer","slime_platform"],Invisible:1b,Marker:1b,Passengers:[{id:"minecraft:falling_block",Time:1,NoGravity:1b,Tags:["needs_death_timer","on_death_timer"],BlockState:{Name:"minecraft:lime_terracotta"}}]}
execute if entity @s[scores={costume=0}] anchored eyes positioned ^ ^ ^2.5 run summon armor_stand ~1 ~ ~1 {Tags:["on_death_timer","needs_death_timer","slime_platform"],Invisible:1b,Marker:1b,Passengers:[{id:"minecraft:falling_block",Time:1,NoGravity:1b,Tags:["needs_death_timer","on_death_timer"],BlockState:{Name:"minecraft:slime_block"}}]}
execute if entity @s[scores={costume=0}] anchored eyes positioned ^ ^ ^2.5 run summon armor_stand ~-1 ~ ~1 {Tags:["on_death_timer","needs_death_timer","slime_platform"],Invisible:1b,Marker:1b,Passengers:[{id:"minecraft:falling_block",Time:1,NoGravity:1b,Tags:["needs_death_timer","on_death_timer"],BlockState:{Name:"minecraft:slime_block"}}]}
execute if entity @s[scores={costume=0}] anchored eyes positioned ^ ^ ^2.5 run summon armor_stand ~ ~ ~1 {Tags:["on_death_timer","needs_death_timer","slime_platform"],Invisible:1b,Marker:1b,Passengers:[{id:"minecraft:falling_block",Time:1,NoGravity:1b,Tags:["needs_death_timer","on_death_timer"],BlockState:{Name:"minecraft:slime_block"}}]}
execute if entity @s[scores={costume=0}] anchored eyes positioned ^ ^ ^2.5 run summon armor_stand ~1 ~ ~-1 {Tags:["on_death_timer","needs_death_timer","slime_platform"],Invisible:1b,Marker:1b,Passengers:[{id:"minecraft:falling_block",Time:1,NoGravity:1b,Tags:["needs_death_timer","on_death_timer"],BlockState:{Name:"minecraft:slime_block"}}]}
execute if entity @s[scores={costume=0}] anchored eyes positioned ^ ^ ^2.5 run summon armor_stand ~-1 ~ ~-1 {Tags:["on_death_timer","needs_death_timer","slime_platform"],Invisible:1b,Marker:1b,Passengers:[{id:"minecraft:falling_block",Time:1,NoGravity:1b,Tags:["needs_death_timer","on_death_timer"],BlockState:{Name:"minecraft:slime_block"}}]}
execute if entity @s[scores={costume=0}] anchored eyes positioned ^ ^ ^2.5 run summon armor_stand ~ ~ ~-1 {Tags:["on_death_timer","needs_death_timer","slime_platform"],Invisible:1b,Marker:1b,Passengers:[{id:"minecraft:falling_block",Time:1,NoGravity:1b,Tags:["needs_death_timer","on_death_timer"],BlockState:{Name:"minecraft:slime_block"}}]}
execute if entity @s[scores={costume=0}] anchored eyes positioned ^ ^ ^2.5 run summon armor_stand ~1 ~ ~ {Tags:["on_death_timer","needs_death_timer","slime_platform"],Invisible:1b,Marker:1b,Passengers:[{id:"minecraft:falling_block",Time:1,NoGravity:1b,Tags:["needs_death_timer","on_death_timer"],BlockState:{Name:"minecraft:slime_block"}}]}
execute if entity @s[scores={costume=0}] anchored eyes positioned ^ ^ ^2.5 run summon armor_stand ~-1 ~ ~ {Tags:["on_death_timer","needs_death_timer","slime_platform"],Invisible:1b,Marker:1b,Passengers:[{id:"minecraft:falling_block",Time:1,NoGravity:1b,Tags:["needs_death_timer","on_death_timer"],BlockState:{Name:"minecraft:slime_block"}}]}

execute if entity @s[scores={costume=1}] anchored eyes positioned ^ ^ ^2.5 run summon armor_stand ~ ~ ~ {Tags:["on_death_timer","needs_death_timer","slime_platform"],Invisible:1b,Marker:1b,Passengers:[{id:"minecraft:falling_block",Time:1,NoGravity:1b,Tags:["needs_death_timer","on_death_timer"],BlockState:{Name:"minecraft:purple_terracotta"}}]}
execute if entity @s[scores={costume=1}] anchored eyes positioned ^ ^ ^2.5 run summon armor_stand ~1 ~ ~1 {Tags:["on_death_timer","needs_death_timer","slime_platform"],Invisible:1b,Marker:1b,Passengers:[{id:"minecraft:falling_block",Time:1,NoGravity:1b,Tags:["needs_death_timer","on_death_timer"],BlockState:{Name:"minecraft:purple_stained_glass"}}]}
execute if entity @s[scores={costume=1}] anchored eyes positioned ^ ^ ^2.5 run summon armor_stand ~-1 ~ ~1 {Tags:["on_death_timer","needs_death_timer","slime_platform"],Invisible:1b,Marker:1b,Passengers:[{id:"minecraft:falling_block",Time:1,NoGravity:1b,Tags:["needs_death_timer","on_death_timer"],BlockState:{Name:"minecraft:purple_stained_glass"}}]}
execute if entity @s[scores={costume=1}] anchored eyes positioned ^ ^ ^2.5 run summon armor_stand ~ ~ ~1 {Tags:["on_death_timer","needs_death_timer","slime_platform"],Invisible:1b,Marker:1b,Passengers:[{id:"minecraft:falling_block",Time:1,NoGravity:1b,Tags:["needs_death_timer","on_death_timer"],BlockState:{Name:"minecraft:purple_stained_glass"}}]}
execute if entity @s[scores={costume=1}] anchored eyes positioned ^ ^ ^2.5 run summon armor_stand ~1 ~ ~-1 {Tags:["on_death_timer","needs_death_timer","slime_platform"],Invisible:1b,Marker:1b,Passengers:[{id:"minecraft:falling_block",Time:1,NoGravity:1b,Tags:["needs_death_timer","on_death_timer"],BlockState:{Name:"minecraft:purple_stained_glass"}}]}
execute if entity @s[scores={costume=1}] anchored eyes positioned ^ ^ ^2.5 run summon armor_stand ~-1 ~ ~-1 {Tags:["on_death_timer","needs_death_timer","slime_platform"],Invisible:1b,Marker:1b,Passengers:[{id:"minecraft:falling_block",Time:1,NoGravity:1b,Tags:["needs_death_timer","on_death_timer"],BlockState:{Name:"minecraft:purple_stained_glass"}}]}
execute if entity @s[scores={costume=1}] anchored eyes positioned ^ ^ ^2.5 run summon armor_stand ~ ~ ~-1 {Tags:["on_death_timer","needs_death_timer","slime_platform"],Invisible:1b,Marker:1b,Passengers:[{id:"minecraft:falling_block",Time:1,NoGravity:1b,Tags:["needs_death_timer","on_death_timer"],BlockState:{Name:"minecraft:purple_stained_glass"}}]}
execute if entity @s[scores={costume=1}] anchored eyes positioned ^ ^ ^2.5 run summon armor_stand ~1 ~ ~ {Tags:["on_death_timer","needs_death_timer","slime_platform"],Invisible:1b,Marker:1b,Passengers:[{id:"minecraft:falling_block",Time:1,NoGravity:1b,Tags:["needs_death_timer","on_death_timer"],BlockState:{Name:"minecraft:purple_stained_glass"}}]}
execute if entity @s[scores={costume=1}] anchored eyes positioned ^ ^ ^2.5 run summon armor_stand ~-1 ~ ~ {Tags:["on_death_timer","needs_death_timer","slime_platform"],Invisible:1b,Marker:1b,Passengers:[{id:"minecraft:falling_block",Time:1,NoGravity:1b,Tags:["needs_death_timer","on_death_timer"],BlockState:{Name:"minecraft:purple_stained_glass"}}]}

execute if entity @s[scores={costume=2}] anchored eyes positioned ^ ^ ^2.5 run summon armor_stand ~ ~ ~ {Tags:["on_death_timer","needs_death_timer","slime_platform"],Invisible:1b,Marker:1b,Passengers:[{id:"minecraft:falling_block",Time:1,NoGravity:1b,Tags:["needs_death_timer","on_death_timer"],BlockState:{Name:"minecraft:yellow_terracotta"}}]}
execute if entity @s[scores={costume=2}] anchored eyes positioned ^ ^ ^2.5 run summon armor_stand ~1 ~ ~1 {Tags:["on_death_timer","needs_death_timer","slime_platform"],Invisible:1b,Marker:1b,Passengers:[{id:"minecraft:falling_block",Time:1,NoGravity:1b,Tags:["needs_death_timer","on_death_timer"],BlockState:{Name:"minecraft:yellow_stained_glass"}}]}
execute if entity @s[scores={costume=2}] anchored eyes positioned ^ ^ ^2.5 run summon armor_stand ~-1 ~ ~1 {Tags:["on_death_timer","needs_death_timer","slime_platform"],Invisible:1b,Marker:1b,Passengers:[{id:"minecraft:falling_block",Time:1,NoGravity:1b,Tags:["needs_death_timer","on_death_timer"],BlockState:{Name:"minecraft:yellow_stained_glass"}}]}
execute if entity @s[scores={costume=2}] anchored eyes positioned ^ ^ ^2.5 run summon armor_stand ~ ~ ~1 {Tags:["on_death_timer","needs_death_timer","slime_platform"],Invisible:1b,Marker:1b,Passengers:[{id:"minecraft:falling_block",Time:1,NoGravity:1b,Tags:["needs_death_timer","on_death_timer"],BlockState:{Name:"minecraft:yellow_stained_glass"}}]}
execute if entity @s[scores={costume=2}] anchored eyes positioned ^ ^ ^2.5 run summon armor_stand ~1 ~ ~-1 {Tags:["on_death_timer","needs_death_timer","slime_platform"],Invisible:1b,Marker:1b,Passengers:[{id:"minecraft:falling_block",Time:1,NoGravity:1b,Tags:["needs_death_timer","on_death_timer"],BlockState:{Name:"minecraft:yellow_stained_glass"}}]}
execute if entity @s[scores={costume=2}] anchored eyes positioned ^ ^ ^2.5 run summon armor_stand ~-1 ~ ~-1 {Tags:["on_death_timer","needs_death_timer","slime_platform"],Invisible:1b,Marker:1b,Passengers:[{id:"minecraft:falling_block",Time:1,NoGravity:1b,Tags:["needs_death_timer","on_death_timer"],BlockState:{Name:"minecraft:yellow_stained_glass"}}]}
execute if entity @s[scores={costume=2}] anchored eyes positioned ^ ^ ^2.5 run summon armor_stand ~ ~ ~-1 {Tags:["on_death_timer","needs_death_timer","slime_platform"],Invisible:1b,Marker:1b,Passengers:[{id:"minecraft:falling_block",Time:1,NoGravity:1b,Tags:["needs_death_timer","on_death_timer"],BlockState:{Name:"minecraft:yellow_stained_glass"}}]}
execute if entity @s[scores={costume=2}] anchored eyes positioned ^ ^ ^2.5 run summon armor_stand ~1 ~ ~ {Tags:["on_death_timer","needs_death_timer","slime_platform"],Invisible:1b,Marker:1b,Passengers:[{id:"minecraft:falling_block",Time:1,NoGravity:1b,Tags:["needs_death_timer","on_death_timer"],BlockState:{Name:"minecraft:yellow_stained_glass"}}]}
execute if entity @s[scores={costume=2}] anchored eyes positioned ^ ^ ^2.5 run summon armor_stand ~-1 ~ ~ {Tags:["on_death_timer","needs_death_timer","slime_platform"],Invisible:1b,Marker:1b,Passengers:[{id:"minecraft:falling_block",Time:1,NoGravity:1b,Tags:["needs_death_timer","on_death_timer"],BlockState:{Name:"minecraft:yellow_stained_glass"}}]}

execute if entity @s[scores={costume=3}] anchored eyes positioned ^ ^ ^2.5 run summon armor_stand ~ ~ ~ {Tags:["on_death_timer","needs_death_timer","slime_platform"],Invisible:1b,Marker:1b,Passengers:[{id:"minecraft:falling_block",Time:1,NoGravity:1b,Tags:["needs_death_timer","on_death_timer"],BlockState:{Name:"minecraft:red_terracotta"}}]}
execute if entity @s[scores={costume=3}] anchored eyes positioned ^ ^ ^2.5 run summon armor_stand ~1 ~ ~1 {Tags:["on_death_timer","needs_death_timer","slime_platform"],Invisible:1b,Marker:1b,Passengers:[{id:"minecraft:falling_block",Time:1,NoGravity:1b,Tags:["needs_death_timer","on_death_timer"],BlockState:{Name:"minecraft:red_stained_glass"}}]}
execute if entity @s[scores={costume=3}] anchored eyes positioned ^ ^ ^2.5 run summon armor_stand ~-1 ~ ~1 {Tags:["on_death_timer","needs_death_timer","slime_platform"],Invisible:1b,Marker:1b,Passengers:[{id:"minecraft:falling_block",Time:1,NoGravity:1b,Tags:["needs_death_timer","on_death_timer"],BlockState:{Name:"minecraft:red_stained_glass"}}]}
execute if entity @s[scores={costume=3}] anchored eyes positioned ^ ^ ^2.5 run summon armor_stand ~ ~ ~1 {Tags:["on_death_timer","needs_death_timer","slime_platform"],Invisible:1b,Marker:1b,Passengers:[{id:"minecraft:falling_block",Time:1,NoGravity:1b,Tags:["needs_death_timer","on_death_timer"],BlockState:{Name:"minecraft:red_stained_glass"}}]}
execute if entity @s[scores={costume=3}] anchored eyes positioned ^ ^ ^2.5 run summon armor_stand ~1 ~ ~-1 {Tags:["on_death_timer","needs_death_timer","slime_platform"],Invisible:1b,Marker:1b,Passengers:[{id:"minecraft:falling_block",Time:1,NoGravity:1b,Tags:["needs_death_timer","on_death_timer"],BlockState:{Name:"minecraft:red_stained_glass"}}]}
execute if entity @s[scores={costume=3}] anchored eyes positioned ^ ^ ^2.5 run summon armor_stand ~-1 ~ ~-1 {Tags:["on_death_timer","needs_death_timer","slime_platform"],Invisible:1b,Marker:1b,Passengers:[{id:"minecraft:falling_block",Time:1,NoGravity:1b,Tags:["needs_death_timer","on_death_timer"],BlockState:{Name:"minecraft:red_stained_glass"}}]}
execute if entity @s[scores={costume=3}] anchored eyes positioned ^ ^ ^2.5 run summon armor_stand ~ ~ ~-1 {Tags:["on_death_timer","needs_death_timer","slime_platform"],Invisible:1b,Marker:1b,Passengers:[{id:"minecraft:falling_block",Time:1,NoGravity:1b,Tags:["needs_death_timer","on_death_timer"],BlockState:{Name:"minecraft:red_stained_glass"}}]}
execute if entity @s[scores={costume=3}] anchored eyes positioned ^ ^ ^2.5 run summon armor_stand ~1 ~ ~ {Tags:["on_death_timer","needs_death_timer","slime_platform"],Invisible:1b,Marker:1b,Passengers:[{id:"minecraft:falling_block",Time:1,NoGravity:1b,Tags:["needs_death_timer","on_death_timer"],BlockState:{Name:"minecraft:red_stained_glass"}}]}
execute if entity @s[scores={costume=3}] anchored eyes positioned ^ ^ ^2.5 run summon armor_stand ~-1 ~ ~ {Tags:["on_death_timer","needs_death_timer","slime_platform"],Invisible:1b,Marker:1b,Passengers:[{id:"minecraft:falling_block",Time:1,NoGravity:1b,Tags:["needs_death_timer","on_death_timer"],BlockState:{Name:"minecraft:red_stained_glass"}}]}


##death ability_timer
scoreboard players set @e[type=armor_stand,tag=needs_death_timer] death_timer 100
scoreboard players set @e[type=falling_block,tag=needs_death_timer] death_timer 99

##Tag
tag @s add temporary_tag

##Tp
execute as @e[type=armor_stand,tag=needs_death_timer] at @s rotated as @p[tag=temporary_tag] run tp @s ~ ~ ~ ~ ~

##Applying headgear
execute as @e[type=armor_stand,tag=needs_death_timer,tag=slime_platform] at @s run function fighter:slime/apply_headgear


##removing tag
tag @e[type=armor_stand,tag=needs_death_timer] remove needs_death_timer
tag @e[type=falling_block,tag=needs_death_timer] remove needs_death_timer
tag @s remove temporary_tag

##effect
effect give @s slow_falling 1 255 true


##Particles
execute if entity @s[scores={costume=0}] run particle item slime_ball ~ ~ ~ 0.25 0.25 0.25 0.15 25
execute if entity @s[scores={costume=1}] run particle item slime_ball{CustomModelData:1} ~ ~ ~ 0.25 0.25 0.25 0.15 25
execute if entity @s[scores={costume=2}] run particle item slime_ball{CustomModelData:2} ~ ~ ~ 0.25 0.25 0.25 0.15 25
execute if entity @s[scores={costume=3}] run particle item slime_ball{CustomModelData:3} ~ ~ ~ 0.25 0.25 0.25 0.15 25


##Tellraw
tellraw @s[tag=!no_ability_msg] [{"text":"--------------------------","color":"white"},{"text":"\nAir Ability: ","color":"dark_aqua","bold":true},{"text":"Slime Trampoline\n","color":"aqua"},{"text":"(Hover for description.)\n","color":"#bd9b4b","italic":true,"hoverEvent":{"action":"show_text","value":"Fire a moving trampoline lasting 5 seconds."}},{"text":"--------------------------","color":"white"}]


##Sounds
playsound minecraft:entity.slime.death master @s ~ ~ ~ 1 0.75
playsound minecraft:entity.slime.death master @s ~ ~ ~ 1 1.0
playsound minecraft:entity.slime.death master @s ~ ~ ~ 1 1.25