setblock -7 64 26 air
playsound minecraft:ui.button.click master @s
scoreboard players add $time_of_day settings 1
execute if score $time_of_day settings matches 4.. run scoreboard players set $time_of_day settings 0
execute if score $time_of_day settings matches ..-1 run scoreboard players set $time_of_day settings 3

execute if score $time_of_day settings matches 0 run setblock -7 64 26 oak_wall_sign[facing=east]{Text1:'{"text":"","color":"blue","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Time of day:","color":"aqua","bold":true}',Text3:'{"text":"Random","color":"gold"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:time_of_day/check_click_time_of_day"}}'}
execute if score $time_of_day settings matches 1 run setblock -7 64 26 oak_wall_sign[facing=east]{Text1:'{"text":"","color":"blue","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Time of day:","color":"aqua","bold":true}',Text3:'{"text":"Day","color":"gold"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:time_of_day/check_click_time_of_day"}}'}
execute if score $time_of_day settings matches 2 run setblock -7 64 26 oak_wall_sign[facing=east]{Text1:'{"text":"","color":"blue","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Time of day:","color":"aqua","bold":true}',Text3:'{"text":"Dusk","color":"gold"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:time_of_day/check_click_time_of_day"}}'}
execute if score $time_of_day settings matches 3 run setblock -7 64 26 oak_wall_sign[facing=east]{Text1:'{"text":"","color":"blue","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Time of day:","color":"aqua","bold":true}',Text3:'{"text":"Night","color":"gold"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:time_of_day/check_click_time_of_day"}}'}


particle minecraft:cloud -8 65.5 26 0 0 0 0.05 10

kill @e[tag=display_time_of_day,type=armor_stand]
execute if score $time_of_day settings matches 0 run summon armor_stand -8 63.825 26 {DisabledSlots:2039583,Tags:["display_time_of_day","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:jigsaw",Count:1b}]}
execute if score $time_of_day settings matches 1 run summon armor_stand -8 63.825 26 {DisabledSlots:2039583,Tags:["display_time_of_day","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:yellow_concrete",Count:1b}]}
execute if score $time_of_day settings matches 2 run summon armor_stand -8 63.825 26 {DisabledSlots:2039583,Tags:["display_time_of_day","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:orange_concrete",Count:1b}]}
execute if score $time_of_day settings matches 3 run summon armor_stand -8 63.825 26 {DisabledSlots:2039583,Tags:["display_time_of_day","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:black_concrete",Count:1b}]}


##Actual setting the time
execute if score $time_of_day settings matches 0 run function options:time_of_day/random_time
execute unless score $time_of_day settings matches 0 run function options:time_of_day/set_time