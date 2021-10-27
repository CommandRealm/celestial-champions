##Called to give players the training buddy item

##Seeing if we clicked it
scoreboard players reset $check_click training_area
execute unless entity @s[nbt={Inventory:[{tag:{training_buddy_item:1}}]}] store result score $check_click training_area run clear @s #minecraft:training_buddy_item{training_buddy_item:1}
execute if score $check_click training_area matches 1.. run function lobby:training_area/buddy/toggle

##Final clear in case the first one didn't run because of the unless statement
clear @s #minecraft:training_buddy_item{training_buddy_item:1}

kill @e[type=item,nbt={Item:{tag:{training_buddy_item:1}}}]

execute if score $buddy training_area matches 0 run item replace entity @s inventory.10 with red_dye{training_buddy_item:1,CustomModelData:1,display:{Name:'[{"text":"Training Buddy","color":"#deb6b8","italic":false,"bold":true},{"text":": ","color":"gray"},{"text":"FIGHT","color":"#ff000c"}]',Lore:['{"text":"The Training Buddy will","italic":false,"color":"gray"}','{"text":"fight players on the island.","color":"gray","italic":false}','[{"text":"Click to swap mode.","color":"gray","italic":false}]','[{"text":"WARNING: ","color":"dark_gray","bold":true,"italic":false},{"text":"Some abilities will not","bold":false,"color":"gray"}]','[{"text":"work on the training buddy.","bold":false,"color":"gray","italic":false}]']}}
execute if score $buddy training_area matches 1 run item replace entity @s inventory.10 with stick{training_buddy_item:1,display:{Name:'[{"text":"Training Buddy","color":"#deb6b8","italic":false,"bold":true},{"text":": ","color":"gray"},{"text":"IDLE","color":"#be7400"}]',Lore:['{"text":"The Training Buddy will","italic":false,"color":"gray"}','{"text":"wander around on the island.","color":"gray","italic":false}','[{"text":"Click to swap mode.","color":"gray","italic":false}]','[{"text":"WARNING: ","color":"dark_gray","bold":true,"italic":false},{"text":"Some abilities will not","bold":false,"color":"gray"}]','[{"text":"work on the training buddy.","bold":false,"color":"gray","italic":false}]']}}
execute if score $buddy training_area matches 2 run item replace entity @s inventory.10 with black_dye{training_buddy_item:1,CustomModelData:1,display:{Name:'[{"text":"Training Buddy","color":"#deb6b8","italic":false,"bold":true},{"text":": ","color":"gray"},{"text":"OFF","color":"#5f1d1d"}]',Lore:['{"text":"The Training Buddy will","italic":false,"color":"gray"}','{"text":"not appear on the island.","color":"gray","italic":false}','[{"text":"Click to swap mode.","color":"gray","italic":false}]']}}

