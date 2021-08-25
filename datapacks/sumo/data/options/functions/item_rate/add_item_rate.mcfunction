setblock -7 64 24 air
playsound minecraft:ui.button.click master @s
scoreboard players add $item_rate settings 1
execute if score $item_rate settings matches 4.. run scoreboard players set $item_rate settings 0
execute if score $item_rate settings matches ..-1 run scoreboard players set $item_rate settings 3

execute if score $item_rate settings matches 0 run setblock -7 64 24 oak_wall_sign[facing=east]{Text1:'{"text":"Item","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"spawn rate:","color":"aqua","bold":true}',Text3:'{"text":"Off","color":"gold"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:item_rate/click_item_rate"}}'}
execute if score $item_rate settings matches 1 run setblock -7 64 24 oak_wall_sign[facing=east]{Text1:'{"text":"Item","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"spawn rate:","color":"aqua","bold":true}',Text3:'{"text":"Fast","color":"gold"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:item_rate/click_item_rate"}}'}
execute if score $item_rate settings matches 2 run setblock -7 64 24 oak_wall_sign[facing=east]{Text1:'{"text":"Item","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"spawn rate:","color":"aqua","bold":true}',Text3:'{"text":"Normal","color":"gold"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:item_rate/click_item_rate"}}'}
execute if score $item_rate settings matches 3 run setblock -7 64 24 oak_wall_sign[facing=east]{Text1:'{"text":"Item","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"spawn rate:","color":"aqua","bold":true}',Text3:'{"text":"Slow","color":"gold"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:item_rate/click_item_rate"}}'}


particle minecraft:cloud -8 65.5 24 0 0 0 0.05 10

kill @e[tag=display_item_rate,type=armor_stand]
execute if score $item_rate settings matches 0 run summon armor_stand -8 63.825 24 {DisabledSlots:2039583,Tags:["display_item_rate","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:polished_basalt",Count:1b}]}
execute if score $item_rate settings matches 1 run summon armor_stand -8 63.825 24 {DisabledSlots:2039583,Tags:["display_item_rate","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:oak_log",Count:1b}]}
execute if score $item_rate settings matches 2 run summon armor_stand -8 63.825 24 {DisabledSlots:2039583,Tags:["display_item_rate","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:jungle_log",Count:1b}]}
execute if score $item_rate settings matches 3 run summon armor_stand -8 63.825 24 {DisabledSlots:2039583,Tags:["display_item_rate","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:spruce_log",Count:1b}]}




##Killing items and setting timers
execute if score $item_rate settings matches 0 run kill @e[type=area_effect_cloud,tag=item_spawn]
execute if score $item_rate settings matches 0 run kill @e[type=item,nbt={Item:{tag:{item:1}}}]
execute if score $item_rate settings matches 0 run kill @e[type=item,tag=item]
execute if score $item_rate settings matches 0 run clear @a[gamemode=adventure,tag=is_fighter]

execute if score $item_rate settings matches 1..2 as @a[tag=is_fighter] at @s run function item:random_time