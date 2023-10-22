##Starting the cosmetics screen

##Clear Function
function lobby:chest_menu/clear_chest

##Setting screen
scoreboard players set @s screen 11




item replace entity @s enderchest.11 with iron_bars{invalid_click:1,id:1,HideFlags:63,display:{Name:'[{"text":"Exclusive Prefix","color":"white","italic":false,"bold":true}]',Lore:['[{"text":"Locked","color":"red","italic":false}]','[{"text":"Complete advancements to unlock.","color":"gray","italic":false}]']},clickable:1}
item replace entity @s[advancements={advancements:custom/all_lobby=true}] enderchest.11 with name_tag{id:1,HideFlags:63,display:{Name:'[{"text":"Exclusive Prefix","color":"white","italic":false,"bold":true}]' },clickable:1}
item replace entity @s[scores={prefix=20}] enderchest.11 with name_tag{Enchantments:[{}],id:1,HideFlags:63,display:{Name:'[{"text":"Exclusive Prefix","color":"white","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]']},clickable:1}

item replace entity @s enderchest.13 with iron_bars{invalid_click:1,id:2,HideFlags:63,display:{Name:'[{"text":"Exclusive Death Pose","color":"#ff0000","italic":false,"bold":true}]',Lore:['[{"text":"Locked","color":"red","italic":false}]','[{"text":"Complete advancements to unlock.","color":"gray","italic":false}]']},clickable:1}
item replace entity @s[advancements={advancements:custom/all_kills=true}] enderchest.13 with beacon{id:2,HideFlags:63,display:{Name:'[{"text":"Exclusive Death Pose","color":"#ff0000","italic":false,"bold":true}]' },clickable:1}
item replace entity @s[scores={death_animation=12}] enderchest.13 with beacon{Enchantments:[{}],id:2,HideFlags:63,display:{Name:'[{"text":"Exclusive Death Pose","color":"#ff0000","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]']},clickable:1}

item replace entity @s enderchest.15 with iron_bars{invalid_click:1,id:3,HideFlags:63,display:{Name:'[{"text":"Exclusive Celebration","color":"aqua","italic":false,"bold":true}]',Lore:['[{"text":"Locked","color":"red","italic":false}]','[{"text":"Complete advancements to unlock.","color":"gray","italic":false}]']},clickable:1}
item replace entity @s[advancements={advancements:custom/all_games=true}] enderchest.15 with blaze_rod{id:3,HideFlags:63,display:{Name:'[{"text":"Exclusive Celebration","color":"aqua","italic":false,"bold":true}]' },clickable:1}
item replace entity @s[scores={celebration=18}] enderchest.15 with blaze_rod{Enchantments:[{}],id:3,HideFlags:63,display:{Name:'[{"text":"Exclusive Celebration","color":"aqua","italic":false,"bold":true}]',Lore:['[{"text":"Selected","color":"blue","italic":false}]']},clickable:1}

##Back button
item replace entity @s enderchest.18 with barrier{clickable:1,HideFlags:63,display:{Name:'[{"text":"Back","bold":true,"italic":false,"color":"#ed1000"}]'}}



