##kb hit over function
scoreboard players set $kb tutorial 1

##if we should swap to sword
execute if score $kb_hit tutorial matches 3 run item replace entity @e[type=armor_stand,tag=tutorial_knockback] weapon.mainhand with diamond_sword{Enchantments:[{}]}
execute if score $kb_hit tutorial matches 3 run playsound minecraft:block.candle.extinguish master @a 5 83 -70

##Restart
execute if score $kb_hit tutorial matches 4.. run scoreboard players set $kb tutorial 0
execute if score $kb_hit tutorial matches 4.. run scoreboard players set $kb_hit tutorial 0