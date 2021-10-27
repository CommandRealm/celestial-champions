##Called whenever someone has a poisonous potato.

##When player picks up poisonous potato
execute as @a[tag=is_fighter,gamemode=adventure,nbt={Inventory:[{id:"minecraft:poisonous_potato",tag:{item:1}}]},scores={pickup_potato=1..}] at @s run function item:poisonous_potato/picked_up_potato

##If player is damaged by a potato holder
execute as @a[tag=is_fighter,gamemode=adventure,advancements={advancements:item/damaged_by_potato=true}] at @s run function item:poisonous_potato/hit

##If new player has potato
execute as @a[tag=is_fighter,gamemode=adventure,nbt={Inventory:[{id:"minecraft:poisonous_potato",tag:{item:1}}]},tag=!has_potato] at @s run function item:poisonous_potato/pickup_potato

##Removing potato timer
scoreboard players remove $time poisonous_potato 1
execute if score $time poisonous_potato matches ..0 as @a[tag=is_fighter,gamemode=adventure,tag=has_potato] at @s run function item:poisonous_potato/explode

##If player should have potato but doesn'tag
execute as @a[tag=is_fighter,gamemode=adventure,tag=has_potato] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:poisonous_potato",tag:{item:1}}]}] run function item:poisonous_potato/get_potato

##Particles
execute at @a[tag=is_fighter,gamemode=adventure,tag=has_potato] run particle dust 0.529 0.612 0.224 1 ~ ~ ~ 0.25 0.25 0.25 0.25 10
