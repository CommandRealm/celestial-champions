setblock 7 64 24 air
playsound minecraft:ui.button.click master @s
scoreboard players add $kills_to_win settings 1
execute if score $kills_to_win settings matches 26.. run scoreboard players set $kills_to_win settings 1
execute if score $kills_to_win settings matches ..0 run scoreboard players set $kills_to_win settings 25

setblock 7 64 24 oak_wall_sign[facing=west]{front_text:{messages:['{"text":"","color":"blue","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}', '{"text":"Kills to win:","color":"aqua","bold":true}', '{"score":{"objective":"settings","name":"$kills_to_win"},"color":"gold"}', '{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:kills_to_win/click_kill"}}'], has_glowing_text: false, color: "black"}}


particle minecraft:cloud 8 65.5 24 0 0 0 0.05 10

kill @e[tag=display_kills,type=armor_stand]
summon armor_stand 8 63.825 24 {DisabledSlots:2039583,Tags:["display_kills","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:crimson_hyphae",Count:1b}]}
