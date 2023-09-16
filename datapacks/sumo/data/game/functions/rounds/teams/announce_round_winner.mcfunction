##Activated when someone wins a round of teams (rounds mode)

##Tellraws
execute if entity @a[tag=playing,team=!dead,tag=on_red_team] run tellraw @a[tag=playing] [{"translate":"Red Team","color":"dark_red"},{"translate":" has won the round.","color":"white"}]
execute if entity @a[tag=playing,team=!dead,tag=on_blue_team] run tellraw @a[tag=playing] [{"translate":"Blue Team","color":"dark_blue"},{"translate":" has won the round.","color":"white"}]
execute if entity @a[tag=playing,team=!dead,tag=on_yellow_team] run tellraw @a[tag=playing] [{"translate":"Yellow Team","color":"yellow"},{"translate":" has won the round.","color":"white"}]
execute if entity @a[tag=playing,team=!dead,tag=on_green_team] run tellraw @a[tag=playing] [{"translate":"Green Team","color":"green"},{"translate":" has won the round.","color":"white"}]
execute if entity @a[tag=playing,team=!dead,tag=on_cyan_team] run tellraw @a[tag=playing] [{"translate":"Cyan Team","color":"dark_aqua"},{"translate":" has won the round.","color":"white"}]
execute if entity @a[tag=playing,team=!dead,tag=on_orange_team] run tellraw @a[tag=playing] [{"translate":"Orange Team","color":"gold"},{"translate":" has won the round.","color":"white"}]
execute if entity @a[tag=playing,team=!dead,tag=on_pink_team] run tellraw @a[tag=playing] [{"translate":"Pink Team","color":"light_purple"},{"translate":" has won the round.","color":"white"}]
execute if entity @a[tag=playing,team=!dead,tag=on_purple_team] run tellraw @a[tag=playing] [{"translate":"Purple Team","color":"dark_purple"},{"translate":" has won the round.","color":"white"}]
execute if entity @a[tag=playing,team=!dead,tag=on_white_team] run tellraw @a[tag=playing] [{"translate":"White Team","color":"white"},{"translate":" has won the round.","color":"white"}]
execute if entity @a[tag=playing,team=!dead,tag=on_gray_team] run tellraw @a[tag=playing] [{"translate":"Gray Team","color":"dark_gray"},{"translate":" has won the round.","color":"white"}]

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