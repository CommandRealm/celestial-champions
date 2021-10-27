##Main item function
scoreboard players remove @a[scores={item_spawn_timer=1..},tag=is_fighter,gamemode=adventure] item_spawn_timer 1

execute as @a[scores={item_spawn_timer=..0},tag=is_fighter,gamemode=adventure] at @s run function item:timer_over

execute if entity @e[type=area_effect_cloud,tag=item_spawn] run function item:active


##For those who shoot the crossbow item
execute as @a[tag=is_fighter,gamemode=adventure,advancements={advancements:item/shoot_crossbow=true}] at @s run function item:crossbow/tag_arrow

##If turret exists
execute if entity @e[type=skeleton,tag=turret] run function item:turret/active

##If placed honey trap exists
execute if entity @e[type=armor_stand,tag=honey_trap] run function item:honey_trap/active

##If player has poisonous potato
execute if entity @a[tag=is_fighter,gamemode=adventure,tag=has_potato] run function item:poisonous_potato/main
execute unless entity @a[tag=is_fighter,gamemode=adventure,tag=has_potato] if entity @a[tag=is_fighter,gamemode=adventure,nbt={Inventory:[{id:"minecraft:poisonous_potato",tag:{item:1}}]}] run function item:poisonous_potato/main

##When player eats cookies
execute as @a[tag=is_fighter,gamemode=adventure,scores={eat_cookie=1..}] at @s run function item:cookie/use

##Drop item:
execute as @a[tag=is_fighter,gamemode=adventure,scores={drop_item=1..}] at @s positioned ~ ~1 ~ if entity @e[type=item,distance=..5,nbt={Item:{tag:{item:1}}}] at @s run function item:drop_item

##Offhand item:
execute as @a[tag=is_fighter,gamemode=adventure,nbt={Inventory:[{Slot:-106b,tag:{item:1}}]}] at @s run function item:offhand_item


##"Placeable" item:
execute as @e[type=item,nbt={Item:{tag:{placeable_item:1}},OnGround:1b}] at @s run function item:place_item

##Reset
scoreboard players reset @a[scores={drop_item=1..},tag=is_fighter,gamemode=adventure] drop_item

