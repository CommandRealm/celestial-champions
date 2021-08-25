##Starting the cosmetics screen

##Clear Function
function lobby:chest_menu/clear_chest

##Setting screen
scoreboard players set @s screen 11




replaceitem entity @s enderchest.11 iron_bars{invalid_click:1,id:1,HideFlags:63,display:{Name:'[{"text":"Exclusive Prefix","color":"white","italic":false,"bold":true}]',Lore:['[{"text":"Locked","color":"red","italic":false}]','[{"text":"Complete advancements to unlock.","color":"gray","italic":false}]']},clickable:1}
replaceitem entity @s[advancements={advancements:custom/all_lobby=true}] enderchest.11 name_tag{id:1,HideFlags:63,display:{Name:'[{"text":"Exclusive Prefix","color":"white","italic":false,"bold":true}]' },clickable:1}
replaceitem entity @s[tag=explorer] enderchest.11 name_tag{Enchantments:[{id:"x",lvl:1}],id:1,HideFlags:63,display:{Name:'[{"text":"Exclusive Prefix","color":"white","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]']},clickable:1}

replaceitem entity @s enderchest.13 iron_bars{invalid_click:1,id:2,HideFlags:63,display:{Name:'[{"text":"Exclusive Death Pose","color":"#ff0000","italic":false,"bold":true}]',Lore:['[{"text":"Locked","color":"red","italic":false}]','[{"text":"Complete advancements to unlock.","color":"gray","italic":false}]']},clickable:1}
replaceitem entity @s[advancements={advancements:custom/all_kills=true}] enderchest.13 beacon{id:2,HideFlags:63,display:{Name:'[{"text":"Exclusive Death Pose","color":"#ff0000","italic":false,"bold":true}]' },clickable:1}
replaceitem entity @s[scores={death_animation=12}] enderchest.13 beacon{Enchantments:[{id:"x",lvl:1}],id:2,HideFlags:63,display:{Name:'[{"text":"Exclusive Death Pose","color":"#ff0000","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]']},clickable:1}

replaceitem entity @s enderchest.15 iron_bars{invalid_click:1,id:3,HideFlags:63,display:{Name:'[{"text":"Exclusive Celebration","color":"aqua","italic":false,"bold":true}]',Lore:['[{"text":"Locked","color":"red","italic":false}]','[{"text":"Complete advancements to unlock.","color":"gray","italic":false}]']},clickable:1}
replaceitem entity @s[advancements={advancements:custom/all_games=true}] enderchest.15 blaze_rod{id:3,HideFlags:63,display:{Name:'[{"text":"Exclusive Celebration","color":"aqua","italic":false,"bold":true}]' },clickable:1}
replaceitem entity @s[scores={celebration=18}] enderchest.15 blaze_rod{Enchantments:[{id:"x",lvl:1}],id:3,HideFlags:63,display:{Name:'[{"text":"Exclusive Celebration","color":"aqua","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]']},clickable:1}

##Back button
replaceitem entity @s enderchest.18 barrier{clickable:1,HideFlags:63,display:{Name:'[{"text":"Back","bold":true,"italic":false,"color":"#ed1000"}]'}}



