##Called to give the description of Chicken
tellraw @s [{"text":"=","color":"white"},{"text":"-","color":"aqua"},{"text":"=","color":"white"},{"text":"-","color":"aqua"},{"text":"=","color":"white"},{"text":"-","color":"aqua"},{"text":"=","color":"white"},{"text":"-","color":"aqua"},{"text":"=","color":"white"},{"text":"-","color":"aqua"},{"text":"=","color":"white"},{"text":"-","color":"aqua"},{"text":"=","color":"white"},{"text":"-","color":"aqua"},{"text":"=","color":"white"}]
tellraw @s {"text":"Chicken","bold":true,"color":"#e2e2e2"}

##Called to give us Chicken's stats
scoreboard players operation @s calculate = @s fighter
scoreboard players set @s fighter 5
function fighter:get_stats
scoreboard players operation @s fighter = @s calculate


##Base knockback

#Adding 50 to the decimal because kb rounds up
scoreboard players add @s base_kb_decimal 50

tellraw @s [{"text":"","hoverEvent":{"action":"show_text","value":""}},{"text":"Base Knockback","color":"red","bold":false,"hoverEvent":{"action":"show_text","value":"The fighter's starting amount of knockback."}},{"text":": ","color":"gray","bold":false},{"score":{"objective":"base_knockback","name":"@s"},"color":"white","bold":true},{"text":".","color":"white","bold":true},{"score":{"objective":"base_kb_decimal","name":"@s"},"color":"white","bold":true}]
##Max knockback
tellraw @s [{"text":"","hoverEvent":{"action":"show_text","value":""}},{"text":"Max Knockback","color":"red","bold":false,"hoverEvent":{"action":"show_text","value":"The highest amount of knockback the fighter can reach."}},{"text":": ","color":"gray","bold":false},{"score":{"objective":"max_knockback","name":"@s"},"color":"white","bold":true},{"text":".","color":"white","bold":true},{"text":"00","color":"white","bold":true}]

##Combo rise
tellraw @s [{"text":"","hoverEvent":{"action":"show_text","value":""}},{"text":"Knockback Rise","color":"red","bold":false,"hoverEvent":{"action":"show_text","value":"How much stronger the knockback weapon becomes with each hit from the combo weapon."}},{"text":": ","color":"gray","bold":false},{"text":"0.","color":"white","bold":true},{"score":{"objective":"combo_multiplier","name":"@s"},"color":"white","bold":true}]

##Max damage
tellraw @s [{"text":"","hoverEvent":{"action":"show_text","value":""}},{"text":"Max Damage","color":"dark_red","bold":false,"hoverEvent":{"action":"show_text","value":"How many hits the fighter can take before reaching 100 percent."}},{"text":": ","color":"gray","bold":false},{"score":{"objective":"max_damage","name":"@s"},"color":"white","bold":true}]


##Jump boost amplifer

#Adding one so that the amplfier is in agreement with how it shoes in the inventory gui.
scoreboard players add @s jump_force 1
tellraw @s [{"text":"","hoverEvent":{"action":"show_text","value":""}},{"text":"Jump Boost","color":"green","bold":false,"hoverEvent":{"action":"show_text","value":"The amplifier of jump boost the fighter has."}},{"text":": ","color":"gray","bold":false},{"score":{"objective":"jump_force","name":"@s"},"color":"white","bold":true}]



##Exrta jumps
tellraw @s [{"text":"","hoverEvent":{"action":"show_text","value":""}},{"text":"Extra Jumps","color":"green","bold":false,"hoverEvent":{"action":"show_text","value":"The number of extra jumps the fighter has."}},{"text":": ","color":"gray","bold":false},{"score":{"objective":"set_extra_jumps","name":"@s"},"color":"white","bold":true}]


##Exrta jump time
scoreboard players operation @s set_e_jump_time *= $5 number
tellraw @s [{"text":"","hoverEvent":{"action":"show_text","value":""}},{"text":"Extra Jump Time","color":"green","bold":false,"hoverEvent":{"action":"show_text","value":"The duration of the extra jump"}},{"text":": ","color":"gray","bold":false},{"text":"0.","color":"white","bold":true},{"score":{"objective":"set_e_jump_time","name":"@s"},"color":"white","bold":true},{"text":" seconds","color":"white","bold":true}]

##Exrta jump amplifier
#Adding one so the amplifer is in agreement with how it shows in the inventory gui
scoreboard players add @s extra_jump_force 1
tellraw @s [{"text":"","hoverEvent":{"action":"show_text","value":""}},{"text":"Extra Jump Amplifier","color":"green","bold":false,"hoverEvent":{"action":"show_text","value":"The amplifier of levitation from the extra jump."}},{"text":": ","color":"gray","bold":false},{"score":{"objective":"extra_jump_force","name":"@s"},"color":"white","bold":true}]
##Passive
tellraw @s [{"text":"","hoverEvent":{"action":"show_text","value":""}},{"text":"Passive/Loadout","color":"light_purple","bold":false,"hoverEvent":{"action":"show_text","value":"An ability you don't have to activate/An item unique to the fighter."}},{"text":": ","color":"gray","bold":false},{"text":"Combo weapon swaps to an egg after 5 seconds until thrown, egg does damage.","color":"white","bold":false}]

##Ground ability
tellraw @s [{"text":""},{"text":"Ground Ability","color":"aqua","bold":false,"hoverEvent":{"action":"show_text","value":"Ability when the fighter drops or offhands their weapons while on the ground."}},{"text":": ","color":"gray","bold":false},{"text":"Feather Fury ","color":"aqua"},{"text":"- ","color":"gray","bold":false},{"text":"Stuns ","color":"gray","bold":true,"hoverEvent":{"action":"show_text","value":"Slowness and weakness."}},{"text":"opponents in front of the user for one second.","color":"white"}]

##Ground ability cooldown
tellraw @s [{"text":"","hoverEvent":{"action":"show_text","value":""}},{"text":"Ground Ability Cooldown","color":"aqua","bold":false,"hoverEvent":{"action":"show_text","value":"How long until the fighter can use their Ground Ability again."}},{"text":": ","color":"gray","bold":false},{"text":"15.0 seconds","color":"white","bold":true}]

##Air ability
tellraw @s [{"text":""},{"text":"Air Ability","color":"dark_aqua","bold":false,"hoverEvent":{"action":"show_text","value":"Ability when the fighter drops or offhands their weapons while in the air."}},{"text":": ","color":"gray","bold":false},{"text":"Egg Spike ","color":"dark_aqua"},{"text":"- ","color":"gray","bold":false},{"text":" Shoots an egg below you, ","color":"white"},{"text":"spiking","color":"gray","bold":true,"hoverEvent":{"action":"show_text","value":"A downward launch angle."}},{"text":" opponents.","color":"white"}]

##Air ability cooldown
tellraw @s [{"text":"","hoverEvent":{"action":"show_text","value":""}},{"text":"Air Ability Cooldown","color":"dark_aqua","bold":false,"hoverEvent":{"action":"show_text","value":"How long until the fighter can use their Air Ability again."}},{"text":": ","color":"gray","bold":false},{"text":"20.0 seconds","color":"white","bold":true}]

##Scroll up msg
tellraw @s [{"text":"(Press ","color":"gray","italic":true},{"keybind":"key.chat","color":"white"},{"text":" to open your chat for full details. Hover over bolded gray text for descriptions.)","color":"gray"}]

##playsound
playsound minecraft:block.note_block.cow_bell master @s ~ ~ ~ 0.5 0.75