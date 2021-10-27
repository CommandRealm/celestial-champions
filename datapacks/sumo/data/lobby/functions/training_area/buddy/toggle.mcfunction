##Called to toggle the training buddy state
scoreboard players add $buddy training_area 1
execute if score $buddy training_area matches 3.. run scoreboard players set $buddy training_area 0

##Specific state needs
effect clear @e[type=skeleton,tag=training_buddy,limit=1] weakness
execute if score $buddy training_area matches 0 run item replace entity @e[type=skeleton,tag=training_buddy,limit=1] weapon.mainhand with red_dye{CustomModelData:1,Enchantments:[{id:"minecraft:knockback",lvl:5}]}
execute if score $buddy training_area matches 1 run item replace entity @e[type=skeleton,tag=training_buddy,limit=1] weapon.mainhand with black_dye{CustomModelData:1}
execute if score $buddy training_area matches 2 run item replace entity @e[type=skeleton,tag=training_buddy,limit=1] weapon.mainhand with air

execute if score $buddy training_area matches 0 run data merge entity @e[type=skeleton,tag=training_buddy,limit=1] {Attributes:[{Name:"generic.movement_speed",Base:0.3}]}
execute if score $buddy training_area matches 1 run data merge entity @e[type=skeleton,tag=training_buddy,limit=1] {Attributes:[{Name:"generic.movement_speed",Base:0.00}]}
execute if score $buddy training_area matches 1 run effect give @e[type=skeleton,tag=training_buddy,limit=1] weakness 1000 255 true
execute if score $buddy training_area matches 2 run kill @e[type=skeleton,tag=training_buddy]

##Teleport
execute if score $buddy training_area matches 2 run tp @e[type=skeleton,tag=training_buddy] 0 250 0
execute if score $buddy training_area matches 2 run kill @e[type=skeleton,tag=training_buddy]

clear @a #minecraft:training_buddy_item{training_buddy_item:1}

##Effect
effect give @e[type=skeleton,tag=training_buddy,limit=1] resistance 1000000 255 true

##Sound 
playsound minecraft:ui.button.click master @s