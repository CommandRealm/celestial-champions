##Starting the ender chest menu

##Clearing chest

##Clear Function
function lobby:chest_menu/clear_chest

##Setting screen
scoreboard players set @s screen 0


##Middle row
item replace entity @s enderchest.9 with golden_helmet{clickable:1,HideFlags:63,display:{Name:'[{"text":"Cosmetics","bold":true,"italic":false,"color":"gold"}]'}}

item replace entity @s enderchest.11 with book{clickable:1,HideFlags:63,display:{Name:'[{"text":"Tutorial","bold":true,"italic":false,"color":"blue"}]'}}

item replace entity @s enderchest.13 with brewing_stand{clickable:1,HideFlags:63,display:{Name:'[{"text":"Personal ","bold":true,"italic":false,"color":"light_purple"},{"text":"Options","bold":true,"italic":false,"color":"dark_purple"}]'}}

item replace entity @s enderchest.15 with nether_star{clickable:1,HideFlags:63,display:{Name:'[{"text":"Statistics","bold":true,"italic":false,"color":"green"}]'}}

item replace entity @s enderchest.17 with command_block{clickable:1,HideFlags:63,display:{Name:'[{"text":"Credits","bold":true,"italic":false,"color":"aqua"}]'}}



##item replace entity @s enderchest.13 with player_head{CustomModelData:1,clickable:1,random:1,HideFlags:63,display:{Name:'[{"text":"R","color":"#ff0000","bold":true,"italic":false,"italic":false},{"text":"A","color":"#ff7f00","bold":true,"italic":false},{"text":"N","color":"#ffff00","bold":true,"italic":false},{"text":"D","color":"#00FF00","bold":true,"italic":false},{"text":"O","color":"#0000ff","bold":true,"italic":false},{"text":"M","color":"#8b00ff","bold":true,"italic":false}]',Lore:['[{"text":"Click to select random.","color":"gray","italic":false}]','[{"text":"Your fighter will be randomized","color":"gray","italic":false}]','[{"text":"at the start of every game.","color":"gray","italic":false}]']},SkullOwner:{Id:[I;682268746,544686284,-1914182079,-1376598889],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDZiYTYzMzQ0ZjQ5ZGQxYzRmNTQ4OGU5MjZiZjNkOWUyYjI5OTE2YTZjNTBkNjEwYmI0MGE1MjczZGM4YzgyIn19fQ=="}]}}}

execute unless entity @s[tag=!has_test,tag=!has_help,tag=!has_bld,tag=!has_srbld,tag=!has_prg,tag=!has_srprg,tag=!has_manager,tag=!has_lead,tag=!has_pc,tag=!has_cr,tag=!has_art,tag=!has_srart] run item replace entity @s enderchest.26 with written_book{clickable:1,HideFlags:63,display:{Name:'[{"text":"Titles","bold":true,"italic":false,"color":"white"}]'}}
