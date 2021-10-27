##Called when Gene uses his ground ability

##Scores

##Setting the ability state to active
scoreboard players set @s ability_state 1

##Showing how long the ability lasts for
scoreboard players set @s ability_timer 400


##Clarifying it as a ground ability (0 is ground, 1 is air)
scoreboard players set @s ability_type 0

##Randomizing the items
scoreboard players set $mod random 4
function random:random
scoreboard players operation @s random_stat2 = $rand random

##second item
scoreboard players set $mod random 4
function random:random
scoreboard players operation @s random_stat3 = $rand random

##Making sure it's not the same as the first one
execute if score @s random_stat3 = @s random_stat2 run scoreboard players add @s random_stat3 1
##setting it to be 0 if it goes to high.
scoreboard players set @s[scores={random_stat3=4..}] random_stat3 0



##Tellraw
tellraw @s[tag=!no_ability_msg] [{"text":"--------------------------","color":"aqua"},{"text":"\nGround Ability: ","color":"gray","bold":true},{"text":"Would You Rather\n","color":"white"},{"text":"(Hover for description.)\n","color":"#bd9b4b","italic":true,"hoverEvent":{"action":"show_text","value":"Gives the user a choice between two randomized items."}},{"text":"--------------------------","color":"aqua"}]


##Sounds
playsound minecraft:entity.guardian.hurt master @a ~ ~ ~ 0.25 2

tellraw @s [{"text":"- ","color":"gray"},{"text":"Would","color":"blue","bold":true},{"text":" You ","color":"aqua","bold":true},{"text":"Rather","color":"yellow","bold":true}]

execute if score @s random_stat2 matches 0 run tellraw @s [{"text":"Press ","color":"blue"},{"text":"<","color":"gray","bold":true},{"keybind":"key.drop"},{"text":">","color":"gray","bold":true},{"text":" to receive the ","color":"aqua"},{"text":"Bow","color":"blue"}] 
execute if score @s random_stat2 matches 1 run tellraw @s [{"text":"Press ","color":"blue"},{"text":"<","color":"gray","bold":true},{"keybind":"key.drop"},{"text":">","color":"gray","bold":true},{"text":" to receive the ","color":"aqua"},{"text":"Sharp Rock","color":"blue"}] 
execute if score @s random_stat2 matches 2 run tellraw @s [{"text":"Press ","color":"blue"},{"text":"<","color":"gray","bold":true},{"keybind":"key.drop"},{"text":">","color":"gray","bold":true},{"text":" to receive the ","color":"aqua"},{"text":"Pickaxe","color":"blue"}] 
execute if score @s random_stat2 matches 3 run tellraw @s [{"text":"Press ","color":"blue"},{"text":"<","color":"gray","bold":true},{"keybind":"key.drop"},{"text":">","color":"gray","bold":true},{"text":" to receive the ","color":"aqua"},{"text":"Energy Drink","color":"blue"}] 

tellraw @s [{"text":"or","color":"aqua"}]

execute if score @s random_stat3 matches 0 run tellraw @s [{"text":"Press ","color":"yellow"},{"text":"<","color":"gray","bold":true},{"keybind":"key.swapOffhand"},{"text":">","color":"gray","bold":true},{"text":" to receive the ","color":"aqua"},{"text":"Bow","color":"yellow"}] 
execute if score @s random_stat3 matches 1 run tellraw @s [{"text":"Press ","color":"yellow"},{"text":"<","color":"gray","bold":true},{"keybind":"key.swapOffhand"},{"text":">","color":"gray","bold":true},{"text":" to receive the ","color":"aqua"},{"text":"Sharp Rock","color":"yellow"}] 
execute if score @s random_stat3 matches 2 run tellraw @s [{"text":"Press ","color":"yellow"},{"text":"<","color":"gray","bold":true},{"keybind":"key.swapOffhand"},{"text":">","color":"gray","bold":true},{"text":" to receive the ","color":"aqua"},{"text":"Pickaxe","color":"yellow"}] 
execute if score @s random_stat3 matches 3 run tellraw @s [{"text":"Press ","color":"yellow"},{"text":"<","color":"gray","bold":true},{"keybind":"key.swapOffhand"},{"text":">","color":"gray","bold":true},{"text":" to receive the ","color":"aqua"},{"text":"Energy Drink","color":"yellow"}] 

