##Starting the credits screen

##Clear Function
function lobby:chest_menu/clear_chest

##Setting screen
scoreboard players set @s screen 2



##Middle row
replaceitem entity @s enderchest.0 player_head{clickable:1,invalid_click:1,HideFlags:63,display:{Name:'[{"text":"minecraft-heads.com","bold":true,"italic":false,"color":"yellow"}]',Lore:['[{"text":" - Custom player heads.","color":"gray","italic":false}]']},SkullOwner:{Id:[I;866667617,641484425,-1507050624,1155661645],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDVjNmRjMmJiZjUxYzM2Y2ZjNzcxNDU4NWE2YTU2ODNlZjJiMTRkNDdkOGZmNzE0NjU0YTg5M2Y1ZGE2MjIifX19"}]}}}

replaceitem entity @s enderchest.1 armor_stand{clickable:1,invalid_click:1,HideFlags:63,display:{Name:'[{"text":"vanillatweaks.net","bold":true,"italic":false,"color":"yellow"}]',Lore:['[{"text":" - Armor stand posing.","color":"gray","italic":false}]']}}

replaceitem entity @s enderchest.2 player_head{clickable:1,invalid_click:1,HideFlags:63,display:{Name:'[{"text":"misode.github.io","bold":true,"italic":false,"color":"yellow"}]',Lore:['[{"text":" - JSON generators.","color":"gray","italic":false}]']},SkullOwner:{Id:[I;-1041338092,-1077851336,-1822542589,-570877326],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDUyZDZlMmZkZWVhMjkzMTQ5ZDY3NzQ4YmQwNTcxMjY3Yjg2M2YyYTU2NWE3ZDZhMTc4MGYxMjY1ZmIzNjBkMyJ9fX0="}]}}}

replaceitem entity @s enderchest.3 blue_concrete{clickable:1,invalid_click:1,HideFlags:63,display:{Name:'[{"text":"blockbench.net","bold":true,"italic":false,"color":"yellow"}]',Lore:['[{"text":" - Resource pack modeling","color":"gray","italic":false}]']}}

replaceitem entity @s enderchest.4 armor_stand{clickable:1,invalid_click:1,HideFlags:63,display:{Name:'[{"text":"haselkern.com","bold":true,"italic":false,"color":"yellow"}]',Lore:['[{"text":" - Armor stand posing.","color":"gray","italic":false}]']}}

replaceitem entity @s enderchest.5 player_head{clickable:1,invalid_click:1,HideFlags:63,display:{Name:'[{"text":"Ds43m","bold":true,"italic":false,"color":"yellow"}]',Lore:['[{"text":" - Animated texture help.","color":"gray","italic":false}]']},SkullOwner:{Id:[I;1807653301,1412319512,-1612626780,28263855],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWRlOGY0ZTMyODI2MjliZGI3NDk3NGI3ODk4YzA2MWUwN2RiOWRhZDg4OWMzMjZjNmI2NmE1MTVjZWU4Nzg1MyJ9fX0="}]}}}


##Back button
replaceitem entity @s enderchest.18 barrier{clickable:1,HideFlags:63,display:{Name:'[{"text":"Back","bold":true,"italic":false,"color":"#ed1000"}]'}}