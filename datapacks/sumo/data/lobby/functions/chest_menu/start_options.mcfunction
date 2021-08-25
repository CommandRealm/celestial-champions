##Starting the credits screen

##Clearing chest

##Clear Function
function lobby:chest_menu/clear_chest

##Setting screen
scoreboard players set @s screen 6


##Middle row
replaceitem entity @s enderchest.9 iron_sword{clickable:1,HideFlags:63,display:{Name:'[{"text":"Hotbar ","italic":false,"color":"red","bold":true},{"text":"Orientation","italic":false,"color":"dark_red"}]',Lore:['[{"text":"The way the items","color":"gray","italic":false}]','[{"text":"appear in your inventory.","color":"gray","italic":false}]']}}

replaceitem entity @s enderchest.11 ender_pearl{clickable:1,HideFlags:63,display:{Name:'[{"text":"Action ","italic":false,"color":"#ff7f00","bold":true},{"text":"Bar ","italic":false,"color":"#ffbe00","bold":true},{"text":"Symbols: ","italic":false,"color":"#ffff00","bold":true},{"text":"Off","color":"dark_red","bold":false,"italic":false}]',Lore:['[{"text":"Displays your action bar","color":"gray","italic":false}]','[{"text":"text as symbols","color":"gray","italic":false}]','[{"text":"instead of words.","color":"gray","italic":false}]']}}
replaceitem entity @s[tag=action_bar_symbols] enderchest.11 ender_eye{clickable:1,HideFlags:63,display:{Name:'[{"text":"Action ","italic":false,"color":"#ff7f00","bold":true},{"text":"Bar ","italic":false,"color":"#ffbe00","bold":true},{"text":"Symbols: ","italic":false,"color":"#ffff00","bold":true},{"text":"On","color":"dark_green","bold":false,"italic":false}]',Lore:['[{"text":"Displays your action bar","color":"gray","italic":false}]','[{"text":"text as symbols","color":"gray","italic":false}]','[{"text":"instead of words.","color":"gray","italic":false}]']}}


replaceitem entity @s enderchest.13 netherite_pickaxe{clickable:1,HideFlags:63,display:{Name:'[{"text":"Maximum ","bold":true,"color":"#c600ff","italic":false},{"text":"Lives ","bold":true,"color":"#db5cff"},{"text":"Handicap: ","italic":false,"color":"#edadff","bold":true},{"text":"None","bold":false,"italic":false,"color":"#f9e6ff"}]',Lore:['[{"text":"The Maximum amount of lives","color":"gray","italic":false}]','[{"text":"you, and only you, start with.","color":"gray","italic":false}]','[{"text":"(Only applies to \\"Rounds Mode.\\")","color":"gray","italic":false}]']}}
replaceitem entity @s[scores={handicap=3}] enderchest.13 iron_pickaxe{clickable:1,HideFlags:63,display:{Name:'[{"text":"Maximum ","bold":true,"color":"#c600ff","italic":false},{"text":"Lives ","bold":true,"color":"#db5cff"},{"text":"Handicap: ","italic":false,"color":"#edadff","bold":true},{"text":"3","bold":false,"italic":false,"color":"#f9e6ff"}]',Lore:['[{"text":"The Maximum amount of lives","color":"gray","italic":false}]','[{"text":"you, and only you, start with.","color":"gray","italic":false}]','[{"text":"(Only applies to \\"Rounds Mode.\\")","color":"gray","italic":false}]']}}
replaceitem entity @s[scores={handicap=2}] enderchest.13 wooden_pickaxe{clickable:1,HideFlags:63,display:{Name:'[{"text":"Maximum ","bold":true,"color":"#c600ff","italic":false},{"text":"Lives ","bold":true,"color":"#db5cff"},{"text":"Handicap: ","italic":false,"color":"#edadff","bold":true},{"text":"2","bold":false,"italic":false,"color":"#f9e6ff"}]',Lore:['[{"text":"The Maximum amount of lives","color":"gray","italic":false}]','[{"text":"you, and only you, start with.","color":"gray","italic":false}]','[{"text":"(Only applies to \\"Rounds Mode.\\")","color":"gray","italic":false}]']}}
replaceitem entity @s[scores={handicap=1}] enderchest.13 stick{clickable:1,HideFlags:63,display:{Name:'[{"text":"Maximum ","bold":true,"color":"#c600ff","italic":false},{"text":"Lives ","bold":true,"color":"#db5cff"},{"text":"Handicap: ","italic":false,"color":"#edadff","bold":true},{"text":"1","bold":false,"italic":false,"color":"#f9e6ff"}]',Lore:['[{"text":"The Maximum amount of lives","color":"gray","italic":false}]','[{"text":"you, and only you, start with.","color":"gray","italic":false}]','[{"text":"(Only applies to \\"Rounds Mode.\\")","color":"gray","italic":false}]']}}

replaceitem entity @s enderchest.15 soul_torch{clickable:1,HideFlags:63,display:{Name:'[{"text":"Ability ","italic":false,"color":"#007fff","bold":true},{"text":"Messages: ","italic":false,"color":"#00ffff","bold":true},{"text":"On","color":"dark_green","bold":false,"italic":false}]',Lore:['[{"text":"Messages you receive","color":"gray","italic":false}]','[{"text":"when using your abilities.","color":"gray","italic":false}]']}}
replaceitem entity @s[tag=no_ability_msg] enderchest.15 torch{clickable:1,HideFlags:63,display:{Name:'[{"text":"Ability ","italic":false,"color":"#007fff","bold":true},{"text":"Messages: ","italic":false,"color":"#00ffff","bold":true},{"text":"Off","color":"dark_red","bold":false,"italic":false}]',Lore:['[{"text":"Messages you receive","color":"gray","italic":false}]','[{"text":"when using your abilities.","color":"gray","italic":false}]']}}


replaceitem entity @s enderchest.17 music_disc_cat{clickable:1,HideFlags:63,display:{Name:'[{"text":"Music ","italic":false,"color":"gray","bold":true},{"text":"Messages: ","italic":false,"color":"white","bold":true},{"text":"On","color":"dark_green","bold":false,"italic":false}]',Lore:['[{"text":"Messages you receive","color":"gray","italic":false}]','[{"text":"when a new song begins.","color":"gray","italic":false}]']}}
replaceitem entity @s[tag=no_music_msg] enderchest.17 music_disc_stal{clickable:1,HideFlags:63,display:{Name:'[{"text":"Music ","italic":false,"color":"gray","bold":true},{"text":"Messages: ","italic":false,"color":"white","bold":true},{"text":"Off","color":"dark_red","bold":false,"italic":false}]',Lore:['[{"text":"Messages you receive","color":"gray","italic":false}]','[{"text":"when a new song begins.","color":"gray","italic":false}]']}}

##Back button
replaceitem entity @s enderchest.18 barrier{clickable:1,HideFlags:63,display:{Name:'[{"text":"Back","bold":true,"italic":false,"color":"#ed1000"}]'}}