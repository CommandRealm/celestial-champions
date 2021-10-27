##Called to reset the screen a player is currently on.

execute if entity @s[scores={screen=-1}] run function lobby:chest_menu/fighter_selection/start

execute if entity @s[scores={screen=0}] run function lobby:chest_menu/start

execute if entity @s[scores={screen=1}] run function lobby:chest_menu/start_credits

execute if entity @s[scores={screen=2}] run function lobby:chest_menu/start_website_credits

execute if entity @s[scores={screen=3}] run function lobby:chest_menu/start_music_credits

execute if entity @s[scores={screen=4}] run function lobby:chest_menu/start_team_credits

execute if entity @s[scores={screen=5}] run function lobby:chest_menu/start_stats

execute if entity @s[scores={screen=6}] run function lobby:chest_menu/start_options

execute if entity @s[scores={screen=7}] run function lobby:chest_menu/start_hotbar_orientation

execute if entity @s[scores={screen=8}] run function lobby:chest_menu/start_cosmetics

execute if entity @s[scores={screen=9}] run function lobby:chest_menu/start_death_animations

execute if entity @s[scores={screen=10}] run function lobby:chest_menu/start_celebrations

execute if entity @s[scores={screen=11}] run function lobby:chest_menu/start_advancement_unlocks