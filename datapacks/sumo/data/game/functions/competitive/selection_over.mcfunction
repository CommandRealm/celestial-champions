##called when the striking phase is over.


##Setting map score
execute if entity @a[tag=playing,scores={list=1..}] if block 6 61 88 stone_button[powered=true] run scoreboard players set $map settings 15
execute if entity @a[tag=playing,scores={list=1..}] if block 4 61 88 stone_button[powered=true] run scoreboard players set $map settings 16
execute if entity @a[tag=playing,scores={list=1..}] if block 2 61 88 stone_button[powered=true] run scoreboard players set $map settings 17
execute if entity @a[tag=playing,scores={list=1..}] if block 0 61 88 stone_button[powered=true] run scoreboard players set $map settings 18
execute if entity @a[tag=playing,scores={list=1..}] if block -2 61 88 stone_button[powered=true] run scoreboard players set $map settings 19
execute if entity @a[tag=playing,scores={list=1..}] if block -4 61 88 stone_button[powered=true] run scoreboard players set $map settings 20
execute if entity @a[tag=playing,scores={list=1..}] if block -6 61 88 stone_button[powered=true] run scoreboard players set $map settings 21

execute unless entity @a[tag=playing,scores={list=1..}] if block 6 61 88 stone_button run scoreboard players set $map settings 15
execute unless entity @a[tag=playing,scores={list=1..}] if block 4 61 88 stone_button run scoreboard players set $map settings 16
execute unless entity @a[tag=playing,scores={list=1..}] if block 2 61 88 stone_button run scoreboard players set $map settings 17
execute unless entity @a[tag=playing,scores={list=1..}] if block 0 61 88 stone_button run scoreboard players set $map settings 18
execute unless entity @a[tag=playing,scores={list=1..}] if block -2 61 88 stone_button run scoreboard players set $map settings 19
execute unless entity @a[tag=playing,scores={list=1..}] if block -4 61 88 stone_button run scoreboard players set $map settings 20
execute unless entity @a[tag=playing,scores={list=1..}] if block -6 61 88 stone_button run scoreboard players set $map settings 21



execute if entity @a[tag=playing,scores={list=1..}] positioned 6 61 88 if block ~ ~ ~ stone_button[powered=true] run tag @e[type=armor_stand,tag=competitive_mode_temp,tag=model,sort=nearest,limit=1] add selected_map
execute if entity @a[tag=playing,scores={list=1..}] positioned 4 61 88 if block ~ ~ ~ stone_button[powered=true] run tag @e[type=armor_stand,tag=competitive_mode_temp,tag=model,sort=nearest,limit=1] add selected_map
execute if entity @a[tag=playing,scores={list=1..}] positioned 2 61 88 if block ~ ~ ~ stone_button[powered=true] run tag @e[type=armor_stand,tag=competitive_mode_temp,tag=model,sort=nearest,limit=1] add selected_map
execute if entity @a[tag=playing,scores={list=1..}] positioned 0 61 88 if block ~ ~ ~ stone_button[powered=true] run tag @e[type=armor_stand,tag=competitive_mode_temp,tag=model,sort=nearest,limit=1] add selected_map
execute if entity @a[tag=playing,scores={list=1..}] positioned -2 61 88 if block ~ ~ ~ stone_button[powered=true] run tag @e[type=armor_stand,tag=competitive_mode_temp,tag=model,sort=nearest,limit=1] add selected_map
execute if entity @a[tag=playing,scores={list=1..}] positioned -4 61 88 if block ~ ~ ~ stone_button[powered=true] run tag @e[type=armor_stand,tag=competitive_mode_temp,tag=model,sort=nearest,limit=1] add selected_map
execute if entity @a[tag=playing,scores={list=1..}] positioned -6 61 88 if block ~ ~ ~ stone_button[powered=true] run tag @e[type=armor_stand,tag=competitive_mode_temp,tag=model,sort=nearest,limit=1] add selected_map


execute unless entity @a[tag=playing,scores={list=1..}] positioned 6 61 88 if block ~ ~ ~ stone_button run tag @e[type=armor_stand,tag=competitive_mode_temp,tag=model,sort=nearest,limit=1] add selected_map
execute unless entity @a[tag=playing,scores={list=1..}] positioned 4 61 88 if block ~ ~ ~ stone_button run tag @e[type=armor_stand,tag=competitive_mode_temp,tag=model,sort=nearest,limit=1] add selected_map
execute unless entity @a[tag=playing,scores={list=1..}] positioned 2 61 88 if block ~ ~ ~ stone_button run tag @e[type=armor_stand,tag=competitive_mode_temp,tag=model,sort=nearest,limit=1] add selected_map
execute unless entity @a[tag=playing,scores={list=1..}] positioned 0 61 88 if block ~ ~ ~ stone_button run tag @e[type=armor_stand,tag=competitive_mode_temp,tag=model,sort=nearest,limit=1] add selected_map
execute unless entity @a[tag=playing,scores={list=1..}] positioned -2 61 88 if block ~ ~ ~ stone_button run tag @e[type=armor_stand,tag=competitive_mode_temp,tag=model,sort=nearest,limit=1] add selected_map
execute unless entity @a[tag=playing,scores={list=1..}] positioned -4 61 88 if block ~ ~ ~ stone_button run tag @e[type=armor_stand,tag=competitive_mode_temp,tag=model,sort=nearest,limit=1] add selected_map
execute unless entity @a[tag=playing,scores={list=1..}] positioned -6 61 88 if block ~ ~ ~ stone_button run tag @e[type=armor_stand,tag=competitive_mode_temp,tag=model,sort=nearest,limit=1] add selected_map

##Announcing selection
execute if entity @a[tag=playing,scores={list=1..}] if block 6 61 88 stone_button[powered=true] run tellraw @a[tag=playing] [{"translate":"☀ ","color":"gold"},{"translate":"Deforested","color":"green"},{"translate":" has been selected!","color":"aqua"}]
execute if entity @a[tag=playing,scores={list=1..}] if block 4 61 88 stone_button[powered=true] run tellraw @a[tag=playing] [{"translate":"☀ ","color":"gold"},{"translate":"Elsewhere","color":"dark_purple"},{"translate":" has been selected!","color":"aqua"}]
execute if entity @a[tag=playing,scores={list=1..}] if block 2 61 88 stone_button[powered=true] run tellraw @a[tag=playing] [{"translate":"☀ ","color":"gold"},{"translate":"Molten","color":"dark_red"},{"translate":" has been selected!","color":"aqua"}]
execute if entity @a[tag=playing,scores={list=1..}] if block 0 61 88 stone_button[powered=true] run tellraw @a[tag=playing] [{"translate":"☀ ","color":"gold"},{"translate":"Celestial","color":"dark_aqua"},{"translate":" has been selected!","color":"aqua"}]
execute if entity @a[tag=playing,scores={list=1..}] if block -2 61 88 stone_button[powered=true] run tellraw @a[tag=playing] [{"translate":"☀ ","color":"gold"},{"translate":"Fortress","color":"gray"},{"translate":" has been selected!","color":"aqua"}]
execute if entity @a[tag=playing,scores={list=1..}] if block -4 61 88 stone_button[powered=true] run tellraw @a[tag=playing] [{"translate":"☀ ","color":"gold"},{"translate":"Hovercraft","color":"dark_green"},{"translate":" has been selected!","color":"aqua"}]
execute if entity @a[tag=playing,scores={list=1..}] if block -6 61 88 stone_button[powered=true] run tellraw @a[tag=playing] [{"translate":"☀ ","color":"gold"},{"translate":"Rainbow","color":"gold"},{"translate":" has been selected!","color":"aqua"}]

execute unless entity @a[tag=playing,scores={list=1..}] if block 6 61 88 stone_button run tellraw @a[tag=playing] [{"translate":"☀ ","color":"gold"},{"translate":"Deforested","color":"green"},{"translate":" has been selected!","color":"aqua"}]
execute unless entity @a[tag=playing,scores={list=1..}] if block 4 61 88 stone_button run tellraw @a[tag=playing] [{"translate":"☀ ","color":"gold"},{"translate":"Elsewhere","color":"dark_purple"},{"translate":" has been selected!","color":"aqua"}]
execute unless entity @a[tag=playing,scores={list=1..}] if block 2 61 88 stone_button run tellraw @a[tag=playing] [{"translate":"☀ ","color":"gold"},{"translate":"Molten","color":"dark_red"},{"translate":" has been selected!","color":"aqua"}]
execute unless entity @a[tag=playing,scores={list=1..}] if block 0 61 88 stone_button run tellraw @a[tag=playing] [{"translate":"☀ ","color":"gold"},{"translate":"Celestial","color":"dark_aqua"},{"translate":" has been selected!","color":"aqua"}]
execute unless entity @a[tag=playing,scores={list=1..}] if block -2 61 88 stone_button run tellraw @a[tag=playing] [{"translate":"☀ ","color":"gold"},{"translate":"Fortress","color":"gray"},{"translate":" has been selected!","color":"aqua"}]
execute unless entity @a[tag=playing,scores={list=1..}] if block -4 61 88 stone_button run tellraw @a[tag=playing] [{"translate":"☀ ","color":"gold"},{"translate":"Hovercraft","color":"dark_green"},{"translate":" has been selected!","color":"aqua"}]
execute unless entity @a[tag=playing,scores={list=1..}] if block -6 61 88 stone_button run tellraw @a[tag=playing] [{"translate":"☀ ","color":"gold"},{"translate":"Rainbow","color":"gold"},{"translate":" has been selected!","color":"aqua"}]

##Filling buttons
fill 6 61 88 -6 61 88 structure_void replace stone_button

scoreboard players set $comp_kill_delay game 25

##Tping players
tp @a[tag=playing,tag=!just_striked] 0 61 81 0 20
