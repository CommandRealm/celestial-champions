##Called whenever a player uses an ability

##Checking to see if player is above air
execute if block ~ ~-0.1 ~ air if block ~ ~-1.1 ~ air run scoreboard players set @s[nbt={OnGround:0b}] use_ability_type 1


##Kill
kill @e[type=item,nbt={Item:{tag:{Ability:1b}}}]

##Clearing offhand if necessary
replaceitem entity @s[nbt={Inventory:[{Slot:-106b,tag:{Ability:1b}}]}] weapon.offhand air

##Score reset
scoreboard players reset @s drop_ability

##Use ground ability
execute if entity @s[scores={use_ability_type=0}] run function fighter:ability/use_ground_ability

##Use air ability
execute if entity @s[scores={use_ability_type=1}] run function fighter:ability/use_air_ability