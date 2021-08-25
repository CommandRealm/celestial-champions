##Starting the ender chest menu

##Clearing chest

##Clear Function
function lobby:chest_menu/clear_chest

##Setting screen
scoreboard players set @s screen 0


##Middle row
replaceitem entity @s enderchest.9 golden_helmet{clickable:1,HideFlags:63,display:{Name:'[{"text":"Cosmetics","bold":true,"italic":false,"color":"gold"}]'}}

replaceitem entity @s enderchest.11 book{clickable:1,HideFlags:63,display:{Name:'[{"text":"Tutorial","bold":true,"italic":false,"color":"blue"}]'}}

replaceitem entity @s enderchest.13 brewing_stand{clickable:1,HideFlags:63,display:{Name:'[{"text":"Personal ","bold":true,"italic":false,"color":"light_purple"},{"text":"Options","bold":true,"italic":false,"color":"dark_purple"}]'}}

replaceitem entity @s enderchest.15 nether_star{clickable:1,HideFlags:63,display:{Name:'[{"text":"Statistics","bold":true,"italic":false,"color":"green"}]'}}

replaceitem entity @s enderchest.17 command_block{clickable:1,HideFlags:63,display:{Name:'[{"text":"Credits","bold":true,"italic":false,"color":"aqua"}]'}}



##replaceitem entity @s enderchest.13 player_head{CustomModelData:1,clickable:1,random:1,HideFlags:63,display:{Name:'[{"text":"R","color":"#ff0000","bold":true,"italic":false,"italic":false},{"text":"A","color":"#ff7f00","bold":true,"italic":false},{"text":"N","color":"#ffff00","bold":true,"italic":false},{"text":"D","color":"#00FF00","bold":true,"italic":false},{"text":"O","color":"#0000ff","bold":true,"italic":false},{"text":"M","color":"#8b00ff","bold":true,"italic":false}]',Lore:['[{"text":"Click to select random.","color":"gray","italic":false}]','[{"text":"Your fighter will be randomized","color":"gray","italic":false}]','[{"text":"at the start of every game.","color":"gray","italic":false}]']},SkullOwner:{Id:[I;682268746,544686284,-1914182079,-1376598889],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDZiYTYzMzQ0ZjQ5ZGQxYzRmNTQ4OGU5MjZiZjNkOWUyYjI5OTE2YTZjNTBkNjEwYmI0MGE1MjczZGM4YzgyIn19fQ=="}]}}}

