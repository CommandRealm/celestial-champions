##Tp
tp @a[tag=playing] 0 61 81 0 20
clear @a[tag=playing]
effect clear @a[tag=playing]
gamemode adventure @a[tag=playing]
tag @a[tag=playing] remove is_fighter
tag @a[tag=playing] remove needs_costume

scoreboard objectives setdisplay sidebar

##Enabling the fighter nameplate
data modify entity @e[type=area_effect_cloud,tag=competitive_fighter_nameplate,limit=1] CustomNameVisible set value 1b

##Setting up the block displays
kill @e[tag=competitive_mode_temp]
summon armor_stand 6 60.8 89 {Tags:["competitive_mode_temp","model"],NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:grass_block",Count:1b}]}
summon armor_stand 4 60.8 89 {Tags:["competitive_mode_temp","model"],NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:crying_obsidian",Count:1b}]}
summon armor_stand 2 60.8 89 {Tags:["competitive_mode_temp","model"],NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:crimson_nylium",Count:1b}]}
summon armor_stand 0 60.8 89 {Tags:["competitive_mode_temp","model"],NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:prismarine_bricks",Count:1b}]}
summon armor_stand -2 60.8 89 {Tags:["competitive_mode_temp","model"],NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:lodestone",Count:1b}]}
summon armor_stand -4 60.8 89 {Tags:["competitive_mode_temp","model"],NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:cyan_terracotta",Count:1b}]}
summon armor_stand -6 60.8 89 {Tags:["competitive_mode_temp","model"],NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:chiseled_quartz_block",Count:1b}]}

##Nameplates
summon minecraft:area_effect_cloud 6 63 89 {Tags:["competitive_mode_temp","competitive_nameplate","competitive_map_1"],Duration:1800000,CustomNameVisible:1b,CustomName:'[{"text":"| ","color":"gray"},{"text":"Deforested","color":"green"},{"text":" |","color":"gray"}]'}
summon minecraft:area_effect_cloud 4 63 89 {Tags:["competitive_mode_temp","competitive_nameplate","competitive_map_2"],Duration:1800000,CustomNameVisible:1b,CustomName:'[{"text":"| ","color":"gray"},{"text":"Elsewhere","color":"dark_purple"},{"text":" |","color":"gray"}]'}
summon minecraft:area_effect_cloud 2 63 89 {Tags:["competitive_mode_temp","competitive_nameplate","competitive_map_3"],Duration:1800000,CustomNameVisible:1b,CustomName:'[{"text":"| ","color":"gray"},{"text":"Molten","color":"dark_red"},{"text":" |","color":"gray"}]'}
summon minecraft:area_effect_cloud 0 63 89 {Tags:["competitive_mode_temp","competitive_nameplate","competitive_map_4"],Duration:1800000,CustomNameVisible:1b,CustomName:'[{"text":"| ","color":"gray"},{"text":"Celestial","color":"dark_aqua"},{"text":" |","color":"gray"}]'}
summon minecraft:area_effect_cloud -2 63 89 {Tags:["competitive_mode_temp","competitive_nameplate","competitive_map_5"],Duration:1800000,CustomNameVisible:1b,CustomName:'[{"text":"| ","color":"gray"},{"text":"Fortress","color":"gray"},{"text":" |","color":"gray"}]'}
summon minecraft:area_effect_cloud -4 63 89 {Tags:["competitive_mode_temp","competitive_nameplate","competitive_map_6"],Duration:1800000,CustomNameVisible:1b,CustomName:'[{"text":"| ","color":"gray"},{"text":"Hovercraft","color":"dark_green"},{"text":" |","color":"gray"}]'}
summon minecraft:area_effect_cloud -6 63 89 {Tags:["competitive_mode_temp","competitive_nameplate","competitive_map_7"],Duration:1800000,CustomNameVisible:1b,CustomName:'[{"text":"| ","color":"gray"},{"text":"Rainbow","color":"gold"},{"text":" |","color":"gray"}]'}

##Setting up the buttons
fill 6 61 88 -6 61 88 minecraft:stone_button[face=wall] replace minecraft:structure_void

team join gold @a[tag=playing]

##Setting striked maps to 0
scoreboard players set $striked_maps game 0