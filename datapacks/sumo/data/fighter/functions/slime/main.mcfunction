##main slime function

##Frozen players
execute if entity @e[type=marker,tag=slime_freeze] as @a[tag=is_fighter,gamemode=adventure] at @s run function fighter:slime/check_freeze_players

##Platform
execute if entity @e[type=armor_stand,tag=slime_platform] run function fighter:slime/active_platform