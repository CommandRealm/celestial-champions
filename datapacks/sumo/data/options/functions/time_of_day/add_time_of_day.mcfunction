setblock -7 64 26 air
playsound minecraft:ui.button.click master @s
scoreboard players add $time_of_day settings 1
execute if score $time_of_day settings matches 4.. run scoreboard players set $time_of_day settings 0
execute if score $time_of_day settings matches ..-1 run scoreboard players set $time_of_day settings 3

execute if score $time_of_day settings matches 0 run setblock -7 64 26 oak_wall_sign[facing=east]{front_text:{messages:['{"translate":"","color":"blue","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}', '{"translate":"Time of day:","color":"aqua","bold":true}', '{"translate":"Random","color":"gold"}', '{"translate":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:time_of_day/check_click_time_of_day"}}'], has_glowing_text: false, color: "black"}}
execute if score $time_of_day settings matches 1 run setblock -7 64 26 oak_wall_sign[facing=east]{front_text:{messages:['{"translate":"","color":"blue","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}', '{"translate":"Time of day:","color":"aqua","bold":true}', '{"translate":"Day","color":"gold"}', '{"translate":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:time_of_day/check_click_time_of_day"}}'], has_glowing_text: false, color: "black"}}
execute if score $time_of_day settings matches 2 run setblock -7 64 26 oak_wall_sign[facing=east]{front_text:{messages:['{"translate":"","color":"blue","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}', '{"translate":"Time of day:","color":"aqua","bold":true}', '{"translate":"Dusk","color":"gold"}', '{"translate":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:time_of_day/check_click_time_of_day"}}'], has_glowing_text: false, color: "black"}}
execute if score $time_of_day settings matches 3 run setblock -7 64 26 oak_wall_sign[facing=east]{front_text:{messages:['{"translate":"","color":"blue","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}', '{"translate":"Time of day:","color":"aqua","bold":true}', '{"translate":"Night","color":"gold"}', '{"translate":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:time_of_day/check_click_time_of_day"}}'], has_glowing_text: false, color: "black"}}


particle minecraft:cloud -8 65.5 26 0 0 0 0.05 10

kill @e[tag=display_time_of_day,type=armor_stand]
execute if score $time_of_day settings matches 0 run summon armor_stand -8 63.825 26 {DisabledSlots:2039583,Tags:["display_time_of_day","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:jigsaw",Count:1b}]}
execute if score $time_of_day settings matches 1 run summon armor_stand -8 63.825 26 {DisabledSlots:2039583,Tags:["display_time_of_day","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:yellow_concrete",Count:1b}]}
execute if score $time_of_day settings matches 2 run summon armor_stand -8 63.825 26 {DisabledSlots:2039583,Tags:["display_time_of_day","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:orange_concrete",Count:1b}]}
execute if score $time_of_day settings matches 3 run summon armor_stand -8 63.825 26 {DisabledSlots:2039583,Tags:["display_time_of_day","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:black_concrete",Count:1b}]}


##Actual setting the time
execute if score $time_of_day settings matches 0 run function options:time_of_day/random_time
execute unless score $time_of_day settings matches 0 run function options:time_of_day/set_time