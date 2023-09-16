setblock 7 64 20 air
playsound minecraft:ui.button.click master @s
scoreboard players add $mode settings 1
execute if score $mode settings matches 5.. run scoreboard players set $mode settings 0
execute if score $mode settings matches ..-1 run scoreboard players set $mode settings 4

execute if score $mode settings matches 0 run setblock 7 64 20 oak_wall_sign[facing=west]{front_text:{messages:['{"translate":"","color":"blue","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}', '{"translate":"Mode:","color":"aqua","bold":true}', '{"translate":"Lives","color":"gold"}', '{"translate":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:mode/click_mode"}}'], has_glowing_text: false, color: "black"}}
execute if score $mode settings matches 1 run setblock 7 64 20 oak_wall_sign[facing=west]{front_text:{messages:['{"translate":"","color":"blue","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}', '{"translate":"Mode:","color":"aqua","bold":true}', '{"translate":"Kills","color":"gold"}', '{"translate":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:mode/click_mode"}}'], has_glowing_text: false, color: "black"}}
execute if score $mode settings matches 2 run setblock 7 64 20 oak_wall_sign[facing=west]{front_text:{messages:['{"translate":"","color":"blue","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}', '{"translate":"Mode:","color":"aqua","bold":true}', '{"translate":"Time","color":"gold"}', '{"translate":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:mode/click_mode"}}'], has_glowing_text: false, color: "black"}}
execute if score $mode settings matches 3 run setblock 7 64 20 oak_wall_sign[facing=west]{front_text:{messages:['{"translate":"","color":"blue","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}', '{"translate":"Mode:","color":"aqua","bold":true}', '{"translate":"Duels","color":"gold"}', '{"translate":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:mode/click_mode"}}'], has_glowing_text: false, color: "black"}}
execute if score $mode settings matches 4 run setblock 7 64 20 oak_wall_sign[facing=west]{front_text:{messages:['{"translate":"","color":"blue","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}', '{"translate":"Mode:","color":"aqua","bold":true}', '{"translate":"Competitive","color":"gold"}', '{"translate":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:mode/click_mode"}}'], has_glowing_text: false, color: "black"}}


particle minecraft:cloud 8 65.5 20 0 0 0 0.05 10

kill @e[tag=display_mode,type=armor_stand]
execute if score $mode settings matches 0 run summon armor_stand 8 63.825 20 {DisabledSlots:2039583,Tags:["display_mode","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:light_blue_terracotta",Count:1b}]}
execute if score $mode settings matches 1 run summon armor_stand 8 63.825 20 {DisabledSlots:2039583,Tags:["display_mode","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:red_terracotta",Count:1b}]}
execute if score $mode settings matches 2 run summon armor_stand 8 63.825 20 {DisabledSlots:2039583,Tags:["display_mode","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:orange_terracotta",Count:1b}]}
execute if score $mode settings matches 3 run summon armor_stand 8 63.825 20 {DisabledSlots:2039583,Tags:["display_mode","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:light_gray_terracotta",Count:1b}]}
execute if score $mode settings matches 4 run summon armor_stand 8 63.825 20 {DisabledSlots:2039583,Tags:["display_mode","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:black_terracotta",Count:1b}]}



##Setting up specific mode option things.




##Placing both option objects
setblock 8 63 24 prismarine_slab[type=top]
setblock 8 63 26 prismarine_slab[type=top]
setblock 8 63 22 prismarine_slab[type=top]
setblock 8 64 22 chiseled_stone_bricks
setblock 8 64 24 chiseled_stone_bricks
setblock 8 64 26 chiseled_stone_bricks
setblock 8 65 22 light_blue_stained_glass
setblock 8 65 24 light_blue_stained_glass
setblock 8 65 26 light_blue_stained_glass
setblock 8 66 22 iron_trapdoor
setblock 8 66 24 iron_trapdoor
setblock 8 66 26 iron_trapdoor

execute unless score $mode settings matches 0 run fill 8 66 26 8 63 26 air



execute if score $mode settings matches 3..4 run fill 8 66 24 8 63 24 air

execute if score $mode settings matches 3..4 run fill 8 66 22 8 63 22 air



##Setting spots that this could later break to barriers.
setblock 8 63 22 barrier
setblock 8 63 24 barrier
setblock 8 63 26 barrier

##Clearing previous signs/models
kill @e[type=armor_stand,tag=model,tag=display_kills]
kill @e[type=armor_stand,tag=model,tag=display_lives]
kill @e[type=armor_stand,tag=model,tag=display_rounds]
kill @e[type=armor_stand,tag=model,tag=display_timer]
kill @e[type=armor_stand,tag=model,tag=display_map]


##Placing specific option signs.
execute if score $mode settings matches 0 run scoreboard players remove $lives settings 1
execute if score $mode settings matches 0 run function options:lives/add_life
execute if score $mode settings matches 0 run scoreboard players remove $rounds_to_win settings 1
execute if score $mode settings matches 0 run function options:rounds/add_rounds

execute if score $mode settings matches 1 run scoreboard players remove $kills_to_win settings 1
execute if score $mode settings matches 1 run function options:kills_to_win/add_kill

execute if score $mode settings matches 2 run scoreboard players remove $set_kills_timer settings 600
execute if score $mode settings matches 2 run function options:timer/add_timer

##Turning off teams if we're on Duels
execute if score $mode settings matches 3..4 run scoreboard players set $teams settings 0
execute if score $mode settings matches 3..4 run function options:teams/add_teams

execute unless score $mode settings matches 3..4 run scoreboard players remove $map settings 1
execute unless score $mode settings matches 3..4 run function options:map/add_map

##If it's comp, turn off items

execute if score $mode settings matches 4 run scoreboard players set $item_rate settings -1
execute if score $mode settings matches 4 run function options:item_rate/add_item_rate


execute if score $mode settings matches 4 run scoreboard players set $time_of_day settings 0
execute if score $mode settings matches 4 run function options:time_of_day/add_time_of_day