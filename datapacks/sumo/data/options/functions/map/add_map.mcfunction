setblock 7 64 22 air
playsound minecraft:ui.button.click master @s
scoreboard players add $map settings 1
#if secret map is off
execute if score $secret_map settings matches 0 if score $map settings matches 44.. run scoreboard players set $map settings -3
execute if score $secret_map settings matches 0 if score $map settings matches ..-4 run scoreboard players set $map settings 43

##if secret map is on
execute if score $secret_map settings matches 1 if score $map settings matches 45.. run scoreboard players set $map settings -3
execute if score $secret_map settings matches 1 if score $map settings matches ..-4 run scoreboard players set $map settings 44

execute if score $map settings matches -3 run setblock 7 64 22 oak_wall_sign[facing=west]{Text1:'{"text":"Map:","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Random","color":"gold","bold":false}',Text3:'{"text":"Auto","color":"white"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:map/click_map"}}'}
execute if score $map settings matches -2 run setblock 7 64 22 oak_wall_sign[facing=west]{Text1:'{"text":"Map:","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Random","color":"gold","bold":false}',Text3:'{"text":"Small","color":"white"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:map/click_map"}}'}
execute if score $map settings matches -1 run setblock 7 64 22 oak_wall_sign[facing=west]{Text1:'{"text":"Map:","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Random","color":"gold","bold":false}',Text3:'{"text":"Medium","color":"white"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:map/click_map"}}'}
execute if score $map settings matches 0 run setblock 7 64 22 oak_wall_sign[facing=west]{Text1:'{"text":"Map:","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Random","color":"gold","bold":false}',Text3:'{"text":"Large","color":"white"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:map/click_map"}}'}


execute if score $map settings matches 1 run setblock 7 64 22 oak_wall_sign[facing=west]{Text1:'{"text":"Map:","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Overcast","color":"gold","bold":false}',Text3:'{"text":"Small","color":"white"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:map/click_map"}}'}
execute if score $map settings matches 2 run setblock 7 64 22 oak_wall_sign[facing=west]{Text1:'{"text":"Map:","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Dunes","color":"gold","bold":false}',Text3:'{"text":"Small","color":"white"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:map/click_map"}}'}
execute if score $map settings matches 3 run setblock 7 64 22 oak_wall_sign[facing=west]{Text1:'{"text":"Map:","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Canyon","color":"gold","bold":false}',Text3:'{"text":"Small","color":"white"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:map/click_map"}}'}
execute if score $map settings matches 4 run setblock 7 64 22 oak_wall_sign[facing=west]{Text1:'{"text":"Map:","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Seafoam","color":"gold","bold":false}',Text3:'{"text":"Small","color":"white"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:map/click_map"}}'}
execute if score $map settings matches 5 run setblock 7 64 22 oak_wall_sign[facing=west]{Text1:'{"text":"Map:","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Showdown","color":"gold","bold":false}',Text3:'{"text":"Small","color":"white"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:map/click_map"}}'}
execute if score $map settings matches 6 run setblock 7 64 22 oak_wall_sign[facing=west]{Text1:'{"text":"Map:","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Harvest","color":"gold","bold":false}',Text3:'{"text":"Small","color":"white"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:map/click_map"}}'}
execute if score $map settings matches 7 run setblock 7 64 22 oak_wall_sign[facing=west]{Text1:'{"text":"Map:","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Wonderland","color":"gold","bold":false}',Text3:'{"text":"Small","color":"white"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:map/click_map"}}'}
execute if score $map settings matches 8 run setblock 7 64 22 oak_wall_sign[facing=west]{Text1:'{"text":"Map:","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Blossom","color":"gold","bold":false}',Text3:'{"text":"Small","color":"white"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:map/click_map"}}'}
execute if score $map settings matches 9 run setblock 7 64 22 oak_wall_sign[facing=west]{Text1:'{"text":"Map:","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Rings","color":"gold","bold":false}',Text3:'{"text":"Small","color":"white"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:map/click_map"}}'}
execute if score $map settings matches 10 run setblock 7 64 22 oak_wall_sign[facing=west]{Text1:'{"text":"Map:","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Colosseum","color":"gold","bold":false}',Text3:'{"text":"Small","color":"white"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:map/click_map"}}'}
execute if score $map settings matches 11 run setblock 7 64 22 oak_wall_sign[facing=west]{Text1:'{"text":"Map:","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Gameshow","color":"gold","bold":false}',Text3:'{"text":"Small","color":"white"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:map/click_map"}}'}
execute if score $map settings matches 12 run setblock 7 64 22 oak_wall_sign[facing=west]{Text1:'{"text":"Map:","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Celebration","color":"gold","bold":false}',Text3:'{"text":"Small","color":"white"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:map/click_map"}}'}
execute if score $map settings matches 13 run setblock 7 64 22 oak_wall_sign[facing=west]{Text1:'{"text":"Map:","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Monochrome","color":"gold","bold":false}',Text3:'{"text":"Small","color":"white"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:map/click_map"}}'}
execute if score $map settings matches 14 run setblock 7 64 22 oak_wall_sign[facing=west]{Text1:'{"text":"Map:","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Delicacy","color":"gold","bold":false}',Text3:'{"text":"Small","color":"white"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:map/click_map"}}'}

execute if score $map settings matches 15 run setblock 7 64 22 oak_wall_sign[facing=west]{Text1:'{"text":"Map:","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Quarry","color":"gold","bold":false}',Text3:'{"text":"Medium","color":"white"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:map/click_map"}}'}
execute if score $map settings matches 16 run setblock 7 64 22 oak_wall_sign[facing=west]{Text1:'{"text":"Map:","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Blizzard","color":"gold","bold":false}',Text3:'{"text":"Medium","color":"white"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:map/click_map"}}'}
execute if score $map settings matches 17 run setblock 7 64 22 oak_wall_sign[facing=west]{Text1:'{"text":"Map:","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Irrigation","color":"gold","bold":false}',Text3:'{"text":"Medium","color":"white"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:map/click_map"}}'}
execute if score $map settings matches 18 run setblock 7 64 22 oak_wall_sign[facing=west]{Text1:'{"text":"Map:","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Inferno","color":"gold","bold":false}',Text3:'{"text":"Medium","color":"white"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:map/click_map"}}'}
execute if score $map settings matches 19 run setblock 7 64 22 oak_wall_sign[facing=west]{Text1:'{"text":"Map:","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Apocalypse","color":"gold","bold":false}',Text3:'{"text":"Medium","color":"white"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:map/click_map"}}'}
execute if score $map settings matches 20 run setblock 7 64 22 oak_wall_sign[facing=west]{Text1:'{"text":"Map:","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Volcanic","color":"gold","bold":false}',Text3:'{"text":"Medium","color":"white"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:map/click_map"}}'}
execute if score $map settings matches 21 run setblock 7 64 22 oak_wall_sign[facing=west]{Text1:'{"text":"Map:","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Dimensional","color":"gold","bold":false}',Text3:'{"text":"Medium","color":"white"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:map/click_map"}}'}
execute if score $map settings matches 22 run setblock 7 64 22 oak_wall_sign[facing=west]{Text1:'{"text":"Map:","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Interloper","color":"gold","bold":false}',Text3:'{"text":"Medium","color":"white"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:map/click_map"}}'}
execute if score $map settings matches 23 run setblock 7 64 22 oak_wall_sign[facing=west]{Text1:'{"text":"Map:","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Helios","color":"gold","bold":false}',Text3:'{"text":"Medium","color":"white"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:map/click_map"}}'}
execute if score $map settings matches 24 run setblock 7 64 22 oak_wall_sign[facing=west]{Text1:'{"text":"Map:","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Excavation","color":"gold","bold":false}',Text3:'{"text":"Medium","color":"white"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:map/click_map"}}'}
execute if score $map settings matches 25 run setblock 7 64 22 oak_wall_sign[facing=west]{Text1:'{"text":"Map:","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Archaeology","color":"gold","bold":false}',Text3:'{"text":"Medium","color":"white"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:map/click_map"}}'}
execute if score $map settings matches 26 run setblock 7 64 22 oak_wall_sign[facing=west]{Text1:'{"text":"Map:","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Confection","color":"gold","bold":false}',Text3:'{"text":"Medium","color":"white"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:map/click_map"}}'}
execute if score $map settings matches 27 run setblock 7 64 22 oak_wall_sign[facing=west]{Text1:'{"text":"Map:","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Bateau","color":"gold","bold":false}',Text3:'{"text":"Medium","color":"white"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:map/click_map"}}'}
execute if score $map settings matches 28 run setblock 7 64 22 oak_wall_sign[facing=west]{Text1:'{"text":"Map:","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Tiers","color":"gold","bold":false}',Text3:'{"text":"Medium","color":"white"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:map/click_map"}}'}
execute if score $map settings matches 29 run setblock 7 64 22 oak_wall_sign[facing=west]{Text1:'{"text":"Map:","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Manufactory","color":"gold","bold":false}',Text3:'{"text":"Medium","color":"white"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:map/click_map"}}'}
execute if score $map settings matches 30 run setblock 7 64 22 oak_wall_sign[facing=west]{Text1:'{"text":"Map:","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Forge","color":"gold","bold":false}',Text3:'{"text":"Medium","color":"white"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:map/click_map"}}'}
execute if score $map settings matches 31 run setblock 7 64 22 oak_wall_sign[facing=west]{Text1:'{"text":"Map:","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Rundown","color":"gold","bold":false}',Text3:'{"text":"Medium","color":"white"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:map/click_map"}}'}
execute if score $map settings matches 32 run setblock 7 64 22 oak_wall_sign[facing=west]{Text1:'{"text":"Map:","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Sparring","color":"gold","bold":false}',Text3:'{"text":"Medium","color":"white"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:map/click_map"}}'}
execute if score $map settings matches 33 run setblock 7 64 22 oak_wall_sign[facing=west]{Text1:'{"text":"Map:","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Steampunk","color":"gold","bold":false}',Text3:'{"text":"Medium","color":"white"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:map/click_map"}}'}
execute if score $map settings matches 34 run setblock 7 64 22 oak_wall_sign[facing=west]{Text1:'{"text":"Map:","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Colorway","color":"gold","bold":false}',Text3:'{"text":"Medium","color":"white"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:map/click_map"}}'}
execute if score $map settings matches 35 run setblock 7 64 22 oak_wall_sign[facing=west]{Text1:'{"text":"Map:","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Mysterious","color":"gold","bold":false}',Text3:'{"text":"Medium","color":"white"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:map/click_map"}}'}

execute if score $map settings matches 36 run setblock 7 64 22 oak_wall_sign[facing=west]{Text1:'{"text":"Map:","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Settlement","color":"gold","bold":false}',Text3:'{"text":"Large","color":"white"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:map/click_map"}}'}
execute if score $map settings matches 37 run setblock 7 64 22 oak_wall_sign[facing=west]{Text1:'{"text":"Map:","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Fungi","color":"gold","bold":false}',Text3:'{"text":"Large","color":"white"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:map/click_map"}}'}
execute if score $map settings matches 38 run setblock 7 64 22 oak_wall_sign[facing=west]{Text1:'{"text":"Map:","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Colony","color":"gold","bold":false}',Text3:'{"text":"Large","color":"white"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:map/click_map"}}'}
execute if score $map settings matches 39 run setblock 7 64 22 oak_wall_sign[facing=west]{Text1:'{"text":"Map:","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Memories","color":"gold","bold":false}',Text3:'{"text":"Large","color":"white"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:map/click_map"}}'}
execute if score $map settings matches 40 run setblock 7 64 22 oak_wall_sign[facing=west]{Text1:'{"text":"Map:","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Archives","color":"gold","bold":false}',Text3:'{"text":"Large","color":"white"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:map/click_map"}}'}
execute if score $map settings matches 41 run setblock 7 64 22 oak_wall_sign[facing=west]{Text1:'{"text":"Map:","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Woolly","color":"gold","bold":false}',Text3:'{"text":"Large","color":"white"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:map/click_map"}}'}
execute if score $map settings matches 42 run setblock 7 64 22 oak_wall_sign[facing=west]{Text1:'{"text":"Map:","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Faces","color":"gold","bold":false}',Text3:'{"text":"Large","color":"white"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:map/click_map"}}'}
execute if score $map settings matches 43 run setblock 7 64 22 oak_wall_sign[facing=west]{Text1:'{"text":"Map:","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Donuts","color":"gold","bold":false}',Text3:'{"text":"Large","color":"white"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:map/click_map"}}'}

##Secret map
execute if score $map settings matches 44 run setblock 7 64 22 oak_wall_sign[facing=west]{Text1:'{"text":"Map:","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Secret","color":"gold","bold":false}',Text3:'{"text":"Medium","color":"white"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:map/click_map"}}'}


particle minecraft:cloud 8 65.5 22 0 0 0 0.05 10

kill @e[tag=display_map,type=armor_stand]
execute if score $map settings matches -3 run summon armor_stand 8 63.825 22 {DisabledSlots:2039583,Tags:["display_map","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:structure_block",Count:1b,tag:{BlockEntityTag:{mode:"LOAD"}}}]}
execute if score $map settings matches -2 run summon armor_stand 8 63.825 22 {DisabledSlots:2039583,Tags:["display_map","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:structure_block",Count:1b,tag:{BlockEntityTag:{mode:"CORNER"}}}]}
execute if score $map settings matches -1 run summon armor_stand 8 63.825 22 {DisabledSlots:2039583,Tags:["display_map","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:structure_block",Count:1b,tag:{BlockEntityTag:{mode:"SAVE"}}}]}
execute if score $map settings matches 0 run summon armor_stand 8 63.825 22 {DisabledSlots:2039583,Tags:["display_map","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:structure_block",Count:1b,tag:{BlockEntityTag:{mode:"DATA"}}}]}
execute if score $map settings matches 1 run summon armor_stand 8 63.825 22 {DisabledSlots:2039583,Tags:["display_map","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:white_stained_glass",Count:1b}]}
execute if score $map settings matches 2 run summon armor_stand 8 63.825 22 {DisabledSlots:2039583,Tags:["display_map","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:sand",Count:1b}]}
execute if score $map settings matches 3 run summon armor_stand 8 63.825 22 {DisabledSlots:2039583,Tags:["display_map","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:terracotta",Count:1b}]}
execute if score $map settings matches 4 run summon armor_stand 8 63.825 22 {DisabledSlots:2039583,Tags:["display_map","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:prismarine_bricks",Count:1b}]}
execute if score $map settings matches 5 run summon armor_stand 8 63.825 22 {DisabledSlots:2039583,Tags:["display_map","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:netherrack",Count:1b}]}
execute if score $map settings matches 6 run summon armor_stand 8 63.825 22 {DisabledSlots:2039583,Tags:["display_map","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"pumpkin",Count:1b}]}
execute if score $map settings matches 7 run summon armor_stand 8 63.825 22 {DisabledSlots:2039583,Tags:["display_map","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:snow_block",Count:1b}]}
execute if score $map settings matches 8 run summon armor_stand 8 63.825 22 {DisabledSlots:2039583,Tags:["display_map","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:coarse_dirt",Count:1b}]}
execute if score $map settings matches 9 run summon armor_stand 8 63.825 22 {DisabledSlots:2039583,Tags:["display_map","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:cyan_terracotta",Count:1b}]}
execute if score $map settings matches 10 run summon armor_stand 8 63.825 22 {DisabledSlots:2039583,Tags:["display_map","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:cut_sandstone",Count:1b}]}
execute if score $map settings matches 11 run summon armor_stand 8 63.825 22 {DisabledSlots:2039583,Tags:["display_map","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:quartz_pillar",Count:1b}]}
execute if score $map settings matches 12 run summon armor_stand 8 63.825 22 {DisabledSlots:2039583,Tags:["display_map","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:smooth_red_sandstone",Count:1b}]}
execute if score $map settings matches 13 run summon armor_stand 8 63.825 22 {DisabledSlots:2039583,Tags:["display_map","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:light_gray_concrete",Count:1b}]}
execute if score $map settings matches 14 run summon armor_stand 8 63.825 22 {DisabledSlots:2039583,Tags:["display_map","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:yellow_concrete",Count:1b}]}

execute if score $map settings matches 15 run summon armor_stand 8 63.825 22 {DisabledSlots:2039583,Tags:["display_map","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:coal_ore",Count:1b}]}
execute if score $map settings matches 16 run summon armor_stand 8 63.825 22 {DisabledSlots:2039583,Tags:["display_map","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:ice",Count:1b}]}
execute if score $map settings matches 17 run summon armor_stand 8 63.825 22 {DisabledSlots:2039583,Tags:["display_map","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:spruce_log",Count:1b}]}
execute if score $map settings matches 18 run summon armor_stand 8 63.825 22 {DisabledSlots:2039583,Tags:["display_map","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:crimson_nylium",Count:1b}]}
execute if score $map settings matches 19 run summon armor_stand 8 63.825 22 {DisabledSlots:2039583,Tags:["display_map","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:nether_bricks",Count:1b}]}
execute if score $map settings matches 20 run summon armor_stand 8 63.825 22 {DisabledSlots:2039583,Tags:["display_map","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:blackstone",Count:1b}]}
execute if score $map settings matches 21 run summon armor_stand 8 63.825 22 {DisabledSlots:2039583,Tags:["display_map","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:end_stone",Count:1b}]}
execute if score $map settings matches 22 run summon armor_stand 8 63.825 22 {DisabledSlots:2039583,Tags:["display_map","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:lime_stained_glass",Count:1b}]}
execute if score $map settings matches 23 run summon armor_stand 8 63.825 22 {DisabledSlots:2039583,Tags:["display_map","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:yellow_stained_glass",Count:1b}]}
execute if score $map settings matches 24 run summon armor_stand 8 63.825 22 {DisabledSlots:2039583,Tags:["display_map","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:redstone_ore",Count:1b}]}
execute if score $map settings matches 25 run summon armor_stand 8 63.825 22 {DisabledSlots:2039583,Tags:["display_map","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:bone_block",Count:1b}]}
execute if score $map settings matches 26 run summon armor_stand 8 63.825 22 {DisabledSlots:2039583,Tags:["display_map","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:dark_oak_planks",Count:1b}]}
execute if score $map settings matches 27 run summon armor_stand 8 63.825 22 {DisabledSlots:2039583,Tags:["display_map","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:white_wool",Count:1b}]}
execute if score $map settings matches 28 run summon armor_stand 8 63.825 22 {DisabledSlots:2039583,Tags:["display_map","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:polished_andesite",Count:1b}]}
execute if score $map settings matches 29 run summon armor_stand 8 63.825 22 {DisabledSlots:2039583,Tags:["display_map","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:red_concrete",Count:1b}]}
execute if score $map settings matches 30 run summon armor_stand 8 63.825 22 {DisabledSlots:2039583,Tags:["display_map","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:anvil",Count:1b}]}
execute if score $map settings matches 31 run summon armor_stand 8 63.825 22 {DisabledSlots:2039583,Tags:["display_map","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:andesite",Count:1b}]}
execute if score $map settings matches 32 run summon armor_stand 8 63.825 22 {DisabledSlots:2039583,Tags:["display_map","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:yellow_wool",Count:1b}]}
execute if score $map settings matches 33 run summon armor_stand 8 63.825 22 {DisabledSlots:2039583,Tags:["display_map","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:spruce_planks",Count:1b}]}
execute if score $map settings matches 34 run summon armor_stand 8 63.825 22 {DisabledSlots:2039583,Tags:["display_map","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:cyan_concrete",Count:1b}]}
execute if score $map settings matches 35 run summon armor_stand 8 63.825 22 {DisabledSlots:2039583,Tags:["display_map","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:warped_planks",Count:1b}]}

execute if score $map settings matches 36 run summon armor_stand 8 63.825 22 {DisabledSlots:2039583,Tags:["display_map","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:jungle_planks",Count:1b}]}
execute if score $map settings matches 37 run summon armor_stand 8 63.825 22 {DisabledSlots:2039583,Tags:["display_map","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:red_mushroom_block",Count:1b}]}
execute if score $map settings matches 38 run summon armor_stand 8 63.825 22 {DisabledSlots:2039583,Tags:["display_map","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:honeycomb",Count:1b}]}
execute if score $map settings matches 39 run summon armor_stand 8 63.825 22 {DisabledSlots:2039583,Tags:["display_map","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:grass_block",Count:1b}]}
execute if score $map settings matches 40 run summon armor_stand 8 63.825 22 {DisabledSlots:2039583,Tags:["display_map","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:prismarine_bricks",Count:1b}]}
execute if score $map settings matches 41 run summon armor_stand 8 63.825 22 {DisabledSlots:2039583,Tags:["display_map","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:green_wool",Count:1b}]}
execute if score $map settings matches 42 run summon armor_stand 8 63.825 22 {DisabledSlots:2039583,Tags:["display_map","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:brown_terracotta",Count:1b}]}
execute if score $map settings matches 43 run summon armor_stand 8 63.825 22 {DisabledSlots:2039583,Tags:["display_map","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:pink_concrete",Count:1b}]}



scoreboard players set $random_map settings -1000
execute if score $map settings matches -3..0 run scoreboard players operation $random_map settings = $map settings