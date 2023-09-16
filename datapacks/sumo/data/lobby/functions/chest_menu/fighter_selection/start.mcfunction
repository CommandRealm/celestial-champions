##Starting the fighter selection

##Clearing chest

##Clear Function
function lobby:chest_menu/clear_chest

##Setting screen
scoreboard players set @s screen -1




##Putting Theo's head in the chest
loot replace entity @s[scores={f_0_costume=0}] enderchest.0 loot lobby:fighters/theo/0
loot replace entity @s[scores={f_0_costume=0,fighter=0},tag=!random_fighter] enderchest.0 loot lobby:fighters/theo/selected_0

loot replace entity @s[scores={f_0_costume=1}] enderchest.0 loot lobby:fighters/theo/1
loot replace entity @s[scores={f_0_costume=1,fighter=0},tag=!random_fighter] enderchest.0 loot lobby:fighters/theo/selected_1

loot replace entity @s[scores={f_0_costume=2}] enderchest.0 loot lobby:fighters/theo/2
loot replace entity @s[scores={f_0_costume=2,fighter=0},tag=!random_fighter] enderchest.0 loot lobby:fighters/theo/selected_2

loot replace entity @s[scores={f_0_costume=3}] enderchest.0 loot lobby:fighters/theo/3
loot replace entity @s[scores={f_0_costume=3,fighter=0},tag=!random_fighter] enderchest.0 loot lobby:fighters/theo/selected_3

loot replace entity @s[scores={f_0_costume=4}] enderchest.0 loot lobby:fighters/theo/4
loot replace entity @s[scores={f_0_costume=4,fighter=0},tag=!random_fighter] enderchest.0 loot lobby:fighters/theo/selected_4

##Putting Incend's head in the chest
loot replace entity @s[scores={f_7_costume=0}] enderchest.1 loot lobby:fighters/incend/0
loot replace entity @s[scores={f_7_costume=0,fighter=7},tag=!random_fighter] enderchest.1 loot lobby:fighters/incend/selected_0

loot replace entity @s[scores={f_7_costume=1}] enderchest.1 loot lobby:fighters/incend/1
loot replace entity @s[scores={f_7_costume=1,fighter=7},tag=!random_fighter] enderchest.1 loot lobby:fighters/incend/selected_1

loot replace entity @s[scores={f_7_costume=2}] enderchest.1 loot lobby:fighters/incend/2
loot replace entity @s[scores={f_7_costume=2,fighter=7},tag=!random_fighter] enderchest.1 loot lobby:fighters/incend/selected_2

loot replace entity @s[scores={f_7_costume=3}] enderchest.1 loot lobby:fighters/incend/3
loot replace entity @s[scores={f_7_costume=3,fighter=7},tag=!random_fighter] enderchest.1 loot lobby:fighters/incend/selected_3

loot replace entity @s[scores={f_7_costume=4}] enderchest.1 loot lobby:fighters/incend/4
loot replace entity @s[scores={f_7_costume=4,fighter=7},tag=!random_fighter] enderchest.1 loot lobby:fighters/incend/selected_4


##Putting Drakier's head in the chest
loot replace entity @s[scores={f_8_costume=0}] enderchest.2 loot lobby:fighters/drakier/0
loot replace entity @s[scores={f_8_costume=0,fighter=8},tag=!random_fighter] enderchest.2 loot lobby:fighters/drakier/selected_0

loot replace entity @s[scores={f_8_costume=1}] enderchest.2 loot lobby:fighters/drakier/1
loot replace entity @s[scores={f_8_costume=1,fighter=8},tag=!random_fighter] enderchest.2 loot lobby:fighters/drakier/selected_1

loot replace entity @s[scores={f_8_costume=2}] enderchest.2 loot lobby:fighters/drakier/2
loot replace entity @s[scores={f_8_costume=2,fighter=8},tag=!random_fighter] enderchest.2 loot lobby:fighters/drakier/selected_2

loot replace entity @s[scores={f_8_costume=3}] enderchest.2 loot lobby:fighters/drakier/3
loot replace entity @s[scores={f_8_costume=3,fighter=8},tag=!random_fighter] enderchest.2 loot lobby:fighters/drakier/selected_3

loot replace entity @s[scores={f_8_costume=4}] enderchest.2 loot lobby:fighters/drakier/4
loot replace entity @s[scores={f_8_costume=4,fighter=8},tag=!random_fighter] enderchest.2 loot lobby:fighters/drakier/selected_4


##Putting Gracea's head in the chest
loot replace entity @s[scores={f_9_costume=0}] enderchest.3 loot lobby:fighters/gracea/0
loot replace entity @s[scores={f_9_costume=0,fighter=9},tag=!random_fighter] enderchest.3 loot lobby:fighters/gracea/selected_0

loot replace entity @s[scores={f_9_costume=1}] enderchest.3 loot lobby:fighters/gracea/1
loot replace entity @s[scores={f_9_costume=1,fighter=9},tag=!random_fighter] enderchest.3 loot lobby:fighters/gracea/selected_1

loot replace entity @s[scores={f_9_costume=2}] enderchest.3 loot lobby:fighters/gracea/2
loot replace entity @s[scores={f_9_costume=2,fighter=9},tag=!random_fighter] enderchest.3 loot lobby:fighters/gracea/selected_2

loot replace entity @s[scores={f_9_costume=3}] enderchest.3 loot lobby:fighters/gracea/3
loot replace entity @s[scores={f_9_costume=3,fighter=9},tag=!random_fighter] enderchest.3 loot lobby:fighters/gracea/selected_3

loot replace entity @s[scores={f_9_costume=4}] enderchest.3 loot lobby:fighters/gracea/4
loot replace entity @s[scores={f_9_costume=4,fighter=9},tag=!random_fighter] enderchest.3 loot lobby:fighters/gracea/selected_4


##Putting Calldius' head in the chest
loot replace entity @s[scores={f_10_costume=0}] enderchest.9 loot lobby:fighters/callidus/0
loot replace entity @s[scores={f_10_costume=0,fighter=10},tag=!random_fighter] enderchest.9 loot lobby:fighters/callidus/selected_0

loot replace entity @s[scores={f_10_costume=1}] enderchest.9 loot lobby:fighters/callidus/1
loot replace entity @s[scores={f_10_costume=1,fighter=10},tag=!random_fighter] enderchest.9 loot lobby:fighters/callidus/selected_1

loot replace entity @s[scores={f_10_costume=2}] enderchest.9 loot lobby:fighters/callidus/2
loot replace entity @s[scores={f_10_costume=2,fighter=10},tag=!random_fighter] enderchest.9 loot lobby:fighters/callidus/selected_2

loot replace entity @s[scores={f_10_costume=3}] enderchest.9 loot lobby:fighters/callidus/3
loot replace entity @s[scores={f_10_costume=3,fighter=10},tag=!random_fighter] enderchest.9 loot lobby:fighters/callidus/selected_3

loot replace entity @s[scores={f_10_costume=4}] enderchest.9 loot lobby:fighters/callidus/4
loot replace entity @s[scores={f_10_costume=4,fighter=10},tag=!random_fighter] enderchest.9 loot lobby:fighters/callidus/selected_4


##Putting Gene's head in the chest
loot replace entity @s[scores={f_11_costume=0}] enderchest.11 loot lobby:fighters/gene/0
loot replace entity @s[scores={f_11_costume=0,fighter=11},tag=!random_fighter] enderchest.11 loot lobby:fighters/gene/selected_0

loot replace entity @s[scores={f_11_costume=1}] enderchest.11 loot lobby:fighters/gene/1
loot replace entity @s[scores={f_11_costume=1,fighter=11},tag=!random_fighter] enderchest.11 loot lobby:fighters/gene/selected_1

loot replace entity @s[scores={f_11_costume=2}] enderchest.11 loot lobby:fighters/gene/2
loot replace entity @s[scores={f_11_costume=2,fighter=11},tag=!random_fighter] enderchest.11 loot lobby:fighters/gene/selected_2




##Putting Melon Man's head in the chest
loot replace entity @s[scores={f_12_costume=0}] enderchest.10 loot lobby:fighters/melon_man/0
loot replace entity @s[scores={f_12_costume=0,fighter=12},tag=!random_fighter] enderchest.10 loot lobby:fighters/melon_man/selected_0

loot replace entity @s[scores={f_12_costume=1}] enderchest.10 loot lobby:fighters/melon_man/1
loot replace entity @s[scores={f_12_costume=1,fighter=12},tag=!random_fighter] enderchest.10 loot lobby:fighters/melon_man/selected_1

loot replace entity @s[scores={f_12_costume=2}] enderchest.10 loot lobby:fighters/melon_man/2
loot replace entity @s[scores={f_12_costume=2,fighter=12},tag=!random_fighter] enderchest.10 loot lobby:fighters/melon_man/selected_2

loot replace entity @s[scores={f_12_costume=3}] enderchest.10 loot lobby:fighters/melon_man/3
loot replace entity @s[scores={f_12_costume=3,fighter=12},tag=!random_fighter] enderchest.10 loot lobby:fighters/melon_man/selected_3

loot replace entity @s[scores={f_12_costume=4}] enderchest.10 loot lobby:fighters/melon_man/4
loot replace entity @s[scores={f_12_costume=4,fighter=12},tag=!random_fighter] enderchest.10 loot lobby:fighters/melon_man/selected_4


##Putting Malice's head in the chest
loot replace entity @s[scores={f_15_costume=0}] enderchest.12 loot lobby:fighters/malice/0
loot replace entity @s[scores={f_15_costume=0,fighter=15},tag=!random_fighter] enderchest.12 loot lobby:fighters/malice/selected_0

loot replace entity @s[scores={f_15_costume=1}] enderchest.12 loot lobby:fighters/malice/1
loot replace entity @s[scores={f_15_costume=1,fighter=15},tag=!random_fighter] enderchest.12 loot lobby:fighters/malice/selected_1

loot replace entity @s[scores={f_15_costume=2}] enderchest.12 loot lobby:fighters/malice/2
loot replace entity @s[scores={f_15_costume=2,fighter=15},tag=!random_fighter] enderchest.12 loot lobby:fighters/malice/selected_2

loot replace entity @s[scores={f_15_costume=3}] enderchest.12 loot lobby:fighters/malice/3
loot replace entity @s[scores={f_15_costume=3,fighter=15},tag=!random_fighter] enderchest.12 loot lobby:fighters/malice/selected_3

loot replace entity @s[scores={f_15_costume=4}] enderchest.12 loot lobby:fighters/malice/4
loot replace entity @s[scores={f_15_costume=4,fighter=15},tag=!random_fighter] enderchest.12 loot lobby:fighters/malice/selected_4



##Putting Zombie's head in the chest
loot replace entity @s[scores={f_1_costume=0}] enderchest.5 loot lobby:fighters/zombie/0
loot replace entity @s[scores={f_1_costume=0,fighter=1},tag=!random_fighter] enderchest.5 loot lobby:fighters/zombie/selected_0

loot replace entity @s[scores={f_1_costume=1}] enderchest.5 loot lobby:fighters/zombie/1
loot replace entity @s[scores={f_1_costume=1,fighter=1},tag=!random_fighter] enderchest.5 loot lobby:fighters/zombie/selected_1

loot replace entity @s[scores={f_1_costume=2}] enderchest.5 loot lobby:fighters/zombie/2
loot replace entity @s[scores={f_1_costume=2,fighter=1},tag=!random_fighter] enderchest.5 loot lobby:fighters/zombie/selected_2

loot replace entity @s[scores={f_1_costume=3}] enderchest.5 loot lobby:fighters/zombie/3
loot replace entity @s[scores={f_1_costume=3,fighter=1},tag=!random_fighter] enderchest.5 loot lobby:fighters/zombie/selected_3





##Putting Skeleton's head in the chest
loot replace entity @s[scores={f_2_costume=0}] enderchest.6 loot lobby:fighters/skeleton/0
loot replace entity @s[scores={f_2_costume=0,fighter=2},tag=!random_fighter] enderchest.6 loot lobby:fighters/skeleton/selected_0

loot replace entity @s[scores={f_2_costume=1}] enderchest.6 loot lobby:fighters/skeleton/1
loot replace entity @s[scores={f_2_costume=1,fighter=2},tag=!random_fighter] enderchest.6 loot lobby:fighters/skeleton/selected_1

loot replace entity @s[scores={f_2_costume=2}] enderchest.6 loot lobby:fighters/skeleton/2
loot replace entity @s[scores={f_2_costume=2,fighter=2},tag=!random_fighter] enderchest.6 loot lobby:fighters/skeleton/selected_2



##Putting Spider's head in the chest
loot replace entity @s[scores={f_4_costume=0}] enderchest.7 loot lobby:fighters/spider/0
loot replace entity @s[scores={f_4_costume=0,fighter=4},tag=!random_fighter] enderchest.7 loot lobby:fighters/spider/selected_0

loot replace entity @s[scores={f_4_costume=1}] enderchest.7 loot lobby:fighters/spider/1
loot replace entity @s[scores={f_4_costume=1,fighter=4},tag=!random_fighter] enderchest.7 loot lobby:fighters/spider/selected_1

loot replace entity @s[scores={f_4_costume=2}] enderchest.7 loot lobby:fighters/spider/2
loot replace entity @s[scores={f_4_costume=2,fighter=4},tag=!random_fighter] enderchest.7 loot lobby:fighters/spider/selected_2








##Putting Creeper's head in the chest
loot replace entity @s[scores={f_3_costume=0}] enderchest.8 loot lobby:fighters/creeper/0
loot replace entity @s[scores={f_3_costume=0,fighter=3},tag=!random_fighter] enderchest.8 loot lobby:fighters/creeper/selected_0

loot replace entity @s[scores={f_3_costume=1}] enderchest.8 loot lobby:fighters/creeper/1
loot replace entity @s[scores={f_3_costume=1,fighter=3},tag=!random_fighter] enderchest.8 loot lobby:fighters/creeper/selected_1

loot replace entity @s[scores={f_3_costume=2}] enderchest.8 loot lobby:fighters/creeper/2
loot replace entity @s[scores={f_3_costume=2,fighter=3},tag=!random_fighter] enderchest.8 loot lobby:fighters/creeper/selected_2


##Putting Enderman's head in the chest
loot replace entity @s[scores={f_6_costume=0}] enderchest.14 loot lobby:fighters/enderman/0
loot replace entity @s[scores={f_6_costume=0,fighter=6},tag=!random_fighter] enderchest.14 loot lobby:fighters/enderman/selected_0

loot replace entity @s[scores={f_6_costume=1}] enderchest.14 loot lobby:fighters/enderman/1
loot replace entity @s[scores={f_6_costume=1,fighter=6},tag=!random_fighter] enderchest.14 loot lobby:fighters/enderman/selected_1

loot replace entity @s[scores={f_6_costume=2}] enderchest.14 loot lobby:fighters/enderman/2
loot replace entity @s[scores={f_6_costume=2,fighter=6},tag=!random_fighter] enderchest.14 loot lobby:fighters/enderman/selected_2

loot replace entity @s[scores={f_6_costume=3}] enderchest.14 loot lobby:fighters/enderman/3
loot replace entity @s[scores={f_6_costume=3,fighter=6},tag=!random_fighter] enderchest.14 loot lobby:fighters/enderman/selected_3



##Putting Chicken's head in the chest
loot replace entity @s[scores={f_5_costume=0}] enderchest.17 loot lobby:fighters/chicken/0
loot replace entity @s[scores={f_5_costume=0,fighter=5},tag=!random_fighter] enderchest.17 loot lobby:fighters/chicken/selected_0

loot replace entity @s[scores={f_5_costume=1}] enderchest.17 loot lobby:fighters/chicken/1
loot replace entity @s[scores={f_5_costume=1,fighter=5},tag=!random_fighter] enderchest.17 loot lobby:fighters/chicken/selected_1

loot replace entity @s[scores={f_5_costume=2}] enderchest.17 loot lobby:fighters/chicken/2
loot replace entity @s[scores={f_5_costume=2,fighter=5},tag=!random_fighter] enderchest.17 loot lobby:fighters/chicken/selected_2

loot replace entity @s[scores={f_5_costume=3}] enderchest.17 loot lobby:fighters/chicken/3
loot replace entity @s[scores={f_5_costume=3,fighter=5},tag=!random_fighter] enderchest.17 loot lobby:fighters/chicken/selected_3



##Putting Blaze's head in the chest
loot replace entity @s[scores={f_13_costume=0}] enderchest.16 loot lobby:fighters/blaze/0
loot replace entity @s[scores={f_13_costume=0,fighter=13},tag=!random_fighter] enderchest.16 loot lobby:fighters/blaze/selected_0

loot replace entity @s[scores={f_13_costume=1}] enderchest.16 loot lobby:fighters/blaze/1
loot replace entity @s[scores={f_13_costume=1,fighter=13},tag=!random_fighter] enderchest.16 loot lobby:fighters/blaze/selected_1

loot replace entity @s[scores={f_13_costume=2}] enderchest.16 loot lobby:fighters/blaze/2
loot replace entity @s[scores={f_13_costume=2,fighter=13},tag=!random_fighter] enderchest.16 loot lobby:fighters/blaze/selected_2

loot replace entity @s[scores={f_13_costume=3}] enderchest.16 loot lobby:fighters/blaze/3
loot replace entity @s[scores={f_13_costume=3,fighter=13},tag=!random_fighter] enderchest.16 loot lobby:fighters/blaze/selected_3



##Putting Slime's head in the chest
loot replace entity @s[scores={f_14_costume=0}] enderchest.15 loot lobby:fighters/slime/0
loot replace entity @s[scores={f_14_costume=0,fighter=14},tag=!random_fighter] enderchest.15 loot lobby:fighters/slime/selected_0

loot replace entity @s[scores={f_14_costume=1}] enderchest.15 loot lobby:fighters/slime/1
loot replace entity @s[scores={f_14_costume=1,fighter=14},tag=!random_fighter] enderchest.15 loot lobby:fighters/slime/selected_1

loot replace entity @s[scores={f_14_costume=2}] enderchest.15 loot lobby:fighters/slime/2
loot replace entity @s[scores={f_14_costume=2,fighter=14},tag=!random_fighter] enderchest.15 loot lobby:fighters/slime/selected_2

loot replace entity @s[scores={f_14_costume=3}] enderchest.15 loot lobby:fighters/slime/3
loot replace entity @s[scores={f_14_costume=3,fighter=14},tag=!random_fighter] enderchest.15 loot lobby:fighters/slime/selected_3

##Arthor
loot replace entity @s[scores={f_16_costume=0}] enderchest.21 loot lobby:fighters/arthor/0
loot replace entity @s[scores={f_16_costume=0,fighter=16},tag=!random_fighter] enderchest.21 loot lobby:fighters/arthor/selected_0

loot replace entity @s[scores={f_16_costume=1}] enderchest.21 loot lobby:fighters/arthor/1
loot replace entity @s[scores={f_16_costume=1,fighter=16},tag=!random_fighter] enderchest.21 loot lobby:fighters/arthor/selected_1

loot replace entity @s[scores={f_16_costume=2}] enderchest.21 loot lobby:fighters/arthor/2
loot replace entity @s[scores={f_16_costume=2,fighter=16},tag=!random_fighter] enderchest.21 loot lobby:fighters/arthor/selected_2

##Guardian
loot replace entity @s[scores={f_17_costume=0}] enderchest.23 loot lobby:fighters/guardian/0
loot replace entity @s[scores={f_17_costume=0,fighter=17},tag=!random_fighter] enderchest.23 loot lobby:fighters/guardian/selected_0

loot replace entity @s[scores={f_17_costume=1}] enderchest.23 loot lobby:fighters/guardian/1
loot replace entity @s[scores={f_17_costume=1,fighter=17},tag=!random_fighter] enderchest.23 loot lobby:fighters/guardian/selected_1

loot replace entity @s[scores={f_17_costume=2}] enderchest.23 loot lobby:fighters/guardian/2
loot replace entity @s[scores={f_17_costume=2,fighter=17},tag=!random_fighter] enderchest.23 loot lobby:fighters/guardian/selected_2

loot replace entity @s[scores={f_17_costume=3}] enderchest.23 loot lobby:fighters/guardian/3
loot replace entity @s[scores={f_17_costume=3,fighter=17},tag=!random_fighter] enderchest.23 loot lobby:fighters/guardian/selected_3


##Middle bar
item replace entity @s enderchest.4 with light_gray_stained_glass{clickable:1,invalid_click:1,HideFlags:63,display:{Name:'[{"translate":""}]'}}

item replace entity @s enderchest.13 with player_head{CustomModelData:1,clickable:1,random:1,HideFlags:63,display:{Name:'[{"translate":"R","color":"#ff0000","bold":true,"italic":false},{"translate":"A","color":"#ff7f00","bold":true},{"translate":"N","color":"#ffff00","bold":true},{"translate":"D","color":"#00FF00","bold":true},{"translate":"O","color":"#0000ff","bold":true},{"translate":"M","color":"#8b00ff","bold":true}]',Lore:['[{"translate":"Click to select random.","color":"gray","italic":false}]','[{"translate":"Your fighter will be randomized","color":"gray","italic":false}]','[{"translate":"at the start of every game.","color":"gray","italic":false}]']},SkullOwner:{Id:[I;682268746,544686284,-1914182079,-1376598889],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDZiYTYzMzQ0ZjQ5ZGQxYzRmNTQ4OGU5MjZiZjNkOWUyYjI5OTE2YTZjNTBkNjEwYmI0MGE1MjczZGM4YzgyIn19fQ=="}]}}}

item replace entity @s[tag=random_fighter] enderchest.13 with player_head{invalid_click:1,Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}],random:1,CustomModelData:1,clickable:1,HideFlags:63,display:{Name:'[{"translate":"R","color":"#ff0000","bold":true,"italic":false},{"translate":"A","color":"#ff7f00","bold":true},{"translate":"N","color":"#ffff00","bold":true},{"translate":"D","color":"#00FF00","bold":true},{"translate":"O","color":"#0000ff","bold":true},{"translate":"M","color":"#8b00ff","bold":true}]',Lore:['[{"translate":"SELECTED","color":"dark_aqua","italic":false,"bold":true}]','[{"translate":"Your fighter will be randomized","color":"gray","italic":false}]','[{"translate":"at the start of every game.","color":"gray","italic":false}]']},SkullOwner:{Id:[I;-407951598,-1659548948,-1135620899,-231188373],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzM1YmEzOTNiODYxMGI2M2ViZWU0YzEzYzgzNThiYzZjOTRhOWRlZGM4ZTRkN2QzNmI5MjIyNTdlNjVlOCJ9fX0="}]}}}

item replace entity @s enderchest.22 with light_gray_stained_glass{clickable:1,invalid_click:1,HideFlags:63,display:{Name:'[{"translate":""}]'}}


