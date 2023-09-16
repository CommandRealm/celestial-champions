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
tellraw @s[tag=!no_ability_msg] [{"translate":"--------------------------","color":"aqua"},{"translate":"\nGround Ability: ","color":"gray","bold":true},{"translate":"Would You Rather\n","color":"white"},{"translate":"(Hover for description.)\n","color":"#bd9b4b","italic":true,"hoverEvent":{"action":"show_text","value":{"translate":"Gives the user a choice between two randomized items."}}},{"translate":"--------------------------","color":"aqua"}]


##Sounds
playsound minecraft:entity.guardian.hurt master @a ~ ~ ~ 0.25 2

tellraw @s [{"translate":"- ","color":"gray"},{"translate":"Would","color":"blue","bold":true},{"translate":" You ","color":"aqua","bold":true},{"translate":"Rather","color":"yellow","bold":true}]

execute if score @s random_stat2 matches 0 run tellraw @s [{"translate":"Press ","color":"blue"},{"translate":"<","color":"gray","bold":true},{"keybind":"key.drop"},{"translate":">","color":"gray","bold":true},{"translate":" to receive the ","color":"aqua"},{"translate":"Bow","color":"blue"}] 
execute if score @s random_stat2 matches 1 run tellraw @s [{"translate":"Press ","color":"blue"},{"translate":"<","color":"gray","bold":true},{"keybind":"key.drop"},{"translate":">","color":"gray","bold":true},{"translate":" to receive the ","color":"aqua"},{"translate":"Sharp Rock","color":"blue"}] 
execute if score @s random_stat2 matches 2 run tellraw @s [{"translate":"Press ","color":"blue"},{"translate":"<","color":"gray","bold":true},{"keybind":"key.drop"},{"translate":">","color":"gray","bold":true},{"translate":" to receive the ","color":"aqua"},{"translate":"Pickaxe","color":"blue"}] 
execute if score @s random_stat2 matches 3 run tellraw @s [{"translate":"Press ","color":"blue"},{"translate":"<","color":"gray","bold":true},{"keybind":"key.drop"},{"translate":">","color":"gray","bold":true},{"translate":" to receive the ","color":"aqua"},{"translate":"Energy Drink","color":"blue"}] 

tellraw @s [{"translate":"or","color":"aqua"}]

execute if score @s random_stat3 matches 0 run tellraw @s [{"translate":"Press ","color":"yellow"},{"translate":"<","color":"gray","bold":true},{"keybind":"key.swapOffhand"},{"translate":">","color":"gray","bold":true},{"translate":" to receive the ","color":"aqua"},{"translate":"Bow","color":"yellow"}] 
execute if score @s random_stat3 matches 1 run tellraw @s [{"translate":"Press ","color":"yellow"},{"translate":"<","color":"gray","bold":true},{"keybind":"key.swapOffhand"},{"translate":">","color":"gray","bold":true},{"translate":" to receive the ","color":"aqua"},{"translate":"Sharp Rock","color":"yellow"}] 
execute if score @s random_stat3 matches 2 run tellraw @s [{"translate":"Press ","color":"yellow"},{"translate":"<","color":"gray","bold":true},{"keybind":"key.swapOffhand"},{"translate":">","color":"gray","bold":true},{"translate":" to receive the ","color":"aqua"},{"translate":"Pickaxe","color":"yellow"}] 
execute if score @s random_stat3 matches 3 run tellraw @s [{"translate":"Press ","color":"yellow"},{"translate":"<","color":"gray","bold":true},{"keybind":"key.swapOffhand"},{"translate":">","color":"gray","bold":true},{"translate":" to receive the ","color":"aqua"},{"translate":"Energy Drink","color":"yellow"}] 

