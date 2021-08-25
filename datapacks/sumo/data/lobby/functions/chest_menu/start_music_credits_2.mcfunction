##Starting the music credits 2 screen

##Clear Function
function lobby:chest_menu/clear_chest

##Setting screen
scoreboard players set @s screen 4




replaceitem entity @s enderchest.0 music_disc_chirp{track:26,clickable:1,HideFlags:63,display:{Name:'[{"text":"Mechanical Dusk","bold":true,"italic":false,"color":"aqua"}]',Lore:['[{"text":"By ","color":"gray","italic":false},{"text":"TeknoAXE","color":"white","italic":false}]','[{"text":"Click for more details.","color":"gray","italic":false}]']}}
replaceitem entity @s enderchest.1 music_disc_wait{track:27,clickable:1,HideFlags:63,display:{Name:'[{"text":"New Groove","bold":true,"italic":false,"color":"aqua"}]',Lore:['[{"text":"By ","color":"gray","italic":false},{"text":"TeknoAXE","color":"white","italic":false}]','[{"text":"Click for more details.","color":"gray","italic":false}]']}}
replaceitem entity @s enderchest.2 music_disc_13{track:28,clickable:1,HideFlags:63,display:{Name:'[{"text":"The Next Sunset","bold":true,"italic":false,"color":"aqua"}]',Lore:['[{"text":"By ","color":"gray","italic":false},{"text":"TeknoAXE","color":"white","italic":false}]','[{"text":"Click for more details.","color":"gray","italic":false}]']}}
replaceitem entity @s enderchest.3 music_disc_wait{track:29,clickable:1,HideFlags:63,display:{Name:'[{"text":"Underwater Lifecycle","bold":true,"italic":false,"color":"aqua"}]',Lore:['[{"text":"By ","color":"gray","italic":false},{"text":"TeknoAXE","color":"white","italic":false}]','[{"text":"Click for more details.","color":"gray","italic":false}]']}}
replaceitem entity @s enderchest.4 music_disc_ward{track:30,clickable:1,HideFlags:63,display:{Name:'[{"text":"Voices of Reason","bold":true,"italic":false,"color":"aqua"}]',Lore:['[{"text":"By ","color":"gray","italic":false},{"text":"TeknoAXE","color":"white","italic":false}]','[{"text":"Click for more details.","color":"gray","italic":false}]']}}
replaceitem entity @s enderchest.5 music_disc_wait{track:31,clickable:1,HideFlags:63,display:{Name:'[{"text":"Waves in the Sky","bold":true,"italic":false,"color":"aqua"}]',Lore:['[{"text":"By ","color":"gray","italic":false},{"text":"TeknoAXE","color":"white","italic":false}]','[{"text":"Click for more details.","color":"gray","italic":false}]']}}
replaceitem entity @s enderchest.6 music_disc_strad{track:32,clickable:1,HideFlags:63,display:{Name:'[{"text":"Buckle Up!","bold":true,"italic":false,"color":"aqua"}]',Lore:['[{"text":"By ","color":"gray","italic":false},{"text":"Vexento","color":"white","italic":false}]','[{"text":"Click for more details.","color":"gray","italic":false}]']}}






##Back button
replaceitem entity @s enderchest.18 barrier{clickable:1,HideFlags:63,display:{Name:'[{"text":"Back","bold":true,"italic":false,"color":"#ed1000"}]'}}