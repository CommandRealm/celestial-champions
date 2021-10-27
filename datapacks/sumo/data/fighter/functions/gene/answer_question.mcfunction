##Called to answer the question


execute if data entity @s {Inventory:[{Slot:-106b,tag:{Ability:1b}}]} run scoreboard players operation @s random_stat2 = @s random_stat3
execute if data entity @s {Inventory:[{Slot:-106b,tag:{Ability:1b}}]} run item replace entity @s weapon.offhand with air

clear @s bow{gene_item:1b}
clear @s stone_sword{gene_item:1b}
clear @s iron_pickaxe{gene_item:1b}
clear @s potion{gene_item:1b}

item replace entity @s[scores={combo_slot=0}] hotbar.0 with light_gray_stained_glass
item replace entity @s[scores={combo_slot=1}] hotbar.1 with light_gray_stained_glass
item replace entity @s[scores={combo_slot=2}] hotbar.2 with light_gray_stained_glass
item replace entity @s[scores={combo_slot=3}] hotbar.3 with light_gray_stained_glass
item replace entity @s[scores={combo_slot=4}] hotbar.4 with light_gray_stained_glass
item replace entity @s[scores={combo_slot=5}] hotbar.5 with light_gray_stained_glass
item replace entity @s[scores={combo_slot=6}] hotbar.6 with light_gray_stained_glass
item replace entity @s[scores={combo_slot=7}] hotbar.7 with light_gray_stained_glass
item replace entity @s[scores={combo_slot=8}] hotbar.8 with light_gray_stained_glass

item replace entity @s[scores={knockback_slot=0}] hotbar.0 with light_gray_stained_glass
item replace entity @s[scores={knockback_slot=1}] hotbar.1 with light_gray_stained_glass
item replace entity @s[scores={knockback_slot=2}] hotbar.2 with light_gray_stained_glass
item replace entity @s[scores={knockback_slot=3}] hotbar.3 with light_gray_stained_glass
item replace entity @s[scores={knockback_slot=4}] hotbar.4 with light_gray_stained_glass
item replace entity @s[scores={knockback_slot=5}] hotbar.5 with light_gray_stained_glass
item replace entity @s[scores={knockback_slot=6}] hotbar.6 with light_gray_stained_glass
item replace entity @s[scores={knockback_slot=7}] hotbar.7 with light_gray_stained_glass
item replace entity @s[scores={knockback_slot=8}] hotbar.8 with light_gray_stained_glass

playsound minecraft:block.amethyst_block.break master @a ~ ~ ~ 1 0

##Giving us the item
give @s[scores={random_stat2=0}] bow{Damage:384,Enchantments:[{id:"minecraft:punch",lvl:8}],display:{Name:'[{"text":"Bow","italic":false,"color":"gold"}]'},gene_item:1b}
give @s[scores={random_stat2=0}] arrow
give @s[scores={random_stat2=1}] stone_sword{HideFlags:63,Damage:130,display:{Name:'[{"text":"Sharp ","italic":false,"color":"dark_gray"},{"text":"Rock","color":"gray"}]'},gene_item:1b,CustomModelData:1}
give @s[scores={random_stat2=2}] iron_pickaxe{Damage:250,Enchantments:[{id:"minecraft:fortune",lvl:3},{id:"minecraft:knockback",lvl:6}],display:{Name:'[{"text":"Pickaxe","italic":false,"color":"dark_aqua"}]'},gene_item:1b}
give @s[scores={random_stat2=3}] potion{display:{Name:'[{"text":"Energy Drink","italic":false,"color":"blue"}]'},CustomPotionColor:2714506,CustomPotionEffects:[{Id:1,Amplifier:1,ShowIcon:1b,ShowParticles:1b,Duration:200}],gene_item:1b}

##Ending the ability.
scoreboard players set @s[scores={ability_state=1,ability_timer=2..}] ability_timer 1