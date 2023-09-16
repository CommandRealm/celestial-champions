##Starts the ending phase.

##Score
scoreboard players set $end cooldown 100

##Winner tag
tag @a remove winner
execute if score Red: sidebar >= Criteria: sidebar run tag @a[tag=on_red_team] add winner
execute if score Blue: sidebar >= Criteria: sidebar run tag @a[tag=on_blue_team] add winner
execute if score Yellow: sidebar >= Criteria: sidebar run tag @a[tag=on_yellow_team] add winner
execute if score Green: sidebar >= Criteria: sidebar run tag @a[tag=on_green_team] add winner
execute if score Cyan: sidebar >= Criteria: sidebar run tag @a[tag=on_cyan_team] add winner
execute if score Orange: sidebar >= Criteria: sidebar run tag @a[tag=on_orange_team] add winner
execute if score Pink: sidebar >= Criteria: sidebar run tag @a[tag=on_pink_team] add winner
execute if score Purple: sidebar >= Criteria: sidebar run tag @a[tag=on_purple_team] add winner
execute if score White: sidebar >= Criteria: sidebar run tag @a[tag=on_white_team] add winner
execute if score Gray: sidebar >= Criteria: sidebar run tag @a[tag=on_gray_team] add winner


##Joining team to remove prefix
team join aqua @a[tag=playing,tag=winner]

##Remove sidebar
scoreboard objectives setdisplay sidebar

##Tellraws and titles

title @a[tag=playing] times 5 50 5


execute if entity @a[tag=playing,tag=winner,tag=on_red_team] run title @a[tag=playing] title [{"translate":"Red Team","color":"dark_red"},{"translate":" wins!","color":"white"}]
execute if entity @a[tag=playing,tag=winner,tag=on_red_team] run tellraw @a[tag=playing] [{"translate":"Red Team","color":"dark_red"},{"translate":" wins!","color":"white"}]

execute if entity @a[tag=playing,tag=winner,tag=on_blue_team] run title @a[tag=playing] title [{"translate":"Blue Team","color":"dark_blue"},{"translate":" wins!","color":"white"}]
execute if entity @a[tag=playing,tag=winner,tag=on_blue_team] run tellraw @a[tag=playing] [{"translate":"Blue Team","color":"dark_blue"},{"translate":" wins!","color":"white"}]

execute if entity @a[tag=playing,tag=winner,tag=on_yellow_team] run title @a[tag=playing] title [{"translate":"Yellow Team","color":"yellow"},{"translate":" wins!","color":"white"}]
execute if entity @a[tag=playing,tag=winner,tag=on_yellow_team] run tellraw @a[tag=playing] [{"translate":"Yellow Team","color":"yellow"},{"translate":" wins!","color":"white"}]

execute if entity @a[tag=playing,tag=winner,tag=on_green_team] run title @a[tag=playing] title [{"translate":"Green Team","color":"green"},{"translate":" wins!","color":"white"}]
execute if entity @a[tag=playing,tag=winner,tag=on_green_team] run tellraw @a[tag=playing] [{"translate":"Green Team","color":"green"},{"translate":" wins!","color":"white"}]

execute if entity @a[tag=playing,tag=winner,tag=on_cyan_team] run title @a[tag=playing] title [{"translate":"Cyan Team","color":"dark_aqua"},{"translate":" wins!","color":"white"}]
execute if entity @a[tag=playing,tag=winner,tag=on_cyan_team] run tellraw @a[tag=playing] [{"translate":"Cyan Team","color":"dark_aqua"},{"translate":" wins!","color":"white"}]

execute if entity @a[tag=playing,tag=winner,tag=on_orange_team] run title @a[tag=playing] title [{"translate":"Orange Team","color":"gold"},{"translate":" wins!","color":"white"}]
execute if entity @a[tag=playing,tag=winner,tag=on_orange_team] run tellraw @a[tag=playing] [{"translate":"Orange Team","color":"gold"},{"translate":" wins!","color":"white"}]

execute if entity @a[tag=playing,tag=winner,tag=on_pink_team] run title @a[tag=playing] title [{"translate":"Pink Team","color":"light_purple"},{"translate":" wins!","color":"white"}]
execute if entity @a[tag=playing,tag=winner,tag=on_pink_team] run tellraw @a[tag=playing] [{"translate":"Pink Team","color":"light_purple"},{"translate":" wins!","color":"white"}]

execute if entity @a[tag=playing,tag=winner,tag=on_purple_team] run title @a[tag=playing] title [{"translate":"Purple Team","color":"dark_purple"},{"translate":" wins!","color":"white"}]
execute if entity @a[tag=playing,tag=winner,tag=on_purple_team] run tellraw @a[tag=playing] [{"translate":"Purple Team","color":"dark_purple"},{"translate":" wins!","color":"white"}]

execute if entity @a[tag=playing,tag=winner,tag=on_white_team] run title @a[tag=playing] title [{"translate":"White Team","color":"white"},{"translate":" wins!","color":"white"}]
execute if entity @a[tag=playing,tag=winner,tag=on_white_team] run tellraw @a[tag=playing] [{"translate":"White Team","color":"white"},{"translate":" wins!","color":"white"}]

execute if entity @a[tag=playing,tag=winner,tag=on_gray_team] run title @a[tag=playing] title [{"translate":"Gray Team","color":"dark_gray"},{"translate":" wins!","color":"white"}]
execute if entity @a[tag=playing,tag=winner,tag=on_gray_team] run tellraw @a[tag=playing] [{"translate":"Gray Team","color":"dark_gray"},{"translate":" wins!","color":"white"}]

