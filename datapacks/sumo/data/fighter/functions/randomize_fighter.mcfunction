##Called to give the player who ran this function a random fighter
##Random number. Change mod's score to the amt of fighters.
scoreboard players set $mod random 16
function random:random

##Copying random score to us
scoreboard players operation @s fighter = $rand random 

execute if entity @s[scores={fighter=0}] run scoreboard players operation @s costume = @s f_0_costume
execute if entity @s[scores={fighter=1}] run scoreboard players operation @s costume = @s f_1_costume
execute if entity @s[scores={fighter=2}] run scoreboard players operation @s costume = @s f_2_costume
execute if entity @s[scores={fighter=3}] run scoreboard players operation @s costume = @s f_3_costume
execute if entity @s[scores={fighter=4}] run scoreboard players operation @s costume = @s f_4_costume
execute if entity @s[scores={fighter=5}] run scoreboard players operation @s costume = @s f_5_costume
execute if entity @s[scores={fighter=6}] run scoreboard players operation @s costume = @s f_6_costume
execute if entity @s[scores={fighter=7}] run scoreboard players operation @s costume = @s f_7_costume
execute if entity @s[scores={fighter=8}] run scoreboard players operation @s costume = @s f_8_costume
execute if entity @s[scores={fighter=9}] run scoreboard players operation @s costume = @s f_9_costume
execute if entity @s[scores={fighter=10}] run scoreboard players operation @s costume = @s f_10_costume
execute if entity @s[scores={fighter=11}] run scoreboard players operation @s costume = @s f_11_costume
execute if entity @s[scores={fighter=12}] run scoreboard players operation @s costume = @s f_12_costume
execute if entity @s[scores={fighter=13}] run scoreboard players operation @s costume = @s f_13_costume
execute if entity @s[scores={fighter=14}] run scoreboard players operation @s costume = @s f_14_costume
execute if entity @s[scores={fighter=15}] run scoreboard players operation @s costume = @s f_15_costume