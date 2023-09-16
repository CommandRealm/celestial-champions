##Starting the cosmetics screen

##Clear Function
function lobby:chest_menu/clear_chest

##Setting screen
scoreboard players set @s screen 8



item replace entity @s enderchest.11 with bone{HideFlags:63,display:{Name:'[{"translate":"Death ","color":"dark_red","italic":false,"bold":true},{"translate":"Poses","color":"red"}]',Lore:['[{"translate":"Poses that appear when you die.","color":"gray","italic":false}]']},clickable:1}

item replace entity @s enderchest.13 with diamond{HideFlags:63,display:{Name:'[{"translate":"Celebrations","color":"aqua","italic":false,"bold":true}]',Lore:['[{"translate":"Celebrations that appear when you win.","color":"gray","italic":false}]']},clickable:1}

item replace entity @s enderchest.15 with gold_nugget{Enchantments:[{id:"x",lvl:1}],HideFlags:63,display:{Name:'[{"translate":"Advancement ","color":"gold","italic":false,"bold":true},{"translate":"Unlocks","color":"yellow"}]',Lore:['[{"translate":"Unlockables from advancements.","color":"gray","italic":false}]']},clickable:1}


##Back button
item replace entity @s enderchest.18 with barrier{clickable:1,HideFlags:63,display:{Name:'[{"translate":"Back","bold":true,"italic":false,"color":"#ed1000"}]'}}



