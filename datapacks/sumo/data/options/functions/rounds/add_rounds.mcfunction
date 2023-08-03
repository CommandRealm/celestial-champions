setblock 7 64 26 air
playsound minecraft:ui.button.click master @s
scoreboard players add $rounds_to_win settings 1
execute if score $rounds_to_win settings matches 11.. run scoreboard players set $rounds_to_win settings 1
execute if score $rounds_to_win settings matches ..0 run scoreboard players set $rounds_to_win settings 10

setblock 7 64 26 oak_wall_sign[facing=west]{front_text:{messages:['{"text":"","color":"blue","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}', '{"text":"Rounds to win:","color":"aqua","bold":true}', '{"score":{"objective":"settings","name":"$rounds_to_win"},"color":"gold"}', '{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:rounds/click_rounds"}}'], has_glowing_text: false, color: "black"}}


particle minecraft:cloud 8 65.5 26 0 0 0 0.05 10

kill @e[tag=display_rounds,type=armor_stand]
summon armor_stand 8 63.825 26 {DisabledSlots:2039583,Tags:["display_rounds","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:light_blue_wool",Count:1b}]}
