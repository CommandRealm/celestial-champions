##Clears and kills books and then gives it to self
clear @s knowledge_book
kill @e[type=item,nbt={Item:{id:"minecraft:knowledge_book"}},distance=..5]
item replace entity @s[scores={ready=0}] hotbar.5 with knowledge_book{CustomModelData:1,not_clickable:1,Recipes:[],display:{Name:'[{"translate":"Click","color":"white","bold":true,"italic":false},{"translate":" to ready up.","color":"aqua","bold":false}]'}}
item replace entity @s[scores={ready=1}] hotbar.5 with knowledge_book{CustomModelData:1,not_clickable:1,Recipes:[],display:{Name:'[{"translate":"Click","color":"gray","bold":true,"italic":false},{"translate":" to unready.","color":"dark_gray","bold":false}]'},Enchantments:[{id:"x",lvl:1}]}