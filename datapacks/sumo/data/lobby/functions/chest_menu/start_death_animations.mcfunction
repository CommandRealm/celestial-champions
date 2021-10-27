##Starting the cosmetics screen

##Clear Function
function lobby:chest_menu/clear_chest

##Setting screen
scoreboard players set @s screen 9



item replace entity @s enderchest.0 with armor_stand{id:0,HideFlags:63,display:{Name:'[{"text":"Default","color":"gray","italic":false,"bold":true}]'},clickable:1}
item replace entity @s[scores={death_animation=0}] enderchest.0 with armor_stand{invalid_click:1,Enchantments:[{id:"x",lvl:1}],id:0,HideFlags:63,display:{Name:'[{"text":"Default","color":"gray","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]']},clickable:1}


item replace entity @s enderchest.1 with armor_stand{id:1,HideFlags:63,display:{Name:'[{"text":"Sitting","color":"dark_green","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"green","italic":false}]']},clickable:1}
item replace entity @s[scores={death_animation=1}] enderchest.1 with armor_stand{invalid_click:1,Enchantments:[{id:"x",lvl:1}],id:1,HideFlags:63,display:{Name:'[{"text":"Sitting","color":"dark_green","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]','[{"text":"Common","color":"green","italic":false}]']},clickable:1}

item replace entity @s enderchest.2 with armor_stand{id:2,HideFlags:63,display:{Name:'[{"text":"Starfish","color":"dark_green","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"green","italic":false}]']},clickable:1}
item replace entity @s[scores={death_animation=2}] enderchest.2 with armor_stand{invalid_click:1,Enchantments:[{id:"x",lvl:1}],id:2,HideFlags:63,display:{Name:'[{"text":"Starfish","color":"dark_green","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]','[{"text":"Common","color":"green","italic":false}]']},clickable:1}

item replace entity @s enderchest.3 with armor_stand{id:3,HideFlags:63,display:{Name:'[{"text":"Running","color":"dark_green","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"green","italic":false}]']},clickable:1}
item replace entity @s[scores={death_animation=3}] enderchest.3 with armor_stand{invalid_click:1,Enchantments:[{id:"x",lvl:1}],id:3,HideFlags:63,display:{Name:'[{"text":"Running","color":"dark_green","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]','[{"text":"Common","color":"green","italic":false}]']},clickable:1}

item replace entity @s enderchest.4 with armor_stand{id:4,HideFlags:63,display:{Name:'[{"text":"Prideful","color":"dark_green","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"green","italic":false}]']},clickable:1}
item replace entity @s[scores={death_animation=4}] enderchest.4 with armor_stand{invalid_click:1,Enchantments:[{id:"x",lvl:1}],id:4,HideFlags:63,display:{Name:'[{"text":"Prideful","color":"dark_green","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]','[{"text":"Common","color":"green","italic":false}]']},clickable:1}

item replace entity @s enderchest.5 with armor_stand{id:5,HideFlags:63,display:{Name:'[{"text":"Splits","color":"dark_green","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"green","italic":false}]']},clickable:1}
item replace entity @s[scores={death_animation=5}] enderchest.5 with armor_stand{invalid_click:1,Enchantments:[{id:"x",lvl:1}],id:5,HideFlags:63,display:{Name:'[{"text":"Splits","color":"dark_green","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]','[{"text":"Common","color":"green","italic":false}]']},clickable:1}

item replace entity @s enderchest.6 with armor_stand{id:6,HideFlags:63,display:{Name:'[{"text":"Zombie","color":"dark_green","italic":false,"bold":true}]',Lore:['[{"text":"Common","color":"green","italic":false}]']},clickable:1}
item replace entity @s[scores={death_animation=6}] enderchest.6 with armor_stand{invalid_click:1,Enchantments:[{id:"x",lvl:1}],id:6,HideFlags:63,display:{Name:'[{"text":"Zombie","color":"dark_green","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]','[{"text":"Common","color":"green","italic":false}]']},clickable:1}

item replace entity @s enderchest.7 with iron_bars{invalid_click:1,id:7,HideFlags:63,display:{Name:'[{"text":"T-Pose","color":"dark_purple","italic":false,"bold":true}]',Lore:['[{"text":"Locked","color":"red","italic":false}]','[{"text":"Epic","color":"light_purple","italic":false}]']},clickable:1}
item replace entity @s[tag=unlock_death_7] enderchest.7 with armor_stand{id:7,HideFlags:63,display:{Name:'[{"text":"T-Pose","color":"dark_purple","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"light_purple","italic":false}]']},clickable:1}
item replace entity @s[scores={death_animation=7}] enderchest.7 with armor_stand{invalid_click:1,Enchantments:[{id:"x",lvl:1}],id:7,HideFlags:63,display:{Name:'[{"text":"T-Pose","color":"dark_purple","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]','[{"text":"Epic","color":"light_purple","italic":false}]']},clickable:1}

item replace entity @s enderchest.8 with iron_bars{invalid_click:1,id:8,HideFlags:63,display:{Name:'[{"text":"Dash","color":"dark_purple","italic":false,"bold":true}]',Lore:['[{"text":"Locked","color":"red","italic":false}]','[{"text":"Epic","color":"light_purple","italic":false}]']},clickable:1}
item replace entity @s[tag=unlock_death_8] enderchest.8 with armor_stand{id:8,HideFlags:63,display:{Name:'[{"text":"Dash","color":"dark_purple","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"light_purple","italic":false}]']},clickable:1}
item replace entity @s[scores={death_animation=8}] enderchest.8 with armor_stand{invalid_click:1,Enchantments:[{id:"x",lvl:1}],id:8,HideFlags:63,display:{Name:'[{"text":"Dash","color":"dark_purple","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]','[{"text":"Epic","color":"light_purple","italic":false}]']},clickable:1}

item replace entity @s enderchest.12 with iron_bars{invalid_click:1,id:9,HideFlags:63,display:{Name:'[{"text":"Crying","color":"dark_purple","italic":false,"bold":true}]',Lore:['[{"text":"Locked","color":"red","italic":false}]','[{"text":"Epic","color":"light_purple","italic":false}]']},clickable:1}
item replace entity @s[tag=unlock_death_9] enderchest.12 with armor_stand{id:9,HideFlags:63,display:{Name:'[{"text":"Crying","color":"dark_purple","italic":false,"bold":true}]',Lore:['[{"text":"Epic","color":"light_purple","italic":false}]']},clickable:1}
item replace entity @s[scores={death_animation=9}] enderchest.12 with armor_stand{invalid_click:1,Enchantments:[{id:"x",lvl:1}],id:9,HideFlags:63,display:{Name:'[{"text":"Crying","color":"dark_purple","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]','[{"text":"Epic","color":"light_purple","italic":false}]']},clickable:1}

item replace entity @s enderchest.13 with iron_bars{invalid_click:1,id:10,HideFlags:63,display:{Name:'[{"text":"Dabbing","color":"gold","italic":false,"bold":true}]',Lore:['[{"text":"Locked","color":"red","italic":false}]','[{"text":"LEGENDARY","color":"yellow","italic":false}]']},clickable:1}
item replace entity @s[tag=unlock_death_10] enderchest.13 with armor_stand{id:10,HideFlags:63,display:{Name:'[{"text":"Dabbing","color":"gold","italic":false,"bold":true}]',Lore:['[{"text":"LEGENDARY","color":"yellow","italic":false}]']},clickable:1}
item replace entity @s[scores={death_animation=10}] enderchest.13 with armor_stand{invalid_click:1,Enchantments:[{id:"x",lvl:1}],id:10,HideFlags:63,display:{Name:'[{"text":"Dabbing","color":"gold","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]','[{"text":"LEGENDARY","color":"yellow","italic":false}]']},clickable:1}

item replace entity @s enderchest.14 with iron_bars{invalid_click:1,id:11,HideFlags:63,display:{Name:'[{"text":"Small","color":"gold","italic":false,"bold":true}]',Lore:['[{"text":"Locked","color":"red","italic":false}]','[{"text":"LEGENDARY","color":"yellow","italic":false}]']},clickable:1}
item replace entity @s[tag=unlock_death_11] enderchest.14 with armor_stand{id:11,HideFlags:63,display:{Name:'[{"text":"Small","color":"gold","italic":false,"bold":true}]',Lore:['[{"text":"LEGENDARY","color":"yellow","italic":false}]']},clickable:1}
item replace entity @s[scores={death_animation=11}] enderchest.14 with armor_stand{invalid_click:1,Enchantments:[{id:"x",lvl:1}],id:11,HideFlags:63,display:{Name:'[{"text":"Small","color":"gold","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]','[{"text":"LEGENDARY","color":"yellow","italic":false}]']},clickable:1}

##Back button
item replace entity @s enderchest.18 with barrier{clickable:1,HideFlags:63,display:{Name:'[{"text":"Back","bold":true,"italic":false,"color":"#ed1000"}]'}}


