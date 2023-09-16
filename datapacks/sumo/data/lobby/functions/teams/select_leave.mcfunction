##called when we leave our team
execute unless entity @s[team=!teams_red,team=!teams_yellow,team=!teams_blue,team=!teams_green,team=!teams_orange,team=!teams_cyan,team=!teams_pink,team=!teams_purple,team=!teams_white,team=!teams_gray] run tellraw @s {"translate":"You have left your team.","color":"gray"}
execute unless entity @s[team=!teams_red,team=!teams_yellow,team=!teams_blue,team=!teams_green,team=!teams_orange,team=!teams_cyan,team=!teams_pink,team=!teams_purple,team=!teams_white,team=!teams_gray] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

execute unless entity @s[team=!lobby,team=!test,team=!help,team=!bld,team=!prg,team=!srprg,team=!lead,team=!sky_explorer,team=!sr_art,team=!pc_role,team=!manager] run tellraw @s {"translate":"You are not on a team.","color":"gray"}
execute unless entity @s[team=!lobby,team=!test,team=!help,team=!bld,team=!prg,team=!srprg,team=!lead,team=!sky_explorer,team=!sr_art,team=!pc_role,team=!manager] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0

tag @s remove rejoin_red
tag @s remove rejoin_blue
tag @s remove rejoin_yellow
tag @s remove rejoin_green
tag @s remove rejoin_cyan
tag @s remove rejoin_orange
tag @s remove rejoin_pink
tag @s remove rejoin_purple
tag @s remove rejoin_white
tag @s remove rejoin_gray
function general:rank