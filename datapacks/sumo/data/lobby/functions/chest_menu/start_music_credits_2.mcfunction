##Starting the music credits 2 screen

##Clear Function
function lobby:chest_menu/clear_chest

##Setting screen
scoreboard players set @s screen 4




item replace entity @s enderchest.0 with music_disc_chirp{track:26,clickable:1,HideFlags:63,display:{Name:'[{"translate":"Mechanical Dusk","bold":true,"italic":false,"color":"aqua"}]',Lore:['[{"translate":"By ","color":"gray","italic":false},{"translate":"TeknoAXE","color":"white","italic":false}]','[{"translate":"Click for more details.","color":"gray","italic":false}]']}}
item replace entity @s enderchest.1 with music_disc_wait{track:27,clickable:1,HideFlags:63,display:{Name:'[{"translate":"New Groove","bold":true,"italic":false,"color":"aqua"}]',Lore:['[{"translate":"By ","color":"gray","italic":false},{"translate":"TeknoAXE","color":"white","italic":false}]','[{"translate":"Click for more details.","color":"gray","italic":false}]']}}
item replace entity @s enderchest.2 with music_disc_13{track:28,clickable:1,HideFlags:63,display:{Name:'[{"translate":"The Next Sunset","bold":true,"italic":false,"color":"aqua"}]',Lore:['[{"translate":"By ","color":"gray","italic":false},{"translate":"TeknoAXE","color":"white","italic":false}]','[{"translate":"Click for more details.","color":"gray","italic":false}]']}}
item replace entity @s enderchest.3 with music_disc_wait{track:29,clickable:1,HideFlags:63,display:{Name:'[{"translate":"Underwater Lifecycle","bold":true,"italic":false,"color":"aqua"}]',Lore:['[{"translate":"By ","color":"gray","italic":false},{"translate":"TeknoAXE","color":"white","italic":false}]','[{"translate":"Click for more details.","color":"gray","italic":false}]']}}
item replace entity @s enderchest.4 with music_disc_ward{track:30,clickable:1,HideFlags:63,display:{Name:'[{"translate":"Voices of Reason","bold":true,"italic":false,"color":"aqua"}]',Lore:['[{"translate":"By ","color":"gray","italic":false},{"translate":"TeknoAXE","color":"white","italic":false}]','[{"translate":"Click for more details.","color":"gray","italic":false}]']}}
item replace entity @s enderchest.5 with music_disc_wait{track:31,clickable:1,HideFlags:63,display:{Name:'[{"translate":"Waves in the Sky","bold":true,"italic":false,"color":"aqua"}]',Lore:['[{"translate":"By ","color":"gray","italic":false},{"translate":"TeknoAXE","color":"white","italic":false}]','[{"translate":"Click for more details.","color":"gray","italic":false}]']}}
item replace entity @s enderchest.6 with music_disc_strad{track:32,clickable:1,HideFlags:63,display:{Name:'[{"translate":"Buckle Up!","bold":true,"italic":false,"color":"aqua"}]',Lore:['[{"translate":"By ","color":"gray","italic":false},{"translate":"Vexento","color":"white","italic":false}]','[{"translate":"Click for more details.","color":"gray","italic":false}]']}}






##Back button
item replace entity @s enderchest.18 with barrier{clickable:1,HideFlags:63,display:{Name:'[{"translate":"Back","bold":true,"italic":false,"color":"#ed1000"}]'}}