setblock -7 64 22 air
playsound minecraft:ui.button.click master @s
scoreboard players add $teams settings 1
execute if score $teams settings matches 11.. run scoreboard players set $teams settings 1
execute if score $teams settings matches ..0 run scoreboard players set $teams settings 10

execute if score $teams settings matches 1 run setblock -7 64 22 oak_wall_sign[facing=east]{front_text:{messages:['{"translate":"Number of","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}', '{"translate":"teams:","color":"aqua","bold":true}', '{"translate":"Solos","color":"gold"}', '{"translate":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:teams/check_click_teams"}}'], has_glowing_text: false, color: "black"}}
execute if score $teams settings matches 2.. run setblock -7 64 22 oak_wall_sign[facing=east]{front_text:{messages:['{"translate":"Number of","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}', '{"translate":"teams:","color":"aqua","bold":true}', '{"score":{"objective":"settings","name":"$teams"},"color":"gold"}', '{"translate":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:teams/check_click_teams"}}'], has_glowing_text: false, color: "black"}}


particle minecraft:cloud -8 65.5 22 0 0 0 0.05 10

kill @e[tag=display_teams,type=armor_stand]
execute if score $teams settings matches 1 run summon armor_stand -8 64.675 22 {Small:1b,Pose:{RightArm:[-15.0f,135.0f,0.0f]},DisabledSlots:2039583,Tags:["display_teams","model"],Invisible:1b,NoGravity:1b,Invulnerable:1b,HandItems:[{id:"minecraft:light_blue_concrete",Count:1b},{}]}
execute if score $teams settings matches 2.. run summon armor_stand -8 64.675 22 {Small:1b,Pose:{RightArm:[-15.0f,135.0f,0.0f]},DisabledSlots:2039583,Tags:["display_teams","model"],Invisible:1b,NoGravity:1b,Invulnerable:1b,HandItems:[{id:"minecraft:red_concrete",Count:1b},{}]}
execute if score $teams settings matches 2.. run summon armor_stand -8 64.8625 22 {Small:1b,Pose:{RightArm:[-15.0f,135.0f,0.0f]},DisabledSlots:2039583,Tags:["display_teams","model"],Invisible:1b,NoGravity:1b,Invulnerable:1b,HandItems:[{id:"minecraft:blue_concrete",Count:1b},{}]}
execute if score $teams settings matches 3.. run summon armor_stand -8 65.05 22 {Small:1b,Pose:{RightArm:[-15.0f,135.0f,0.0f]},DisabledSlots:2039583,Tags:["display_teams","model"],Invisible:1b,NoGravity:1b,Invulnerable:1b,HandItems:[{id:"minecraft:yellow_concrete",Count:1b},{}]}
execute if score $teams settings matches 4.. run summon armor_stand -8 65.2375 22 {Small:1b,Pose:{RightArm:[-15.0f,135.0f,0.0f]},DisabledSlots:2039583,Tags:["display_teams","model"],Invisible:1b,NoGravity:1b,Invulnerable:1b,HandItems:[{id:"minecraft:lime_concrete",Count:1b},{}]}
execute if score $teams settings matches 5.. run summon armor_stand -8 65.425 22 {Small:1b,Pose:{RightArm:[-15.0f,135.0f,0.0f]},DisabledSlots:2039583,Tags:["display_teams","model"],Invisible:1b,NoGravity:1b,Invulnerable:1b,HandItems:[{id:"minecraft:cyan_concrete",Count:1b},{}]}
execute if score $teams settings matches 6.. run summon armor_stand -8 64.675 22 {Rotation:[180f,0f],Small:1b,Pose:{RightArm:[-15.0f,135.0f,0.0f]},DisabledSlots:2039583,Tags:["display_teams","model"],Invisible:1b,NoGravity:1b,Invulnerable:1b,HandItems:[{id:"minecraft:orange_concrete",Count:1b},{}]}
execute if score $teams settings matches 7.. run summon armor_stand -8 64.8625 22 {Rotation:[180f,0f],Small:1b,Pose:{RightArm:[-15.0f,135.0f,0.0f]},DisabledSlots:2039583,Tags:["display_teams","model"],Invisible:1b,NoGravity:1b,Invulnerable:1b,HandItems:[{id:"minecraft:pink_concrete",Count:1b},{}]}
execute if score $teams settings matches 8.. run summon armor_stand -8 65.05 22 {Rotation:[180f,0f],Small:1b,Pose:{RightArm:[-15.0f,135.0f,0.0f]},DisabledSlots:2039583,Tags:["display_teams","model"],Invisible:1b,NoGravity:1b,Invulnerable:1b,HandItems:[{id:"minecraft:purple_concrete",Count:1b},{}]}
execute if score $teams settings matches 9.. run summon armor_stand -8 65.2375 22 {Rotation:[180f,0f],Small:1b,Pose:{RightArm:[-15.0f,135.0f,0.0f]},DisabledSlots:2039583,Tags:["display_teams","model"],Invisible:1b,NoGravity:1b,Invulnerable:1b,HandItems:[{id:"minecraft:white_concrete",Count:1b},{}]}
execute if score $teams settings matches 10.. run summon armor_stand -8 65.425 22 {Rotation:[180f,0f],Small:1b,Pose:{RightArm:[-15.0f,135.0f,0.0f]},DisabledSlots:2039583,Tags:["display_teams","model"],Invisible:1b,NoGravity:1b,Invulnerable:1b,HandItems:[{id:"minecraft:gray_concrete",Count:1b},{}]}



##Disabling objective and clearing books
scoreboard objectives remove select_team
clear @a[gamemode=adventure] written_book

##Adding back objectives
execute if score $teams settings matches 2.. run scoreboard objectives add select_team trigger


##Pulling people off of their teams
execute if score $teams settings matches ..1 as @a[team=teams_red] at @s run function lobby:teams/select_leave
execute if score $teams settings matches ..1 as @a[team=teams_blue] at @s run function lobby:teams/select_leave
execute if score $teams settings matches ..2 as @a[team=teams_yellow] at @s run function lobby:teams/select_leave
execute if score $teams settings matches ..3 as @a[team=teams_green] at @s run function lobby:teams/select_leave
execute if score $teams settings matches ..4 as @a[team=teams_orange] at @s run function lobby:teams/select_leave
execute if score $teams settings matches ..5 as @a[team=teams_cyan] at @s run function lobby:teams/select_leave
execute if score $teams settings matches ..6 as @a[team=teams_pink] at @s run function lobby:teams/select_leave
execute if score $teams settings matches ..7 as @a[team=teams_purple] at @s run function lobby:teams/select_leave
execute if score $teams settings matches ..8 as @a[team=teams_white] at @s run function lobby:teams/select_leave
execute if score $teams settings matches ..9 as @a[team=teams_gray] at @s run function lobby:teams/select_leave
