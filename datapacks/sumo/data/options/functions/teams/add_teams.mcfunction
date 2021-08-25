setblock -7 64 20 air
playsound minecraft:ui.button.click master @s
scoreboard players add $teams settings 1
execute if score $teams settings matches 11.. run scoreboard players set $teams settings 1
execute if score $teams settings matches ..0 run scoreboard players set $teams settings 10

execute if score $teams settings matches 1 run setblock -7 64 20 oak_wall_sign[facing=east]{Text1:'{"text":"Number of","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"teams:","color":"aqua","bold":true}',Text3:'{"text":"Solos","color":"gold"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:teams/check_click_teams"}}'}
execute if score $teams settings matches 2.. run setblock -7 64 20 oak_wall_sign[facing=east]{Text1:'{"text":"Number of","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"teams:","color":"aqua","bold":true}',Text3:'{"score":{"objective":"settings","name":"$teams"},"color":"gold"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:teams/check_click_teams"}}'}


particle minecraft:cloud -8 65.5 20 0 0 0 0.05 10

kill @e[tag=display_teams,type=armor_stand]
execute if score $teams settings matches 1 run summon armor_stand -8 64.675 20 {Small:1b,Pose:{RightArm:[-15.0f,135.0f,0.0f]},DisabledSlots:2039583,Tags:["display_teams","model"],Invisible:1b,NoGravity:1b,Invulnerable:1b,HandItems:[{id:"minecraft:light_blue_concrete",Count:1b},{}]}
execute if score $teams settings matches 2.. run summon armor_stand -8 64.675 20 {Small:1b,Pose:{RightArm:[-15.0f,135.0f,0.0f]},DisabledSlots:2039583,Tags:["display_teams","model"],Invisible:1b,NoGravity:1b,Invulnerable:1b,HandItems:[{id:"minecraft:red_concrete",Count:1b},{}]}
execute if score $teams settings matches 2.. run summon armor_stand -8 64.8625 20 {Small:1b,Pose:{RightArm:[-15.0f,135.0f,0.0f]},DisabledSlots:2039583,Tags:["display_teams","model"],Invisible:1b,NoGravity:1b,Invulnerable:1b,HandItems:[{id:"minecraft:blue_concrete",Count:1b},{}]}
execute if score $teams settings matches 3.. run summon armor_stand -8 65.05 20 {Small:1b,Pose:{RightArm:[-15.0f,135.0f,0.0f]},DisabledSlots:2039583,Tags:["display_teams","model"],Invisible:1b,NoGravity:1b,Invulnerable:1b,HandItems:[{id:"minecraft:yellow_concrete",Count:1b},{}]}
execute if score $teams settings matches 4.. run summon armor_stand -8 65.2375 20 {Small:1b,Pose:{RightArm:[-15.0f,135.0f,0.0f]},DisabledSlots:2039583,Tags:["display_teams","model"],Invisible:1b,NoGravity:1b,Invulnerable:1b,HandItems:[{id:"minecraft:lime_concrete",Count:1b},{}]}
execute if score $teams settings matches 5.. run summon armor_stand -8 65.425 20 {Small:1b,Pose:{RightArm:[-15.0f,135.0f,0.0f]},DisabledSlots:2039583,Tags:["display_teams","model"],Invisible:1b,NoGravity:1b,Invulnerable:1b,HandItems:[{id:"minecraft:cyan_concrete",Count:1b},{}]}
execute if score $teams settings matches 6.. run summon armor_stand -8 64.675 20 {Rotation:[180f,0f],Small:1b,Pose:{RightArm:[-15.0f,135.0f,0.0f]},DisabledSlots:2039583,Tags:["display_teams","model"],Invisible:1b,NoGravity:1b,Invulnerable:1b,HandItems:[{id:"minecraft:orange_concrete",Count:1b},{}]}
execute if score $teams settings matches 7.. run summon armor_stand -8 64.8625 20 {Rotation:[180f,0f],Small:1b,Pose:{RightArm:[-15.0f,135.0f,0.0f]},DisabledSlots:2039583,Tags:["display_teams","model"],Invisible:1b,NoGravity:1b,Invulnerable:1b,HandItems:[{id:"minecraft:pink_concrete",Count:1b},{}]}
execute if score $teams settings matches 8.. run summon armor_stand -8 65.05 20 {Rotation:[180f,0f],Small:1b,Pose:{RightArm:[-15.0f,135.0f,0.0f]},DisabledSlots:2039583,Tags:["display_teams","model"],Invisible:1b,NoGravity:1b,Invulnerable:1b,HandItems:[{id:"minecraft:purple_concrete",Count:1b},{}]}
execute if score $teams settings matches 9.. run summon armor_stand -8 65.2375 20 {Rotation:[180f,0f],Small:1b,Pose:{RightArm:[-15.0f,135.0f,0.0f]},DisabledSlots:2039583,Tags:["display_teams","model"],Invisible:1b,NoGravity:1b,Invulnerable:1b,HandItems:[{id:"minecraft:white_concrete",Count:1b},{}]}
execute if score $teams settings matches 10.. run summon armor_stand -8 65.425 20 {Rotation:[180f,0f],Small:1b,Pose:{RightArm:[-15.0f,135.0f,0.0f]},DisabledSlots:2039583,Tags:["display_teams","model"],Invisible:1b,NoGravity:1b,Invulnerable:1b,HandItems:[{id:"minecraft:gray_concrete",Count:1b},{}]}



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
