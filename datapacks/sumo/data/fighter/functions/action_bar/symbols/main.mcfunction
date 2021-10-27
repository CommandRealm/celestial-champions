##If there is a player with symbols selected.
execute if entity @a[tag=is_fighter,tag=!slow_falling_until_landing,scores={damage_percent=..9},gamemode=adventure,tag=action_bar_symbols] run function fighter:action_bar/symbols/0
execute if entity @a[tag=is_fighter,tag=!slow_falling_until_landing,scores={damage_percent=10..19},gamemode=adventure,tag=action_bar_symbols] run function fighter:action_bar/symbols/1
execute if entity @a[tag=is_fighter,tag=!slow_falling_until_landing,scores={damage_percent=20..29},gamemode=adventure,tag=action_bar_symbols] run function fighter:action_bar/symbols/2
execute if entity @a[tag=is_fighter,tag=!slow_falling_until_landing,scores={damage_percent=30..39},gamemode=adventure,tag=action_bar_symbols] run function fighter:action_bar/symbols/3
execute if entity @a[tag=is_fighter,tag=!slow_falling_until_landing,scores={damage_percent=40..49},gamemode=adventure,tag=action_bar_symbols] run function fighter:action_bar/symbols/4
execute if entity @a[tag=is_fighter,tag=!slow_falling_until_landing,scores={damage_percent=50..59},gamemode=adventure,tag=action_bar_symbols] run function fighter:action_bar/symbols/5
execute if entity @a[tag=is_fighter,tag=!slow_falling_until_landing,scores={damage_percent=60..69},gamemode=adventure,tag=action_bar_symbols] run function fighter:action_bar/symbols/6
execute if entity @a[tag=is_fighter,tag=!slow_falling_until_landing,scores={damage_percent=70..79},gamemode=adventure,tag=action_bar_symbols] run function fighter:action_bar/symbols/7
execute if entity @a[tag=is_fighter,tag=!slow_falling_until_landing,scores={damage_percent=80..89},gamemode=adventure,tag=action_bar_symbols] run function fighter:action_bar/symbols/8
execute if entity @a[tag=is_fighter,tag=!slow_falling_until_landing,scores={damage_percent=90..99},gamemode=adventure,tag=action_bar_symbols] run function fighter:action_bar/symbols/9
execute if entity @a[tag=is_fighter,tag=!slow_falling_until_landing,scores={damage_percent=100..},gamemode=adventure,tag=action_bar_symbols] run function fighter:action_bar/symbols/10
