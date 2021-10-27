##Clears and kills books and then gives it to self
clear @s knowledge_book{book_type:"join"}
kill @e[type=item,nbt={Item:{id:"minecraft:knowledge_book"}},distance=..5]
item replace entity @s hotbar.3 with knowledge_book{CustomModelData:1,book_type:"join",not_clickable:1,Recipes:[],display:{Name:'[{"text":"Click","color":"white","bold":true,"italic":false},{"text":" to join the game.","color":"aqua","bold":false}]'}}
