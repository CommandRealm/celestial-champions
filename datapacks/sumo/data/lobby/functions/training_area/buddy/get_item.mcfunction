##Called to give players the training buddy item

##Seeing if we clicked it
scoreboard players reset $check_click training_area
execute unless entity @s[nbt={Inventory:[{tag:{training_buddy_item:1}}]}] store result score $check_click training_area run clear @s #minecraft:training_buddy_item{training_buddy_item:1}
execute if score $check_click training_area matches 1.. run function lobby:training_area/buddy/toggle

##Final clear in case the first one didn't run because of the unless statement
clear @s #minecraft:training_buddy_item{training_buddy_item:1}

kill @e[type=item,nbt={Item:{tag:{training_buddy_item:1}}}]

execute if score $buddy training_area matches 0 run item replace entity @s inventory.10 with red_dye{training_buddy_item:1,CustomModelData:1,display:{Name:'[{"translate":"Training Buddy","color":"#deb6b8","italic":false,"bold":true},{"translate":": ","color":"gray"},{"translate":"FIGHT","color":"#ff000c"}]',Lore:['{"translate":"The Training Buddy will","italic":false,"color":"gray"}','{"translate":"fight players on the island.","color":"gray","italic":false}','[{"translate":"Click to swap mode.","color":"gray","italic":false}]','[{"translate":"WARNING: ","color":"dark_gray","bold":true,"italic":false},{"translate":"Some abilities will not","bold":false,"color":"gray"}]','[{"translate":"work on the training buddy.","bold":false,"color":"gray","italic":false}]']}}
execute if score $buddy training_area matches 1 run item replace entity @s inventory.10 with stick{training_buddy_item:1,display:{Name:'[{"translate":"Training Buddy","color":"#deb6b8","italic":false,"bold":true},{"translate":": ","color":"gray"},{"translate":"IDLE","color":"#be7400"}]',Lore:['{"translate":"The Training Buddy will","italic":false,"color":"gray"}','{"translate":"wander around on the island.","color":"gray","italic":false}','[{"translate":"Click to swap mode.","color":"gray","italic":false}]','[{"translate":"WARNING: ","color":"dark_gray","bold":true,"italic":false},{"translate":"Some abilities will not","bold":false,"color":"gray"}]','[{"translate":"work on the training buddy.","bold":false,"color":"gray","italic":false}]']}}
execute if score $buddy training_area matches 2 run item replace entity @s inventory.10 with black_dye{training_buddy_item:1,CustomModelData:1,display:{Name:'[{"translate":"Training Buddy","color":"#deb6b8","italic":false,"bold":true},{"translate":": ","color":"gray"},{"translate":"OFF","color":"#5f1d1d"}]',Lore:['{"translate":"The Training Buddy will","italic":false,"color":"gray"}','{"translate":"not appear on the island.","color":"gray","italic":false}','[{"translate":"Click to swap mode.","color":"gray","italic":false}]']}}

