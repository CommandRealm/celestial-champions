##Called when a player picks up a poisonous potato

tag @s remove has_potato

tellraw @a[tag=has_potato,gamemode=adventure,tag=is_fighter] [{"text":"⚠ ","color":"yellow"},{"text":"Someone else picked up a new potato! You are now safe.","color":"#9fbf48","bold":false}]
execute as @a[tag=has_potato,gamemode=adventure,tag=is_fighter] at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 1
tag @a remove has_had_potato

##Giving ourselves the potato
function item:poisonous_potato/get_potato

##sound
playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 0.5 2

##If we're not playing, and someone else is, don't restart the timer
execute if entity @s[tag=!playing] if entity @a[tag=playing] run tag @s add temporary_tag

##Setting a random potato timer
execute unless entity @s[tag=temporary_tag] run scoreboard players set $time poisonous_potato 150
execute unless entity @s[tag=temporary_tag] run scoreboard players set $mod random 600
execute unless entity @s[tag=temporary_tag] run function random:random
execute unless entity @s[tag=temporary_tag] run scoreboard players operation $time poisonous_potato += $rand random

##Score reset
scoreboard players reset @s pickup_potato