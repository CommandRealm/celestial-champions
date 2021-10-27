##Called when you click on the fighter screen


##Figuring out which button they clicked
scoreboard players set @s calculate -100
execute unless entity @s[nbt={EnderItems:[{tag:{fighter:0}}]}] run scoreboard players set @s calculate 0
execute unless entity @s[nbt={EnderItems:[{tag:{fighter:1}}]}] run scoreboard players set @s calculate 1
execute unless entity @s[nbt={EnderItems:[{tag:{fighter:2}}]}] run scoreboard players set @s calculate 2
execute unless entity @s[nbt={EnderItems:[{tag:{fighter:3}}]}] run scoreboard players set @s calculate 3
execute unless entity @s[nbt={EnderItems:[{tag:{fighter:4}}]}] run scoreboard players set @s calculate 4
execute unless entity @s[nbt={EnderItems:[{tag:{fighter:5}}]}] run scoreboard players set @s calculate 5
execute unless entity @s[nbt={EnderItems:[{tag:{fighter:6}}]}] run scoreboard players set @s calculate 6
execute unless entity @s[nbt={EnderItems:[{tag:{fighter:7}}]}] run scoreboard players set @s calculate 7
execute unless entity @s[nbt={EnderItems:[{tag:{fighter:8}}]}] run scoreboard players set @s calculate 8
execute unless entity @s[nbt={EnderItems:[{tag:{fighter:9}}]}] run scoreboard players set @s calculate 9
execute unless entity @s[nbt={EnderItems:[{tag:{fighter:10}}]}] run scoreboard players set @s calculate 10
execute unless entity @s[nbt={EnderItems:[{tag:{fighter:11}}]}] run scoreboard players set @s calculate 11
execute unless entity @s[nbt={EnderItems:[{tag:{fighter:12}}]}] run scoreboard players set @s calculate 12
execute unless entity @s[nbt={EnderItems:[{tag:{fighter:13}}]}] run scoreboard players set @s calculate 13
execute unless entity @s[nbt={EnderItems:[{tag:{fighter:14}}]}] run scoreboard players set @s calculate 14
execute unless entity @s[nbt={EnderItems:[{tag:{fighter:15}}]}] run scoreboard players set @s calculate 15
execute unless entity @s[nbt={EnderItems:[{tag:{fighter:16}}]}] run scoreboard players set @s calculate 16
execute unless entity @s[nbt={EnderItems:[{tag:{fighter:17}}]}] run scoreboard players set @s calculate 17
execute unless entity @s[nbt={EnderItems:[{id:"minecraft:player_head",tag:{random:1}}]}] run scoreboard players set @s calculate -10
execute unless entity @s[tag=invalid_click] unless entity @s[nbt={EnderItems:[{id:"minecraft:player_head",tag:{random:1}}]}] run playsound minecraft:announcer.random master @s ~ ~ ~ 1 1

##Applying fighter score
execute unless entity @s[tag=invalid_click] run scoreboard players operation @s fighter = @s calculate


##Calculating costume score

execute if entity @s[scores={calculate=0}] run scoreboard players operation @s costume = @s f_0_costume
execute if entity @s[scores={calculate=1}] run scoreboard players operation @s costume = @s f_1_costume
execute if entity @s[scores={calculate=2}] run scoreboard players operation @s costume = @s f_2_costume
execute if entity @s[scores={calculate=3}] run scoreboard players operation @s costume = @s f_3_costume
execute if entity @s[scores={calculate=4}] run scoreboard players operation @s costume = @s f_4_costume
execute if entity @s[scores={calculate=5}] run scoreboard players operation @s costume = @s f_5_costume
execute if entity @s[scores={calculate=6}] run scoreboard players operation @s costume = @s f_6_costume
execute if entity @s[scores={calculate=7}] run scoreboard players operation @s costume = @s f_7_costume
execute if entity @s[scores={calculate=8}] run scoreboard players operation @s costume = @s f_8_costume
execute if entity @s[scores={calculate=9}] run scoreboard players operation @s costume = @s f_9_costume
execute if entity @s[scores={calculate=10}] run scoreboard players operation @s costume = @s f_10_costume
execute if entity @s[scores={calculate=11}] run scoreboard players operation @s costume = @s f_11_costume
execute if entity @s[scores={calculate=12}] run scoreboard players operation @s costume = @s f_12_costume
execute if entity @s[scores={calculate=13}] run scoreboard players operation @s costume = @s f_13_costume
execute if entity @s[scores={calculate=14}] run scoreboard players operation @s costume = @s f_14_costume
execute if entity @s[scores={calculate=15}] run scoreboard players operation @s costume = @s f_15_costume
execute if entity @s[scores={calculate=16}] run scoreboard players operation @s costume = @s f_16_costume
execute if entity @s[scores={calculate=17}] run scoreboard players operation @s costume = @s f_17_costume
tag @s[scores={calculate=0..}] remove random_fighter
execute if entity @s[scores={calculate=-10}] run tag @s add random_fighter
##Removing random fighter tag

##Sound
execute unless entity @s[tag=invalid_click] run playsound minecraft:entity.blaze.hurt master @s ~ ~ ~ 0.25 0.5
execute unless entity @s[tag=invalid_click] run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1
execute unless entity @s[tag=invalid_click] run playsound minecraft:entity.zombie.attack_wooden_door master @s ~ ~ ~ 0.15 0.6
execute unless entity @s[tag=invalid_click] run playsound minecraft:entity.illusioner.cast_spell master @s ~ ~ ~ 0.15 2

##Recalling the start function
function lobby:chest_menu/fighter_selection/start




##Playsounds
execute unless entity @s[tag=invalid_click] if entity @s[scores={fighter=0}] run playsound minecraft:announcer.theo master @s ~ ~ ~ 1 1
execute unless entity @s[tag=invalid_click] if entity @s[scores={fighter=7}] run playsound minecraft:announcer.incend master @s ~ ~ ~ 1000 1.05

execute unless entity @s[tag=invalid_click] if entity @s[scores={fighter=8}] run playsound minecraft:announcer.drakier master @s ~ ~ ~ 1000 1

execute unless entity @s[tag=invalid_click] if entity @s[scores={fighter=9}] run playsound minecraft:announcer.gracea master @s ~ ~ ~ 1000 1.0

execute unless entity @s[tag=invalid_click] if entity @s[scores={fighter=10}] run playsound minecraft:announcer.callidus master @s ~ ~ ~ 1000 1.0

execute unless entity @s[tag=invalid_click] if entity @s[scores={fighter=12,f_12_costume=0}] run playsound minecraft:announcer.melon_man master @s ~ ~ ~ 1000 1.0

execute unless entity @s[tag=invalid_click] if entity @s[scores={fighter=12,f_12_costume=1}] run playsound minecraft:announcer.fish_shopkeeper master @s ~ ~ ~ 1000 1.0

execute unless entity @s[tag=invalid_click] if entity @s[scores={fighter=12,f_12_costume=2}] run playsound minecraft:announcer.livestock_shopkeeper master @s ~ ~ ~ 1000 1.0

execute unless entity @s[tag=invalid_click] if entity @s[scores={fighter=12,f_12_costume=3}] run playsound minecraft:announcer.nether_shopkeeper master @s ~ ~ ~ 1000 1.0

execute unless entity @s[tag=invalid_click] if entity @s[scores={fighter=12,f_12_costume=4}] run playsound minecraft:announcer.flower_shopkeeper master @s ~ ~ ~ 1000 1.0

execute unless entity @s[tag=invalid_click] if entity @s[scores={fighter=11,f_11_costume=0..1}] run playsound minecraft:announcer.gene master @s ~ ~ ~ 1000 1.0

execute unless entity @s[tag=invalid_click] if entity @s[scores={fighter=11,f_11_costume=2}] run playsound minecraft:announcer.brick master @s ~ ~ ~ 1000 1.0

execute unless entity @s[tag=invalid_click] if entity @s[scores={fighter=15}] run playsound minecraft:announcer.malice master @s ~ ~ ~ 1000 1.0

execute unless entity @s[tag=invalid_click] if entity @s[scores={fighter=1,f_1_costume=0}] run playsound minecraft:announcer.zombie master @s ~ ~ ~ 1000 1.0

execute unless entity @s[tag=invalid_click] if entity @s[scores={fighter=1,f_1_costume=1}] run playsound minecraft:announcer.husk master @s ~ ~ ~ 1000 1.0

execute unless entity @s[tag=invalid_click] if entity @s[scores={fighter=1,f_1_costume=2}] run playsound minecraft:announcer.zombie_villager master @s ~ ~ ~ 1000 1.0

execute unless entity @s[tag=invalid_click] if entity @s[scores={fighter=1,f_1_costume=3}] run playsound minecraft:announcer.drowned master @s ~ ~ ~ 1000 1.0

execute unless entity @s[tag=invalid_click] if entity @s[scores={fighter=2,f_2_costume=0}] run playsound minecraft:announcer.skeleton master @s ~ ~ ~ 1000 1.0

execute unless entity @s[tag=invalid_click] if entity @s[scores={fighter=2,f_2_costume=1}] run playsound minecraft:announcer.stray master @s ~ ~ ~ 1000 1.0

execute unless entity @s[tag=invalid_click] if entity @s[scores={fighter=2,f_2_costume=2}] run playsound minecraft:announcer.wither_skeleton master @s ~ ~ ~ 1000 1.0

execute unless entity @s[tag=invalid_click] if entity @s[scores={fighter=4,f_4_costume=0}] run playsound minecraft:announcer.spider master @s ~ ~ ~ 1000 1.0

execute unless entity @s[tag=invalid_click] if entity @s[scores={fighter=4,f_4_costume=1}] run playsound minecraft:announcer.cave_spider master @s ~ ~ ~ 1000 1.0

execute unless entity @s[tag=invalid_click] if entity @s[scores={fighter=4,f_4_costume=2}] run playsound minecraft:announcer.spider master @s ~ ~ ~ 1000 1.0

execute unless entity @s[tag=invalid_click] if entity @s[scores={fighter=3}] run playsound minecraft:announcer.creeper master @s ~ ~ ~ 1000 1.0

execute unless entity @s[tag=invalid_click] if entity @s[scores={fighter=6}] run playsound minecraft:announcer.enderman master @s ~ ~ ~ 1000 1.0

execute unless entity @s[tag=invalid_click] if entity @s[scores={fighter=13}] run playsound minecraft:announcer.blaze master @s ~ ~ ~ 1000 1.0

execute unless entity @s[tag=invalid_click] if entity @s[scores={fighter=14}] run playsound minecraft:announcer.slime master @s ~ ~ ~ 1000 1.0

execute unless entity @s[tag=invalid_click] if entity @s[scores={fighter=5,f_5_costume=0}] run playsound minecraft:announcer.chicken master @s ~ ~ ~ 1000 1.0

execute unless entity @s[tag=invalid_click] if entity @s[scores={fighter=5,f_5_costume=1}] run playsound minecraft:announcer.rooster master @s ~ ~ ~ 1000 1.0

execute unless entity @s[tag=invalid_click] if entity @s[scores={fighter=5,f_5_costume=2}] run playsound minecraft:announcer.chicken master @s ~ ~ ~ 1000 1.0

execute unless entity @s[tag=invalid_click] if entity @s[scores={fighter=5,f_5_costume=3}] run playsound minecraft:announcer.chicken_question master @s ~ ~ ~ 1000 1.0

execute unless entity @s[tag=invalid_click] if entity @s[scores={fighter=16}] run playsound minecraft:announcer.arthor master @s ~ ~ ~ 1000 1.0

execute unless entity @s[tag=invalid_click] if entity @s[scores={fighter=17}] unless score @s f_17_costume matches 1 run playsound minecraft:announcer.guardian master @s ~ ~ ~ 1000 1.0

execute unless entity @s[tag=invalid_click] if entity @s[scores={fighter=17,f_17_costume=1}] run playsound minecraft:announcer.elder_guardian master @s ~ ~ ~ 1000 1.0

