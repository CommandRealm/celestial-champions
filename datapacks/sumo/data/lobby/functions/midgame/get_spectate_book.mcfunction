##Clears and kills books and then gives it to self
clear @s knowledge_book{book_type:"spectate"}
kill @e[type=item,nbt={Item:{id:"minecraft:knowledge_book"}},distance=..5]
item replace entity @s hotbar.5 with knowledge_book{CustomModelData:1,book_type:"spectate",not_clickable:1,Recipes:[],display:{Name:'[{"translate":"Click","color":"aqua","bold":true,"italic":false},{"translate":" to spectate.","color":"white","bold":false}]'}}
