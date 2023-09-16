setblock 7 64 24 air
playsound minecraft:ui.button.click master @s
scoreboard players add $lives settings 1
execute if score $lives settings matches 21.. run scoreboard players set $lives settings 1
execute if score $lives settings matches ..0 run scoreboard players set $lives settings 20

setblock 7 64 24 oak_wall_sign[facing=west]{front_text:{messages:['{"translate":"","color":"blue","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}', '{"translate":"Lives:","color":"aqua","bold":true}', '{"score":{"objective":"settings","name":"$lives"},"color":"gold"}', '{"translate":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:lives/click_life"}}'], has_glowing_text: false, color: "black"}}


particle minecraft:cloud 8 65.5 24 0 0 0 0.05 10

kill @e[tag=display_lives,type=armor_stand]
summon armor_stand 8 63.825 24 {DisabledSlots:2039583,Tags:["display_lives","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:prismarine_bricks",Count:1b}]}
