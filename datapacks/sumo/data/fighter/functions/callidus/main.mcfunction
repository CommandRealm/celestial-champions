##Main function for callidus


##Use trident
execute as @a[tag=is_fighter,gamemode=adventure,scores={fighter=10,throw_trident=1..}] at @s run function fighter:callidus/use_trident

##Dealing damage with thrown trident
execute as @a[tag=is_fighter,gamemode=adventure,scores={fighter=10},advancements={advancements:damage/trident_damage=true}] at @s run function fighter:callidus/check_hit_trident

##Get boots
execute as @a[tag=is_fighter,gamemode=adventure,scores={fighter=10,ability_state=1,ability_timer=1..}] at @s unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:iron_boots"}]}] run function fighter:callidus/get_boots

##If smoke bomb exists
execute if entity @e[type=zombie,tag=callidus_smoke] run function fighter:callidus/active_smoke_bomb