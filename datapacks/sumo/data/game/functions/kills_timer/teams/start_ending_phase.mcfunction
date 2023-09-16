##Starts the ending phase.

##Score
scoreboard players set $end cooldown 100

##Remove sidebar
scoreboard objectives setdisplay sidebar

##Tellraws and titles

title @a[tag=playing] times 5 50 5


execute if entity @a[tag=playing,tag=winner,tag=on_red_team] if entity @a[tag=playing,tag=!winner] run title @a[tag=playing] title [{"translate":"Red Team","color":"dark_red"},{"translate":" wins!","color":"white"}]
execute if entity @a[tag=playing,tag=winner,tag=on_red_team] if entity @a[tag=playing,tag=!winner] run tellraw @a[tag=playing] [{"translate":"Red Team","color":"dark_red"},{"translate":" wins!","color":"white"}]

execute if entity @a[tag=playing,tag=winner,tag=on_blue_team] if entity @a[tag=playing,tag=!winner] run title @a[tag=playing] title [{"translate":"Blue Team","color":"dark_blue"},{"translate":" wins!","color":"white"}]
execute if entity @a[tag=playing,tag=winner,tag=on_blue_team] if entity @a[tag=playing,tag=!winner] run tellraw @a[tag=playing] [{"translate":"Blue Team","color":"dark_blue"},{"translate":" wins!","color":"white"}]

execute if entity @a[tag=playing,tag=winner,tag=on_yellow_team] if entity @a[tag=playing,tag=!winner] run title @a[tag=playing] title [{"translate":"Yellow Team","color":"yellow"},{"translate":" wins!","color":"white"}]
execute if entity @a[tag=playing,tag=winner,tag=on_yellow_team] if entity @a[tag=playing,tag=!winner] run tellraw @a[tag=playing] [{"translate":"Yellow Team","color":"yellow"},{"translate":" wins!","color":"white"}]

execute if entity @a[tag=playing,tag=winner,tag=on_green_team] if entity @a[tag=playing,tag=!winner] run title @a[tag=playing] title [{"translate":"Green Team","color":"green"},{"translate":" wins!","color":"white"}]
execute if entity @a[tag=playing,tag=winner,tag=on_green_team] if entity @a[tag=playing,tag=!winner] run tellraw @a[tag=playing] [{"translate":"Green Team","color":"green"},{"translate":" wins!","color":"white"}]

execute if entity @a[tag=playing,tag=winner,tag=on_cyan_team] if entity @a[tag=playing,tag=!winner] run title @a[tag=playing] title [{"translate":"Cyan Team","color":"dark_aqua"},{"translate":" wins!","color":"white"}]
execute if entity @a[tag=playing,tag=winner,tag=on_cyan_team] if entity @a[tag=playing,tag=!winner] run tellraw @a[tag=playing] [{"translate":"Cyan Team","color":"dark_aqua"},{"translate":" wins!","color":"white"}]

execute if entity @a[tag=playing,tag=winner,tag=on_orange_team] if entity @a[tag=playing,tag=!winner] run title @a[tag=playing] title [{"translate":"Orange Team","color":"gold"},{"translate":" wins!","color":"white"}]
execute if entity @a[tag=playing,tag=winner,tag=on_orange_team] if entity @a[tag=playing,tag=!winner] run tellraw @a[tag=playing] [{"translate":"Orange Team","color":"gold"},{"translate":" wins!","color":"white"}]

execute if entity @a[tag=playing,tag=winner,tag=on_pink_team] if entity @a[tag=playing,tag=!winner] run title @a[tag=playing] title [{"translate":"Pink Team","color":"light_purple"},{"translate":" wins!","color":"white"}]
execute if entity @a[tag=playing,tag=winner,tag=on_pink_team] if entity @a[tag=playing,tag=!winner] run tellraw @a[tag=playing] [{"translate":"Pink Team","color":"light_purple"},{"translate":" wins!","color":"white"}]

execute if entity @a[tag=playing,tag=winner,tag=on_purple_team] if entity @a[tag=playing,tag=!winner] run title @a[tag=playing] title [{"translate":"Purple Team","color":"dark_purple"},{"translate":" wins!","color":"white"}]
execute if entity @a[tag=playing,tag=winner,tag=on_purple_team] if entity @a[tag=playing,tag=!winner] run tellraw @a[tag=playing] [{"translate":"Purple Team","color":"dark_purple"},{"translate":" wins!","color":"white"}]

execute if entity @a[tag=playing,tag=winner,tag=on_white_team] if entity @a[tag=playing,tag=!winner] run title @a[tag=playing] title [{"translate":"White Team","color":"white"},{"translate":" wins!","color":"white"}]
execute if entity @a[tag=playing,tag=winner,tag=on_white_team] if entity @a[tag=playing,tag=!winner] run tellraw @a[tag=playing] [{"translate":"White Team","color":"white"},{"translate":" wins!","color":"white"}]

execute if entity @a[tag=playing,tag=winner,tag=on_gray_team] if entity @a[tag=playing,tag=!winner] run title @a[tag=playing] title [{"translate":"Gray Team","color":"dark_gray"},{"translate":" wins!","color":"white"}]
execute if entity @a[tag=playing,tag=winner,tag=on_gray_team] if entity @a[tag=playing,tag=!winner] run tellraw @a[tag=playing] [{"translate":"Gray Team","color":"dark_gray"},{"translate":" wins!","color":"white"}]

execute if entity @a[tag=playing,tag=winner] unless entity @a[tag=playing,tag=!winner] run title @a[tag=playing] title [{"translate":"Everyone","color":"dark_gray"},{"translate":" wins!","color":"white"}]
execute if entity @a[tag=playing,tag=winner] unless entity @a[tag=playing,tag=!winner] run tellraw @a[tag=playing] [{"translate":"Everyone","color":"dark_gray"},{"translate":" wins!","color":"white"}]