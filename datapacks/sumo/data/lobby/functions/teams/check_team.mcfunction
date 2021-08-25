##Copied from dragon wars.

##If we click no team
execute if score $game state matches 0 if score $teams settings matches 2.. if entity @s[scores={select_team=100}] run function lobby:teams/select_leave


execute if score $teams settings matches 1 run scoreboard players set @s select_team -100
execute if score $teams settings matches 2 run scoreboard players set @s[scores={select_team=3..}] select_team -100
execute if score $teams settings matches 3 run scoreboard players set @s[scores={select_team=4..}] select_team -100
execute if score $teams settings matches 4 run scoreboard players set @s[scores={select_team=5..}] select_team -100
execute if score $teams settings matches 5 run scoreboard players set @s[scores={select_team=6..}] select_team -100
execute if score $teams settings matches 6 run scoreboard players set @s[scores={select_team=7..}] select_team -100
execute if score $teams settings matches 7 run scoreboard players set @s[scores={select_team=8..}] select_team -100
execute if score $teams settings matches 8 run scoreboard players set @s[scores={select_team=9..}] select_team -100
execute if score $teams settings matches 9 run scoreboard players set @s[scores={select_team=10..}] select_team -100

execute if entity @s[scores={select_team=1}] run function lobby:teams/select_red
execute if entity @s[scores={select_team=2}] run function lobby:teams/select_blue
execute if entity @s[scores={select_team=3}] run function lobby:teams/select_yellow
execute if entity @s[scores={select_team=4}] run function lobby:teams/select_green
execute if entity @s[scores={select_team=5}] run function lobby:teams/select_cyan
execute if entity @s[scores={select_team=6}] run function lobby:teams/select_orange
execute if entity @s[scores={select_team=7}] run function lobby:teams/select_pink
execute if entity @s[scores={select_team=8}] run function lobby:teams/select_purple
execute if entity @s[scores={select_team=9}] run function lobby:teams/select_white
execute if entity @s[scores={select_team=10}] run function lobby:teams/select_gray

scoreboard players enable @s select_team
scoreboard players reset @s select_team