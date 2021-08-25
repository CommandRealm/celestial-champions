##Starts the ending phase.

##Score
scoreboard players set $end cooldown 100

##Remove sidebar
scoreboard objectives setdisplay sidebar

##Tellraws and titles

title @a[tag=playing] times 5 50 5


execute if entity @a[tag=playing,tag=winner,tag=on_red_team] if entity @a[tag=playing,tag=!winner] run title @a[tag=playing] title [{"text":"Red Team","color":"dark_red"},{"text":" wins!","color":"white"}]
execute if entity @a[tag=playing,tag=winner,tag=on_red_team] if entity @a[tag=playing,tag=!winner] run tellraw @a[tag=playing] [{"text":"Red Team","color":"dark_red"},{"text":" wins!","color":"white"}]

execute if entity @a[tag=playing,tag=winner,tag=on_blue_team] if entity @a[tag=playing,tag=!winner] run title @a[tag=playing] title [{"text":"Blue Team","color":"dark_blue"},{"text":" wins!","color":"white"}]
execute if entity @a[tag=playing,tag=winner,tag=on_blue_team] if entity @a[tag=playing,tag=!winner] run tellraw @a[tag=playing] [{"text":"Blue Team","color":"dark_blue"},{"text":" wins!","color":"white"}]

execute if entity @a[tag=playing,tag=winner,tag=on_yellow_team] if entity @a[tag=playing,tag=!winner] run title @a[tag=playing] title [{"text":"Yellow Team","color":"yellow"},{"text":" wins!","color":"white"}]
execute if entity @a[tag=playing,tag=winner,tag=on_yellow_team] if entity @a[tag=playing,tag=!winner] run tellraw @a[tag=playing] [{"text":"Yellow Team","color":"yellow"},{"text":" wins!","color":"white"}]

execute if entity @a[tag=playing,tag=winner,tag=on_green_team] if entity @a[tag=playing,tag=!winner] run title @a[tag=playing] title [{"text":"Green Team","color":"green"},{"text":" wins!","color":"white"}]
execute if entity @a[tag=playing,tag=winner,tag=on_green_team] if entity @a[tag=playing,tag=!winner] run tellraw @a[tag=playing] [{"text":"Green Team","color":"green"},{"text":" wins!","color":"white"}]

execute if entity @a[tag=playing,tag=winner,tag=on_cyan_team] if entity @a[tag=playing,tag=!winner] run title @a[tag=playing] title [{"text":"Cyan Team","color":"dark_aqua"},{"text":" wins!","color":"white"}]
execute if entity @a[tag=playing,tag=winner,tag=on_cyan_team] if entity @a[tag=playing,tag=!winner] run tellraw @a[tag=playing] [{"text":"Cyan Team","color":"dark_aqua"},{"text":" wins!","color":"white"}]

execute if entity @a[tag=playing,tag=winner,tag=on_orange_team] if entity @a[tag=playing,tag=!winner] run title @a[tag=playing] title [{"text":"Orange Team","color":"gold"},{"text":" wins!","color":"white"}]
execute if entity @a[tag=playing,tag=winner,tag=on_orange_team] if entity @a[tag=playing,tag=!winner] run tellraw @a[tag=playing] [{"text":"Orange Team","color":"gold"},{"text":" wins!","color":"white"}]

execute if entity @a[tag=playing,tag=winner,tag=on_pink_team] if entity @a[tag=playing,tag=!winner] run title @a[tag=playing] title [{"text":"Pink Team","color":"light_purple"},{"text":" wins!","color":"white"}]
execute if entity @a[tag=playing,tag=winner,tag=on_pink_team] if entity @a[tag=playing,tag=!winner] run tellraw @a[tag=playing] [{"text":"Pink Team","color":"light_purple"},{"text":" wins!","color":"white"}]

execute if entity @a[tag=playing,tag=winner,tag=on_purple_team] if entity @a[tag=playing,tag=!winner] run title @a[tag=playing] title [{"text":"Purple Team","color":"dark_purple"},{"text":" wins!","color":"white"}]
execute if entity @a[tag=playing,tag=winner,tag=on_purple_team] if entity @a[tag=playing,tag=!winner] run tellraw @a[tag=playing] [{"text":"Purple Team","color":"dark_purple"},{"text":" wins!","color":"white"}]

execute if entity @a[tag=playing,tag=winner,tag=on_white_team] if entity @a[tag=playing,tag=!winner] run title @a[tag=playing] title [{"text":"White Team","color":"white"},{"text":" wins!","color":"white"}]
execute if entity @a[tag=playing,tag=winner,tag=on_white_team] if entity @a[tag=playing,tag=!winner] run tellraw @a[tag=playing] [{"text":"White Team","color":"white"},{"text":" wins!","color":"white"}]

execute if entity @a[tag=playing,tag=winner,tag=on_gray_team] if entity @a[tag=playing,tag=!winner] run title @a[tag=playing] title [{"text":"Gray Team","color":"dark_gray"},{"text":" wins!","color":"white"}]
execute if entity @a[tag=playing,tag=winner,tag=on_gray_team] if entity @a[tag=playing,tag=!winner] run tellraw @a[tag=playing] [{"text":"Gray Team","color":"dark_gray"},{"text":" wins!","color":"white"}]

execute if entity @a[tag=playing,tag=winner] unless entity @a[tag=playing,tag=!winner] run title @a[tag=playing] title [{"text":"Everyone","color":"dark_gray"},{"text":" wins!","color":"white"}]
execute if entity @a[tag=playing,tag=winner] unless entity @a[tag=playing,tag=!winner] run tellraw @a[tag=playing] [{"text":"Everyone","color":"dark_gray"},{"text":" wins!","color":"white"}]