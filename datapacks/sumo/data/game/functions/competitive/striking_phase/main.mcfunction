##Main striking phase
execute if score $time game matches 1 run function game:competitive/tp_players
execute if score $time game matches 1 run function game:competitive/striking_phase/choose_player

##if buttons are pressed.
execute if block 6 61 88 stone_button[powered=true] run function game:competitive/striking_phase/strike_1
execute if block 4 61 88 stone_button[powered=true] run function game:competitive/striking_phase/strike_2
execute if block 2 61 88 stone_button[powered=true] run function game:competitive/striking_phase/strike_3
execute if block 0 61 88 stone_button[powered=true] run function game:competitive/striking_phase/strike_4
execute if block -2 61 88 stone_button[powered=true] run function game:competitive/striking_phase/strike_5
execute if block -4 61 88 stone_button[powered=true] run function game:competitive/striking_phase/strike_6
execute if block -6 61 88 stone_button[powered=true] run function game:competitive/striking_phase/strike_7

##If all the maps are striked
execute if score $striked_maps game matches 6.. run scoreboard players remove $comp_kill_delay game 1
execute if score $striked_maps game matches 6.. if score $comp_kill_delay game matches 0 as @e[type=armor_stand,tag=competitive_mode_temp,tag=model,tag=!selected_map,sort=random,limit=1] at @s run function game:competitive/remove_map_selector

##If we're taking too long.
execute if score $time game matches 500 as @a[tag=playing,tag=!just_striked] at @s run function game:competitive/time_warning
execute if score $time game matches 600 as @a[tag=playing,tag=!just_striked] at @s run function game:competitive/striking_phase/time_over

##Title
title @a[tag=playing] title [{"translate":""}]
title @a[tag=playing,tag=!just_striked] subtitle [{"translate":"!","color":"dark_red","bold":true},{"translate":" STRIKE A MAP ","color":"red","bold":false},{"translate":"!","color":"dark_red","bold":true}]
title @a[tag=playing,tag=just_striked] subtitle [{"translate":""}]

effect give @a[tag=playing] weakness 1 255 true