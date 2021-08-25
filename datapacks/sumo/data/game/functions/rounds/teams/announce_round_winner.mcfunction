##Activated when someone wins a round of teams (rounds mode)

##Tellraws
execute if entity @a[tag=playing,team=!dead,tag=on_red_team] run tellraw @a[tag=playing] [{"text":"Red Team","color":"dark_red"},{"text":" has won the round.","color":"white"}]
execute if entity @a[tag=playing,team=!dead,tag=on_blue_team] run tellraw @a[tag=playing] [{"text":"Blue Team","color":"dark_blue"},{"text":" has won the round.","color":"white"}]
execute if entity @a[tag=playing,team=!dead,tag=on_yellow_team] run tellraw @a[tag=playing] [{"text":"Yellow Team","color":"yellow"},{"text":" has won the round.","color":"white"}]
execute if entity @a[tag=playing,team=!dead,tag=on_green_team] run tellraw @a[tag=playing] [{"text":"Green Team","color":"green"},{"text":" has won the round.","color":"white"}]
execute if entity @a[tag=playing,team=!dead,tag=on_cyan_team] run tellraw @a[tag=playing] [{"text":"Cyan Team","color":"dark_aqua"},{"text":" has won the round.","color":"white"}]
execute if entity @a[tag=playing,team=!dead,tag=on_orange_team] run tellraw @a[tag=playing] [{"text":"Orange Team","color":"gold"},{"text":" has won the round.","color":"white"}]
execute if entity @a[tag=playing,team=!dead,tag=on_pink_team] run tellraw @a[tag=playing] [{"text":"Pink Team","color":"light_purple"},{"text":" has won the round.","color":"white"}]
execute if entity @a[tag=playing,team=!dead,tag=on_purple_team] run tellraw @a[tag=playing] [{"text":"Purple Team","color":"dark_purple"},{"text":" has won the round.","color":"white"}]
execute if entity @a[tag=playing,team=!dead,tag=on_white_team] run tellraw @a[tag=playing] [{"text":"White Team","color":"white"},{"text":" has won the round.","color":"white"}]
execute if entity @a[tag=playing,team=!dead,tag=on_gray_team] run tellraw @a[tag=playing] [{"text":"Gray Team","color":"dark_gray"},{"text":" has won the round.","color":"white"}]

execute if entity @a[tag=playing,team=!dead,tag=on_red_team] run scoreboard players add Red: criteria 1
execute if entity @a[tag=playing,team=!dead,tag=on_blue_team] run scoreboard players add Blue: criteria 1
execute if entity @a[tag=playing,team=!dead,tag=on_yellow_team] run scoreboard players add Yellow: criteria 1
execute if entity @a[tag=playing,team=!dead,tag=on_green_team] run scoreboard players add Green: criteria 1
execute if entity @a[tag=playing,team=!dead,tag=on_cyan_team] run scoreboard players add Cyan: criteria 1
execute if entity @a[tag=playing,team=!dead,tag=on_orange_team] run scoreboard players add Orange: criteria 1
execute if entity @a[tag=playing,team=!dead,tag=on_pink_team] run scoreboard players add Pink: criteria 1
execute if entity @a[tag=playing,team=!dead,tag=on_purple_team] run scoreboard players add Purple: criteria 1
execute if entity @a[tag=playing,team=!dead,tag=on_white_team] run scoreboard players add White: criteria 1
execute if entity @a[tag=playing,team=!dead,tag=on_gray_team] run scoreboard players add Gray: criteria 1
scoreboard players add @a[tag=playing,team=!dead] list 1

##Sounds
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 10000 0.561231
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 10000 0.707107
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 10000 0.840896
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 10000 1.122462

execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 10000 0.561231
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 10000 0.707107
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 10000 0.840896


execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 0.25 0.561231
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 0.25 0.707107
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 0.25 0.840896

execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.5 0.561231
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.5 0.707107
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.5 0.840896