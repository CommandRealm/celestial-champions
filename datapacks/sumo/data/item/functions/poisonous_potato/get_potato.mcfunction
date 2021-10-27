##called when we drop the potato

clear @s poisonous_potato
give @s poisonous_potato{droppable_item:0,item:1,AttributeModifiers:[{AttributeName:"generic.attack_speed",Amount:2048,UUID:[I; 1, 1, 1, 1]}],HideFlags:63,display:{Name:'[{"text":"Poisonous","color":"#879d30","italic":false},{"text":" Potato","color":"#668355","italic":false}]',Lore:['[{"text":"Hit another player to give them","color":"gray","italic":false}]','[{"text":"the poisonous potato. It will","color":"gray","italic":false}]','[{"text":"eventually damage the player who has the potato.","color":"gray","italic":false}]']}}