##Starting the credits screen

##Clear Function
function lobby:chest_menu/clear_chest

##Setting screen
scoreboard players set @s screen 4


item replace entity @s enderchest.0 with player_head{HideFlags:63,display:{Name:'[{"text":"FalconReign","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"{","color":"dark_purple","bold":true,"italic":false},{"text":"Project Lead","bold":false},{"text":"}","bold":true}]']},clickable:1,invalid_click:1,SkullOwner:{Id:[I;-1995294976,-1868280184,-1647111206,-1425978292],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmIyOWE0NTc4ZjZmY2RjN2RjMGM0ZTc3NmMyOTMxMjJkODFkZGI2NTE4Y2NlZTUyOTAxN2UyNDZjMDI0YjY3YyJ9fX0="}]}}}
item replace entity @s enderchest.1 with player_head{HideFlags:63,display:{Name:'[{"text":"Connop","color":"yellow","italic":false,"bold":true}]',Lore:['{"text":"{Sr. Builder}","color":"dark_blue","italic":false}']},clickable:1,invalid_click:1,SkullOwner:{Id:[I;1508923483,-548451571,-1134652024,2114694725],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGJiZWM2ZjZmYTJkOGJlZmM5YjlmYTI3YmIzMWFhNzU0MjAzYmE4NTRiYWY5ZGU5MzQzNGFiZGUyOGM0YzBlYyJ9fX0="}]}}}

item replace entity @s enderchest.2 with player_head{HideFlags:63,display:{Name:'[{"text":"EdLePug","color":"yellow","italic":false,"bold":true}]',Lore:['{"text":"{Sr. Builder}","color":"dark_blue","italic":false}']},clickable:1,invalid_click:1,SkullOwner:{Id:[I;-1658821394,-1890562293,-1380313952,1768102204],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGU5ZTk4YTY2YTA2MDdjYTRhNjMwYmI5YTZhMDg0ZmJkMjFlOGQ3MTQ0ODYxY2U5MTY0YjA5NTBhYjcwODk1NiJ9fX0="}]}}}
item replace entity @s enderchest.3 with player_head{HideFlags:63,display:{Name:'[{"text":"CheckMC","color":"yellow","italic":false,"bold":true}]',Lore:['{"text":"{Sr. Builder}","color":"dark_blue","italic":false}']},clickable:1,invalid_click:1,SkullOwner:{Id:[I;-891599915,-1244968554,-2078326251,-1018777044],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2IxN2UwOWJjY2Q1ZDQ1ZTBmNWExMTNkNTc2NzZiNDA0Y2FjZWYwNWNjMjA3OTVjZTY0MjA3ZGY4ZDEwNjFjNCJ9fX0="}]}}}
item replace entity @s enderchest.4 with player_head{HideFlags:63,display:{Name:'[{"text":"Calverin","color":"yellow","italic":false,"bold":true}]',Lore:['{"text":"{Sr. Builder}","color":"dark_blue","italic":false}']},clickable:1,invalid_click:1,SkullOwner:{Id:[I;-1133937096,1368540674,-1820699096,312346006],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTIwZGI5YzFiNDg1YjZhNDE0ZWU4MGFkY2RjNWFlYTkzMjhiMzYyZTJlNjExOWQ0MDVmYTQyNzQ1MGUxMzQ4ZCJ9fX0="}]}}}
item replace entity @s enderchest.5 with player_head{HideFlags:63,display:{Name:'[{"text":"ImAHumanISwear","color":"yellow","italic":false,"bold":true}]',Lore:['{"text":"{Sr. Builder}","color":"dark_blue","italic":false}']},clickable:1,invalid_click:1,SkullOwner:{Id:[I;-830569346,-1935651016,-1925335277,1819436873],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWQyZTY2NzljMTVhMTUxMDQ1ZjY1ZDY0MzE4MGE4OTdiNmY1MjFiNTJlMjE2MzA0YTgxYjMxNWM3NWEzYWFiYiJ9fX0="}]}}}
item replace entity @s enderchest.6 with player_head{HideFlags:63,display:{Name:'[{"text":"Bagee","color":"yellow","italic":false,"bold":true}]',Lore:['{"text":"{Sr. Builder}","color":"dark_blue","italic":false}']},clickable:1,invalid_click:1,SkullOwner:{Id:[I;-1714503170,1548241452,-1196892435,2121096794],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzRhNTE4ODFlMjRlYzliMDIzN2FmZTRiZmI4NGJmNjMxNmJmZTNkOGM0Y2NkZGU0ZGNjN2I3NTZkOGY3NjA0ZSJ9fX0="}]}}}
item replace entity @s enderchest.7 with player_head{HideFlags:63,display:{Name:'[{"text":"Focii_","color":"yellow","italic":false,"bold":true}]',Lore:['{"text":"{Sr. Artist}","color":"dark_green","italic":false}']},clickable:1,invalid_click:1,SkullOwner:{Id:[I;-352467240,743589002,-1972262180,-114155790],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2Q4NDZiZThkMzM1YjVlMzU1ZGRkNDdlMzFlNmFlNTJjNGNlNjA4NzNlZGVjYWVlNWVlOTBiYmRiZTc4M2FhMCJ9fX0="}]}}}
item replace entity @s enderchest.8 with player_head{HideFlags:63,display:{Name:'[{"text":"TheRegularMex","color":"yellow","italic":false,"bold":true}]',Lore:['{"text":"{Sr. Artist}","color":"dark_green","italic":false}']},clickable:1,invalid_click:1,SkullOwner:{Id:[I;-88748071,-1657519056,-1539642835,-880500696],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODFmOTVhMjBhMTY3MTlkMzMwMmIxZDJmNmFlYmRkZWNkYTUzYjI0Nzg1NWQyMTkwYzNjOTNkZjcwMzA1YmEyNSJ9fX0="}]}}}

item replace entity @s enderchest.9 with player_head{HideFlags:63,display:{Name:'[{"text":"Captonium","color":"yellow","italic":false,"bold":true}]',Lore:['{"text":"{Builder}","color":"blue","italic":false}']},clickable:1,invalid_click:1,SkullOwner:{Id:[I;296893790,-569357200,-2001123684,-1826694826],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODFkODI1YTZmNWRlZTJkODg0OWNiZmQ4OTcxODc5MTk2YjdkZjBjMzZmNGUzZDI5N2U3MDY0NTM1NzZjYzRkZiJ9fX0="}]}}}

item replace entity @s enderchest.10 with player_head{HideFlags:63,display:{Name:'[{"text":"ChipChase","color":"yellow","italic":false,"bold":true}]',Lore:['{"text":"{Builder}","color":"blue","italic":false}']},clickable:1,invalid_click:1,SkullOwner:{Id:[I;-970627315,-833597858,-1572947603,-1524981472],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzAyYjBiN2U1ZWVmZGVmOTUxYWIyZDczMTk4NzkwMTM1YWNkOGU2Yzc2OTc1Y2I0ZmUyMGNjNThiMGYwYzJjMiJ9fX0="}]}}}

item replace entity @s enderchest.11 with player_head{HideFlags:63,display:{Name:'[{"text":"Bodi25","color":"yellow","italic":false,"bold":true}]',Lore:['{"text":"{Builder}","color":"blue","italic":false}']},clickable:1,invalid_click:1,SkullOwner:{Id:[I;169640239,2007321022,-1355725857,-1639316280],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTgxNjcwNGQ0MjcxMzc5NjYxN2YxMTg3MWM5ODI0NDFjMDVkZjc3YmU0NmU2YjM2NzEyYzBjZWQ2NTg1MmZkYyJ9fX0="}]}}}
item replace entity @s enderchest.12 with player_head{HideFlags:63,display:{Name:'[{"text":"TheRangerMark","color":"yellow","italic":false,"bold":true}]',Lore:['{"text":"{Builder}","color":"blue","italic":false}']},clickable:1,invalid_click:1,SkullOwner:{Id:[I;1606142799,-843431523,-1097883552,-1801487939],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWUwNGUwOGJhZjkyNjVhOWRmNWVmYmI4ZGU3M2RjN2RmMzhiMDIyMzljODk1ZWJiMDkyOTNjMTJhNzQ0Y2I1ZCJ9fX0="}]}}}

item replace entity @s enderchest.13 with player_head{HideFlags:63,display:{Name:'[{"text":"Beybwug","color":"yellow","italic":false,"bold":true}]',Lore:['{"text":"[Builder]","color":"blue","italic":false}']},clickable:1,invalid_click:1,SkullOwner:{Id:[I;1568105235,961627929,-1826957506,606059459],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2Y5NzcxMDVlNzFkMTE3ZWZlNjE1ODU0NzYxMDEzNDlhOTBiOTZmN2E4ZGM5NGE3OGViM2EwOGQ1Y2ZjYTg4ZCJ9fX0="}]}}}


item replace entity @s enderchest.14 with player_head{HideFlags:63,display:{Name:'[{"text":"sac11221","color":"yellow","italic":false,"bold":true}]',Lore:['{"text":"[Helper]","color":"dark_aqua","italic":false}']},clickable:1,invalid_click:1,SkullOwner:{Id:[I;1065943382,855459209,-2008216832,-1163799330],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGRlZjQ0ZjBhODhlZmIxZmY1NDljNDJhOWYzM2I5YWYyOWM3MWRjNjViMmE5OTNhYWU4OGI4MWY1N2Q5ZTMyMyJ9fX0="}]}}}

item replace entity @s enderchest.15 with player_head{HideFlags:63,display:{Name:'[{"text":"GlytchIsYes","color":"yellow","italic":false,"bold":true}]',Lore:['{"text":"[Helper]","color":"dark_aqua","italic":false}']},clickable:1,invalid_click:1,SkullOwner:{Id:[I;-570505202,-1808645547,-1923586698,337602541],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGIxMTA3ZmIwNGRjYmQwMzRmY2I5OWZiZDMwOGM2NDllYTcwMTJiNDdmMTU2ZDU5MGM4OTUwNzU4NDYxMTM3OCJ9fX0="}]}}}
item replace entity @s enderchest.16 with player_head{HideFlags:63,display:{Name:'[{"text":"II_Owen_II","color":"yellow","italic":false,"bold":true}]',Lore:['{"text":"[Helper]","color":"dark_aqua","italic":false}']},clickable:1,invalid_click:1,SkullOwner:{Id:[I;-1341010296,-841331660,-2013570357,-1776315864],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODBlYmE2YzM1ODc5MDUzZmRiMGUwMTgzMGU5YzVlYzdkZTc5YTg2NjMwNDFhMzM5ZDU5NjNkZTg0ZmYyODRkOCJ9fX0="}]}}}
item replace entity @s enderchest.17 with player_head{HideFlags:63,display:{Name:'[{"text":"J70","color":"yellow","italic":false,"bold":true}]',Lore:['{"text":"[Helper]","color":"dark_aqua","italic":false}']},clickable:1,invalid_click:1,SkullOwner:{Id:[I;1090499441,69290150,-1945257127,302499700],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTI4ZDFiOTM3MjU4MmE2NjcxODkwYzE1NDFjMDk3Nzc2ZTZhNDZkZTE3NDM0OTNkM2NmMzU1MzhhNWZmOGFiMiJ9fX0="}]}}}
item replace entity @s enderchest.19 with player_head{HideFlags:63,display:{Name:'[{"text":"SmallDeemo","color":"yellow","italic":false,"bold":true}]',Lore:['{"text":"[Helper]","color":"dark_aqua","italic":false}']},clickable:1,invalid_click:1,SkullOwner:{Id:[I;1880381922,124341920,-1995255335,-1384185846],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTA5Y2NiM2U5YWNiZWE5NzI0ZjNhNjMzZTFmNWViMWYwOTU5MmJhYzQ0YTZhZWU3YTA5ODM1MWViNjU5ZWJmZSJ9fX0="}]}}}



item replace entity @s enderchest.26 with book{HideFlags:63,display:{Name:'[{"text":"Thanks to all the testers!","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Click to receive a message","color":"gray","italic":true}]','[{"text":"showing the playtesters.","color":"gray","italic":true}]']},clickable:1}


##Back button
item replace entity @s enderchest.18 with barrier{clickable:1,HideFlags:63,display:{Name:'[{"text":"Back","bold":true,"italic":false,"color":"#ed1000"}]'}}


