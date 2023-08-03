setblock -7 64 22 air
playsound minecraft:ui.button.click master @s
scoreboard players add $auto_ready settings 1
execute if score $auto_ready settings matches 2.. run scoreboard players set $auto_ready settings 0
execute if score $auto_ready settings matches ..-1 run scoreboard players set $auto_ready settings 1

execute if score $auto_ready settings matches 0 run setblock -7 64 22 oak_wall_sign[facing=east]{front_text:{messages:['{"text":"Auto-ready","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}', '{"text":"after games:","color":"aqua","bold":true}', '{"text":"Off","color":"gold"}', '{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:auto_ready/click_auto_ready"}}'], has_glowing_text: false, color: "black"}}
execute if score $auto_ready settings matches 1 run setblock -7 64 22 oak_wall_sign[facing=east]{front_text:{messages:['{"text":"Auto-ready","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}', '{"text":"after games:","color":"aqua","bold":true}', '{"text":"On","color":"gold"}', '{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:auto_ready/click_auto_ready"}}'], has_glowing_text: false, color: "black"}}


particle minecraft:cloud -8 65.5 22 0 0 0 0.05 10

kill @e[tag=display_auto_ready,type=armor_stand]
execute if score $auto_ready settings matches 0 run summon armor_stand -8 63.825 22 {DisabledSlots:2039583,Tags:["display_auto_ready","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:red_concrete",Count:1b}]}
execute if score $auto_ready settings matches 1 run summon armor_stand -8 63.825 22 {DisabledSlots:2039583,Tags:["display_auto_ready","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:lime_concrete",Count:1b}]}

