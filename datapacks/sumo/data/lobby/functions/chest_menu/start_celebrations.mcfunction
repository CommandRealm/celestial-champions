##Starting the cosmetics screen

##Clear Function
function lobby:chest_menu/clear_chest

##Setting screen
scoreboard players set @s screen 10



replaceitem entity @s enderchest.0 firework_rocket{id:0,HideFlags:63,display:{Name:'[{"text":"Fireworks","color":"gray","italic":false,"bold":true}]'},clickable:1}
replaceitem entity @s[scores={celebration=0}] enderchest.0 firework_rocket{invalid_click:1,Enchantments:[{id:"x",lvl:1}],id:0,HideFlags:63,display:{Name:'[{"text":"Fireworks","color":"gray","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]']},clickable:1}


replaceitem entity @s enderchest.1 phantom_membrane{id:1,HideFlags:63,display:{Name:'[{"text":"Levitation","color":"dark_green","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={celebration=1}] enderchest.1 phantom_membrane{invalid_click:1,Enchantments:[{id:"x",lvl:1}],id:1,HideFlags:63,display:{Name:'[{"text":"Levitation","color":"dark_green","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]','[{"text":"Common","color":"green","italic":false}]']},clickable:1}

replaceitem entity @s enderchest.2 bee_spawn_egg{id:2,HideFlags:63,display:{Name:'[{"text":"Bees","color":"dark_green","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={celebration=2}] enderchest.2 bee_spawn_egg{invalid_click:1,Enchantments:[{id:"x",lvl:1}],id:2,HideFlags:63,display:{Name:'[{"text":"Bees","color":"dark_green","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]','[{"text":"Common","color":"green","italic":false}]']},clickable:1}

replaceitem entity @s enderchest.3 anvil{id:3,HideFlags:63,display:{Name:'[{"text":"Anvils","color":"dark_green","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={celebration=3}] enderchest.3 anvil{invalid_click:1,Enchantments:[{id:"x",lvl:1}],id:3,HideFlags:63,display:{Name:'[{"text":"Anvils","color":"dark_green","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]','[{"text":"Common","color":"green","italic":false}]']},clickable:1}

replaceitem entity @s enderchest.4 melon_slice{id:4,HideFlags:63,display:{Name:'[{"text":"Melons","color":"dark_green","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={celebration=4}] enderchest.4 melon_slice{invalid_click:1,Enchantments:[{id:"x",lvl:1}],id:4,HideFlags:63,display:{Name:'[{"text":"Melons","color":"dark_green","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]','[{"text":"Common","color":"green","italic":false}]']},clickable:1}

replaceitem entity @s enderchest.5 cake{id:5,HideFlags:63,display:{Name:'[{"text":"Weeeeee!","color":"dark_green","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={celebration=5}] enderchest.5 cake{invalid_click:1,Enchantments:[{id:"x",lvl:1}],id:5,HideFlags:63,display:{Name:'[{"text":"Weeeeee!","color":"dark_green","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]','[{"text":"Common","color":"green","italic":false}]']},clickable:1}

replaceitem entity @s enderchest.6 wither_rose{id:6,HideFlags:63,display:{Name:'[{"text":"Casualties","color":"dark_green","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={celebration=6}] enderchest.6 wither_rose{invalid_click:1,Enchantments:[{id:"x",lvl:1}],id:6,HideFlags:63,display:{Name:'[{"text":"Casualties","color":"dark_green","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]','[{"text":"Common","color":"green","italic":false}]']},clickable:1}

replaceitem entity @s enderchest.7 soul_lantern{id:7,HideFlags:63,display:{Name:'[{"text":"Flames","color":"dark_green","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={celebration=7}] enderchest.7 soul_lantern{invalid_click:1,Enchantments:[{id:"x",lvl:1}],id:7,HideFlags:63,display:{Name:'[{"text":"Flames","color":"dark_green","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]','[{"text":"Common","color":"green","italic":false}]']},clickable:1}

replaceitem entity @s enderchest.8 egg{id:8,HideFlags:63,display:{Name:'[{"text":"Eggs","color":"dark_green","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={celebration=8}] enderchest.8 egg{invalid_click:1,Enchantments:[{id:"x",lvl:1}],id:8,HideFlags:63,display:{Name:'[{"text":"Eggs","color":"dark_green","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]','[{"text":"Common","color":"green","italic":false}]']},clickable:1}

replaceitem entity @s enderchest.9 campfire{id:9,HideFlags:63,display:{Name:'[{"text":"Campfire","color":"dark_green","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"green","italic":false}]']},clickable:1}
replaceitem entity @s[scores={celebration=9}] enderchest.9 campfire{invalid_click:1,Enchantments:[{id:"x",lvl:1}],id:9,HideFlags:63,display:{Name:'[{"text":"Campfire","color":"dark_green","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]','[{"text":"Common","color":"green","italic":false}]']},clickable:1}

replaceitem entity @s enderchest.10 iron_bars{invalid_click:1,id:10,HideFlags:63,display:{Name:'[{"text":"Portal","color":"dark_purple","italic":false,"bold":true}]',Lore:['[{"text":"Locked","color":"red","italic":false}]','[{"text":"Epic","color":"light_purple","italic":false}]']},clickable:1}
replaceitem entity @s[tag=unlock_celebration_10] enderchest.10 end_portal_frame{id:10,HideFlags:63,display:{Name:'[{"text":"Portal","color":"dark_purple","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"light_purple","italic":false}]']},clickable:1}
replaceitem entity @s[scores={celebration=10}] enderchest.10 end_portal_frame{invalid_click:1,Enchantments:[{id:"x",lvl:1}],id:10,HideFlags:63,display:{Name:'[{"text":"Portal","color":"dark_purple","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]','[{"text":"Epic","color":"light_purple","italic":false}]']},clickable:1}

replaceitem entity @s enderchest.11 iron_bars{invalid_click:1,id:11,HideFlags:63,display:{Name:'[{"text":"Food","color":"dark_purple","italic":false,"bold":true}]',Lore:['[{"text":"Locked","color":"red","italic":false}]','[{"text":"Epic","color":"light_purple","italic":false}]']},clickable:1}
replaceitem entity @s[tag=unlock_celebration_11] enderchest.11 cooked_beef{id:11,HideFlags:63,display:{Name:'[{"text":"Food","color":"dark_purple","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"light_purple","italic":false}]']},clickable:1}
replaceitem entity @s[scores={celebration=11}] enderchest.11 cooked_beef{invalid_click:1,Enchantments:[{id:"x",lvl:1}],id:11,HideFlags:63,display:{Name:'[{"text":"Food","color":"dark_purple","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]','[{"text":"Epic","color":"light_purple","italic":false}]']},clickable:1}

replaceitem entity @s enderchest.12 iron_bars{invalid_click:1,id:12,HideFlags:63,display:{Name:'[{"text":"Balloons","color":"dark_purple","italic":false,"bold":true}]',Lore:['[{"text":"Locked","color":"red","italic":false}]','[{"text":"Epic","color":"light_purple","italic":false}]']},clickable:1}
replaceitem entity @s[tag=unlock_celebration_12] enderchest.12 red_concrete{id:12,HideFlags:63,display:{Name:'[{"text":"Balloons","color":"dark_purple","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"light_purple","italic":false}]']},clickable:1}
replaceitem entity @s[scores={celebration=12}] enderchest.12 red_concrete{invalid_click:1,Enchantments:[{id:"x",lvl:1}],id:12,HideFlags:63,display:{Name:'[{"text":"Balloons","color":"dark_purple","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]','[{"text":"Epic","color":"light_purple","italic":false}]']},clickable:1}

replaceitem entity @s enderchest.13 iron_bars{invalid_click:1,id:13,HideFlags:63,display:{Name:'[{"text":"Coaster","color":"dark_purple","italic":false,"bold":true}]',Lore:['[{"text":"Locked","color":"red","italic":false}]','[{"text":"Epic","color":"light_purple","italic":false}]']},clickable:1}
replaceitem entity @s[tag=unlock_celebration_13] enderchest.13 minecart{id:13,HideFlags:63,display:{Name:'[{"text":"Coaster","color":"dark_purple","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"light_purple","italic":false}]']},clickable:1}
replaceitem entity @s[scores={celebration=13}] enderchest.13 minecart{invalid_click:1,Enchantments:[{id:"x",lvl:1}],id:13,HideFlags:63,display:{Name:'[{"text":"Coaster","color":"dark_purple","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]','[{"text":"Epic","color":"light_purple","italic":false}]']},clickable:1}

replaceitem entity @s enderchest.14 iron_bars{invalid_click:1,id:14,HideFlags:63,display:{Name:'[{"text":"Hearts","color":"dark_purple","italic":false,"bold":true}]',Lore:['[{"text":"Locked","color":"red","italic":false}]','[{"text":"Epic","color":"light_purple","italic":false}]']},clickable:1}
replaceitem entity @s[tag=unlock_celebration_14] enderchest.14 pink_concrete{id:14,HideFlags:63,display:{Name:'[{"text":"Hearts","color":"dark_purple","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"light_purple","italic":false}]']},clickable:1}
replaceitem entity @s[scores={celebration=14}] enderchest.14 pink_concrete{invalid_click:1,Enchantments:[{id:"x",lvl:1}],id:14,HideFlags:63,display:{Name:'[{"text":"Hearts","color":"dark_purple","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]','[{"text":"Epic","color":"light_purple","italic":false}]']},clickable:1}



replaceitem entity @s enderchest.15 iron_bars{invalid_click:1,id:15,HideFlags:63,display:{Name:'[{"text":"Dance Party","color":"gold","italic":false,"bold":true}]',Lore:['[{"text":"Locked","color":"red","italic":false}]','[{"text":"LEGENDARY","color":"yellow","italic":false}]']},clickable:1}
replaceitem entity @s[tag=unlock_celebration_15] enderchest.15 jukebox{id:15,HideFlags:63,display:{Name:'[{"text":"Dance Party","color":"gold","italic":false,"bold":true}]',Lore:['[{"text":"LEGENDARY","color":"yellow","italic":false}]']},clickable:1}
replaceitem entity @s[scores={celebration=15}] enderchest.15 jukebox{invalid_click:1,Enchantments:[{id:"x",lvl:1}],id:15,HideFlags:63,display:{Name:'[{"text":"Dance Party","color":"gold","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]','[{"text":"LEGENDARY","color":"yellow","italic":false}]']},clickable:1}

replaceitem entity @s enderchest.16 iron_bars{invalid_click:1,id:16,HideFlags:63,display:{Name:'[{"text":"Storm","color":"gold","italic":false,"bold":true}]',Lore:['[{"text":"Locked","color":"red","italic":false}]','[{"text":"LEGENDARY","color":"yellow","italic":false}]']},clickable:1}
replaceitem entity @s[tag=unlock_celebration_16] enderchest.16 gray_stained_glass{id:16,HideFlags:63,display:{Name:'[{"text":"Storm","color":"gold","italic":false,"bold":true}]',Lore:['[{"text":"LEGENDARY","color":"yellow","italic":false}]']},clickable:1}
replaceitem entity @s[scores={celebration=16}] enderchest.16 gray_stained_glass{invalid_click:1,Enchantments:[{id:"x",lvl:1}],id:16,HideFlags:63,display:{Name:'[{"text":"Storm","color":"gold","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]','[{"text":"LEGENDARY","color":"yellow","italic":false}]']},clickable:1}

replaceitem entity @s enderchest.17 iron_bars{invalid_click:1,id:17,HideFlags:63,display:{Name:'[{"text":"Throne","color":"gold","italic":false,"bold":true}]',Lore:['[{"text":"Locked","color":"red","italic":false}]','[{"text":"LEGENDARY","color":"yellow","italic":false}]']},clickable:1}
replaceitem entity @s[tag=unlock_celebration_17] enderchest.17 gold_block{id:17,HideFlags:63,display:{Name:'[{"text":"Throne","color":"gold","italic":false,"bold":true}]',Lore:['[{"text":"LEGENDARY","color":"yellow","italic":false}]']},clickable:1}
replaceitem entity @s[scores={celebration=17}] enderchest.17 gold_block{invalid_click:1,Enchantments:[{id:"x",lvl:1}],id:17,HideFlags:63,display:{Name:'[{"text":"Throne","color":"gold","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]','[{"text":"LEGENDARY","color":"yellow","italic":false}]']},clickable:1}

##Back button
replaceitem entity @s enderchest.18 barrier{clickable:1,HideFlags:63,display:{Name:'[{"text":"Back","bold":true,"italic":false,"color":"#ed1000"}]'}}



