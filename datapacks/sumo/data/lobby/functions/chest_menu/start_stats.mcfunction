##Starting the credits screen

##Clearing chest

##Clear Function
function lobby:chest_menu/clear_chest

##Setting screen
scoreboard players set @s screen 5


##Middle row
loot replace entity @s enderchest.10 loot minecraft:stats/games_played
loot replace entity @s enderchest.11 loot minecraft:stats/game_wins
loot replace entity @s enderchest.12 loot minecraft:stats/duel_wins
loot replace entity @s enderchest.13 loot minecraft:stats/duels_played
loot replace entity @s enderchest.14 loot minecraft:stats/kills
loot replace entity @s enderchest.15 loot minecraft:stats/deaths
loot replace entity @s enderchest.16 loot minecraft:stats/kill_streaks

##Back button
replaceitem entity @s enderchest.18 barrier{clickable:1,HideFlags:63,display:{Name:'[{"text":"Back","bold":true,"italic":false,"color":"#ed1000"}]'}}