##Starting the cosmetics screen

##Clear Function
function lobby:chest_menu/clear_chest

##Setting screen
scoreboard players set @s screen 10



item replace entity @s enderchest.0 with firework_rocket{id:0,HideFlags:63,display:{Name:'[{"translate":"Fireworks","color":"gray","italic":false,"bold":true}]'},clickable:1}
item replace entity @s[scores={celebration=0}] enderchest.0 with firework_rocket{invalid_click:1,Enchantments:[{id:"x",lvl:1}],id:0,HideFlags:63,display:{Name:'[{"translate":"Fireworks","color":"gray","italic":false,"bold":true}]',Lore:['[{"translate":"Selected","color":"blue","italic":false}]']},clickable:1}


item replace entity @s enderchest.1 with phantom_membrane{id:1,HideFlags:63,display:{Name:'[{"translate":"Levitation","color":"dark_green","italic":false,"bold":true}]',Lore:['[{"translate":"Common","color":"green","italic":false}]']},clickable:1}
item replace entity @s[scores={celebration=1}] enderchest.1 with phantom_membrane{invalid_click:1,Enchantments:[{id:"x",lvl:1}],id:1,HideFlags:63,display:{Name:'[{"translate":"Levitation","color":"dark_green","italic":false,"bold":true}]',Lore:['[{"translate":"Selected","color":"blue","italic":false}]','[{"translate":"Common","color":"green","italic":false}]']},clickable:1}

item replace entity @s enderchest.2 with bee_spawn_egg{id:2,HideFlags:63,display:{Name:'[{"translate":"Bees","color":"dark_green","italic":false,"bold":true}]',Lore:['[{"translate":"Common","color":"green","italic":false}]']},clickable:1}
item replace entity @s[scores={celebration=2}] enderchest.2 with bee_spawn_egg{invalid_click:1,Enchantments:[{id:"x",lvl:1}],id:2,HideFlags:63,display:{Name:'[{"translate":"Bees","color":"dark_green","italic":false,"bold":true}]',Lore:['[{"translate":"Selected","color":"blue","italic":false}]','[{"translate":"Common","color":"green","italic":false}]']},clickable:1}

item replace entity @s enderchest.3 with anvil{id:3,HideFlags:63,display:{Name:'[{"translate":"Anvils","color":"dark_green","italic":false,"bold":true}]',Lore:['[{"translate":"Common","color":"green","italic":false}]']},clickable:1}
item replace entity @s[scores={celebration=3}] enderchest.3 with anvil{invalid_click:1,Enchantments:[{id:"x",lvl:1}],id:3,HideFlags:63,display:{Name:'[{"translate":"Anvils","color":"dark_green","italic":false,"bold":true}]',Lore:['[{"translate":"Selected","color":"blue","italic":false}]','[{"translate":"Common","color":"green","italic":false}]']},clickable:1}

item replace entity @s enderchest.4 with melon_slice{id:4,HideFlags:63,display:{Name:'[{"translate":"Melons","color":"dark_green","italic":false,"bold":true}]',Lore:['[{"translate":"Common","color":"green","italic":false}]']},clickable:1}
item replace entity @s[scores={celebration=4}] enderchest.4 with melon_slice{invalid_click:1,Enchantments:[{id:"x",lvl:1}],id:4,HideFlags:63,display:{Name:'[{"translate":"Melons","color":"dark_green","italic":false,"bold":true}]',Lore:['[{"translate":"Selected","color":"blue","italic":false}]','[{"translate":"Common","color":"green","italic":false}]']},clickable:1}

item replace entity @s enderchest.5 with cake{id:5,HideFlags:63,display:{Name:'[{"translate":"Weeeeee!","color":"dark_green","italic":false,"bold":true}]',Lore:['[{"translate":"Common","color":"green","italic":false}]']},clickable:1}
item replace entity @s[scores={celebration=5}] enderchest.5 with cake{invalid_click:1,Enchantments:[{id:"x",lvl:1}],id:5,HideFlags:63,display:{Name:'[{"translate":"Weeeeee!","color":"dark_green","italic":false,"bold":true}]',Lore:['[{"translate":"Selected","color":"blue","italic":false}]','[{"translate":"Common","color":"green","italic":false}]']},clickable:1}

item replace entity @s enderchest.6 with wither_rose{id:6,HideFlags:63,display:{Name:'[{"translate":"Casualties","color":"dark_green","italic":false,"bold":true}]',Lore:['[{"translate":"Common","color":"green","italic":false}]']},clickable:1}
item replace entity @s[scores={celebration=6}] enderchest.6 with wither_rose{invalid_click:1,Enchantments:[{id:"x",lvl:1}],id:6,HideFlags:63,display:{Name:'[{"translate":"Casualties","color":"dark_green","italic":false,"bold":true}]',Lore:['[{"translate":"Selected","color":"blue","italic":false}]','[{"translate":"Common","color":"green","italic":false}]']},clickable:1}

item replace entity @s enderchest.7 with soul_lantern{id:7,HideFlags:63,display:{Name:'[{"translate":"Flames","color":"dark_green","italic":false,"bold":true}]',Lore:['[{"translate":"Common","color":"green","italic":false}]']},clickable:1}
item replace entity @s[scores={celebration=7}] enderchest.7 with soul_lantern{invalid_click:1,Enchantments:[{id:"x",lvl:1}],id:7,HideFlags:63,display:{Name:'[{"translate":"Flames","color":"dark_green","italic":false,"bold":true}]',Lore:['[{"translate":"Selected","color":"blue","italic":false}]','[{"translate":"Common","color":"green","italic":false}]']},clickable:1}

item replace entity @s enderchest.8 with egg{id:8,HideFlags:63,display:{Name:'[{"translate":"Eggs","color":"dark_green","italic":false,"bold":true}]',Lore:['[{"translate":"Common","color":"green","italic":false}]']},clickable:1}
item replace entity @s[scores={celebration=8}] enderchest.8 with egg{invalid_click:1,Enchantments:[{id:"x",lvl:1}],id:8,HideFlags:63,display:{Name:'[{"translate":"Eggs","color":"dark_green","italic":false,"bold":true}]',Lore:['[{"translate":"Selected","color":"blue","italic":false}]','[{"translate":"Common","color":"green","italic":false}]']},clickable:1}

item replace entity @s enderchest.9 with campfire{id:9,HideFlags:63,display:{Name:'[{"translate":"Campfire","color":"dark_green","italic":false,"bold":true}]',Lore:['[{"translate":"Common","color":"green","italic":false}]']},clickable:1}
item replace entity @s[scores={celebration=9}] enderchest.9 with campfire{invalid_click:1,Enchantments:[{id:"x",lvl:1}],id:9,HideFlags:63,display:{Name:'[{"translate":"Campfire","color":"dark_green","italic":false,"bold":true}]',Lore:['[{"translate":"Selected","color":"blue","italic":false}]','[{"translate":"Common","color":"green","italic":false}]']},clickable:1}

item replace entity @s enderchest.10 with iron_bars{invalid_click:1,id:10,HideFlags:63,display:{Name:'[{"translate":"Portal","color":"dark_purple","italic":false,"bold":true}]',Lore:['[{"translate":"Locked","color":"red","italic":false}]','[{"translate":"Epic","color":"light_purple","italic":false}]']},clickable:1}
item replace entity @s[tag=unlock_celebration_10] enderchest.10 with end_portal_frame{id:10,HideFlags:63,display:{Name:'[{"translate":"Portal","color":"dark_purple","italic":false,"bold":true}]',Lore:['[{"translate":"Epic","color":"light_purple","italic":false}]']},clickable:1}
item replace entity @s[scores={celebration=10}] enderchest.10 with end_portal_frame{invalid_click:1,Enchantments:[{id:"x",lvl:1}],id:10,HideFlags:63,display:{Name:'[{"translate":"Portal","color":"dark_purple","italic":false,"bold":true}]',Lore:['[{"translate":"Selected","color":"blue","italic":false}]','[{"translate":"Epic","color":"light_purple","italic":false}]']},clickable:1}

item replace entity @s enderchest.11 with iron_bars{invalid_click:1,id:11,HideFlags:63,display:{Name:'[{"translate":"Food","color":"dark_purple","italic":false,"bold":true}]',Lore:['[{"translate":"Locked","color":"red","italic":false}]','[{"translate":"Epic","color":"light_purple","italic":false}]']},clickable:1}
item replace entity @s[tag=unlock_celebration_11] enderchest.11 with cooked_beef{id:11,HideFlags:63,display:{Name:'[{"translate":"Food","color":"dark_purple","italic":false,"bold":true}]',Lore:['[{"translate":"Epic","color":"light_purple","italic":false}]']},clickable:1}
item replace entity @s[scores={celebration=11}] enderchest.11 with cooked_beef{invalid_click:1,Enchantments:[{id:"x",lvl:1}],id:11,HideFlags:63,display:{Name:'[{"translate":"Food","color":"dark_purple","italic":false,"bold":true}]',Lore:['[{"translate":"Selected","color":"blue","italic":false}]','[{"translate":"Epic","color":"light_purple","italic":false}]']},clickable:1}

item replace entity @s enderchest.12 with iron_bars{invalid_click:1,id:12,HideFlags:63,display:{Name:'[{"translate":"Balloons","color":"dark_purple","italic":false,"bold":true}]',Lore:['[{"translate":"Locked","color":"red","italic":false}]','[{"translate":"Epic","color":"light_purple","italic":false}]']},clickable:1}
item replace entity @s[tag=unlock_celebration_12] enderchest.12 with red_concrete{id:12,HideFlags:63,display:{Name:'[{"translate":"Balloons","color":"dark_purple","italic":false,"bold":true}]',Lore:['[{"translate":"Epic","color":"light_purple","italic":false}]']},clickable:1}
item replace entity @s[scores={celebration=12}] enderchest.12 with red_concrete{invalid_click:1,Enchantments:[{id:"x",lvl:1}],id:12,HideFlags:63,display:{Name:'[{"translate":"Balloons","color":"dark_purple","italic":false,"bold":true}]',Lore:['[{"translate":"Selected","color":"blue","italic":false}]','[{"translate":"Epic","color":"light_purple","italic":false}]']},clickable:1}

item replace entity @s enderchest.13 with iron_bars{invalid_click:1,id:13,HideFlags:63,display:{Name:'[{"translate":"Coaster","color":"dark_purple","italic":false,"bold":true}]',Lore:['[{"translate":"Locked","color":"red","italic":false}]','[{"translate":"Epic","color":"light_purple","italic":false}]']},clickable:1}
item replace entity @s[tag=unlock_celebration_13] enderchest.13 with minecart{id:13,HideFlags:63,display:{Name:'[{"translate":"Coaster","color":"dark_purple","italic":false,"bold":true}]',Lore:['[{"translate":"Epic","color":"light_purple","italic":false}]']},clickable:1}
item replace entity @s[scores={celebration=13}] enderchest.13 with minecart{invalid_click:1,Enchantments:[{id:"x",lvl:1}],id:13,HideFlags:63,display:{Name:'[{"translate":"Coaster","color":"dark_purple","italic":false,"bold":true}]',Lore:['[{"translate":"Selected","color":"blue","italic":false}]','[{"translate":"Epic","color":"light_purple","italic":false}]']},clickable:1}

item replace entity @s enderchest.14 with iron_bars{invalid_click:1,id:14,HideFlags:63,display:{Name:'[{"translate":"Hearts","color":"dark_purple","italic":false,"bold":true}]',Lore:['[{"translate":"Locked","color":"red","italic":false}]','[{"translate":"Epic","color":"light_purple","italic":false}]']},clickable:1}
item replace entity @s[tag=unlock_celebration_14] enderchest.14 with pink_concrete{id:14,HideFlags:63,display:{Name:'[{"translate":"Hearts","color":"dark_purple","italic":false,"bold":true}]',Lore:['[{"translate":"Epic","color":"light_purple","italic":false}]']},clickable:1}
item replace entity @s[scores={celebration=14}] enderchest.14 with pink_concrete{invalid_click:1,Enchantments:[{id:"x",lvl:1}],id:14,HideFlags:63,display:{Name:'[{"translate":"Hearts","color":"dark_purple","italic":false,"bold":true}]',Lore:['[{"translate":"Selected","color":"blue","italic":false}]','[{"translate":"Epic","color":"light_purple","italic":false}]']},clickable:1}



item replace entity @s enderchest.15 with iron_bars{invalid_click:1,id:15,HideFlags:63,display:{Name:'[{"translate":"Dance Party","color":"gold","italic":false,"bold":true}]',Lore:['[{"translate":"Locked","color":"red","italic":false}]','[{"translate":"LEGENDARY","color":"yellow","italic":false}]']},clickable:1}
item replace entity @s[tag=unlock_celebration_15] enderchest.15 with jukebox{id:15,HideFlags:63,display:{Name:'[{"translate":"Dance Party","color":"gold","italic":false,"bold":true}]',Lore:['[{"translate":"LEGENDARY","color":"yellow","italic":false}]']},clickable:1}
item replace entity @s[scores={celebration=15}] enderchest.15 with jukebox{invalid_click:1,Enchantments:[{id:"x",lvl:1}],id:15,HideFlags:63,display:{Name:'[{"translate":"Dance Party","color":"gold","italic":false,"bold":true}]',Lore:['[{"translate":"Selected","color":"blue","italic":false}]','[{"translate":"LEGENDARY","color":"yellow","italic":false}]']},clickable:1}

item replace entity @s enderchest.16 with iron_bars{invalid_click:1,id:16,HideFlags:63,display:{Name:'[{"translate":"Storm","color":"gold","italic":false,"bold":true}]',Lore:['[{"translate":"Locked","color":"red","italic":false}]','[{"translate":"LEGENDARY","color":"yellow","italic":false}]']},clickable:1}
item replace entity @s[tag=unlock_celebration_16] enderchest.16 with gray_stained_glass{id:16,HideFlags:63,display:{Name:'[{"translate":"Storm","color":"gold","italic":false,"bold":true}]',Lore:['[{"translate":"LEGENDARY","color":"yellow","italic":false}]']},clickable:1}
item replace entity @s[scores={celebration=16}] enderchest.16 with gray_stained_glass{invalid_click:1,Enchantments:[{id:"x",lvl:1}],id:16,HideFlags:63,display:{Name:'[{"translate":"Storm","color":"gold","italic":false,"bold":true}]',Lore:['[{"translate":"Selected","color":"blue","italic":false}]','[{"translate":"LEGENDARY","color":"yellow","italic":false}]']},clickable:1}

item replace entity @s enderchest.17 with iron_bars{invalid_click:1,id:17,HideFlags:63,display:{Name:'[{"translate":"Throne","color":"gold","italic":false,"bold":true}]',Lore:['[{"translate":"Locked","color":"red","italic":false}]','[{"translate":"LEGENDARY","color":"yellow","italic":false}]']},clickable:1}
item replace entity @s[tag=unlock_celebration_17] enderchest.17 with gold_block{id:17,HideFlags:63,display:{Name:'[{"translate":"Throne","color":"gold","italic":false,"bold":true}]',Lore:['[{"translate":"LEGENDARY","color":"yellow","italic":false}]']},clickable:1}
item replace entity @s[scores={celebration=17}] enderchest.17 with gold_block{invalid_click:1,Enchantments:[{id:"x",lvl:1}],id:17,HideFlags:63,display:{Name:'[{"translate":"Throne","color":"gold","italic":false,"bold":true}]',Lore:['[{"translate":"Selected","color":"blue","italic":false}]','[{"translate":"LEGENDARY","color":"yellow","italic":false}]']},clickable:1}

##Back button
item replace entity @s enderchest.18 with barrier{clickable:1,HideFlags:63,display:{Name:'[{"translate":"Back","bold":true,"italic":false,"color":"#ed1000"}]'}}



