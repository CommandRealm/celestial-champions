##Called when a player is melon man
execute if entity @e[type=zombie,tag=melon_man_melon] run function fighter:melon_man/active_melon

##Untagging them when we're on the ground
tag @a[tag=is_fighter,gamemode=adventure,scores={fighter=12},tag=pause_random_cooldown,nbt={OnGround:1b}] remove pause_random_cooldown