##called during the selection phase.
execute if score $time game matches 1 run function game:competitive/tp_players
execute if score $time game matches 1 run function game:competitive/selection_phase/choose_player

##if buttons are pressed.
execute positioned 6 61 88 if block ~ ~ ~ stone_button[powered=true] run function game:competitive/selection_phase/choose
execute positioned 4 61 88 if block ~ ~ ~ stone_button[powered=true] run function game:competitive/selection_phase/choose
execute positioned 2 61 88 if block ~ ~ ~ stone_button[powered=true] run function game:competitive/selection_phase/choose
execute positioned 0 61 88 if block ~ ~ ~ stone_button[powered=true] run function game:competitive/selection_phase/choose
execute positioned -2 61 88 if block ~ ~ ~ stone_button[powered=true] run function game:competitive/selection_phase/choose
execute positioned -4 61 88 if block ~ ~ ~ stone_button[powered=true] run function game:competitive/selection_phase/choose
execute positioned -6 61 88 if block ~ ~ ~ stone_button[powered=true] run function game:competitive/selection_phase/choose

##If all the maps are striked
execute if entity @e[type=armor_stand,tag=selected_map] run scoreboard players remove $comp_kill_delay game 1
execute if entity @e[type=armor_stand,tag=selected_map] if score $comp_kill_delay game matches 0 as @e[type=armor_stand,tag=competitive_mode_temp,tag=model,tag=!selected_map,sort=random,limit=1] at @s run function game:competitive/remove_map_selector

##If we're taking too long.
execute if score $time game matches 500 as @a[tag=playing,tag=!just_striked] at @s run function game:competitive/time_warning
execute if score $time game matches 600 as @a[tag=playing,tag=!just_striked] at @s run function game:competitive/selection_phase/time_over

title @a[tag=playing] title [{"text":""}]
title @a[tag=playing,tag=!just_striked] subtitle [{"text":"!","color":"gold","bold":true},{"text":" CHOOSE A MAP ","color":"yellow","bold":false},{"text":"!","color":"gold","bold":true}]
title @a[tag=playing,tag=just_striked] subtitle [{"text":""}]

effect give @a[tag=playing] weakness 1 255 true