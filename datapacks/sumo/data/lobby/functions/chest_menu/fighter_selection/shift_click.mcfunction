##Called when we shiftclick something in the ender chest menu
execute if entity @s[nbt={Inventory:[{tag:{fighter:0}}]}] run function lobby:chest_menu/fighter_selection/toggle_0_costume
execute if entity @s[nbt={Inventory:[{tag:{fighter:1}}]}] run function lobby:chest_menu/fighter_selection/toggle_1_costume
execute if entity @s[nbt={Inventory:[{tag:{fighter:2}}]}] run function lobby:chest_menu/fighter_selection/toggle_2_costume
execute if entity @s[nbt={Inventory:[{tag:{fighter:3}}]}] run function lobby:chest_menu/fighter_selection/toggle_3_costume
execute if entity @s[nbt={Inventory:[{tag:{fighter:4}}]}] run function lobby:chest_menu/fighter_selection/toggle_4_costume
execute if entity @s[nbt={Inventory:[{tag:{fighter:5}}]}] run function lobby:chest_menu/fighter_selection/toggle_5_costume
execute if entity @s[nbt={Inventory:[{tag:{fighter:6}}]}] run function lobby:chest_menu/fighter_selection/toggle_6_costume
execute if entity @s[nbt={Inventory:[{tag:{fighter:7}}]}] run function lobby:chest_menu/fighter_selection/toggle_7_costume
execute if entity @s[nbt={Inventory:[{tag:{fighter:8}}]}] run function lobby:chest_menu/fighter_selection/toggle_8_costume
execute if entity @s[nbt={Inventory:[{tag:{fighter:9}}]}] run function lobby:chest_menu/fighter_selection/toggle_9_costume
execute if entity @s[nbt={Inventory:[{tag:{fighter:10}}]}] run function lobby:chest_menu/fighter_selection/toggle_10_costume
execute if entity @s[nbt={Inventory:[{tag:{fighter:11}}]}] run function lobby:chest_menu/fighter_selection/toggle_11_costume
execute if entity @s[nbt={Inventory:[{tag:{fighter:12}}]}] run function lobby:chest_menu/fighter_selection/toggle_12_costume
execute if entity @s[nbt={Inventory:[{tag:{fighter:13}}]}] run function lobby:chest_menu/fighter_selection/toggle_13_costume
execute if entity @s[nbt={Inventory:[{tag:{fighter:14}}]}] run function lobby:chest_menu/fighter_selection/toggle_14_costume
execute if entity @s[nbt={Inventory:[{tag:{fighter:15}}]}] run function lobby:chest_menu/fighter_selection/toggle_15_costume
execute if entity @s[nbt={Inventory:[{tag:{fighter:16}}]}] run function lobby:chest_menu/fighter_selection/toggle_16_costume
execute if entity @s[nbt={Inventory:[{tag:{fighter:17}}]}] run function lobby:chest_menu/fighter_selection/toggle_17_costume

##Restarting the screen
function lobby:chest_menu/fighter_selection/start


##Calculating costume score

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
execute if entity @s[scores={fighter=16}] run scoreboard players operation @s costume = @s f_16_costume
execute if entity @s[scores={fighter=17}] run scoreboard players operation @s costume = @s f_17_costume

##Advancements
advancement grant @s[scores={death_animation=1..,celebration=1..,costume=1..}] only advancements:custom/cosmetics