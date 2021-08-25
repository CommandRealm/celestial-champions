##called when we're playing teams and we take damage

execute if entity @s[tag=on_red_team] run tag @a[tag=playing,tag=on_red_team] add check_teammate_damage
execute if entity @s[tag=on_blue_team] run tag @a[tag=playing,tag=on_blue_team] add check_teammate_damage
execute if entity @s[tag=on_yellow_team] run tag @a[tag=playing,tag=on_yellow_team] add check_teammate_damage
execute if entity @s[tag=on_green_team] run tag @a[tag=playing,tag=on_green_team] add check_teammate_damage
execute if entity @s[tag=on_cyan_team] run tag @a[tag=playing,tag=on_cyan_team] add check_teammate_damage
execute if entity @s[tag=on_orange_team] run tag @a[tag=playing,tag=on_orange_team] add check_teammate_damage
execute if entity @s[tag=on_pink_team] run tag @a[tag=playing,tag=on_pink_team] add check_teammate_damage
execute if entity @s[tag=on_purple_team] run tag @a[tag=playing,tag=on_purple_team] add check_teammate_damage
execute if entity @s[tag=on_white_team] run tag @a[tag=playing,tag=on_white_team] add check_teammate_damage
execute if entity @s[tag=on_gray_team] run tag @a[tag=playing,tag=on_gray_team] add check_teammate_damage

##removing our check teammate damage tag
tag @s remove check_teammate_damage

##tag
tag @s add temporary_tag

##Seeing if our teammate has our damaged id score
execute as @a[tag=check_teammate_damage,tag=playing] at @s if score @s id = @p[tag=temporary_tag] damaged_id run tag @p[tag=temporary_tag] add teammate_damage

##if there was teammate damage
execute if entity @s[tag=teammate_damage] run scoreboard players operation @s damaged_id = @s calculate

##tag removals
tag @s remove temporary_tag
tag @a remove check_teammate_damage
tag @s remove teammate_damage