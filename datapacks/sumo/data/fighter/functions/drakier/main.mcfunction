##Main function for if a player is using Drakier.

##On ground function
execute if entity @a[tag=is_fighter,scores={fighter=8},gamemode=adventure,nbt={OnGround:1b},tag=!slow_falling_until_landing] run function fighter:drakier/drakier_on_ground




##Arrow particle
execute at @e[type=arrow,tag=drakier_arrow] run particle dragon_breath ~ ~ ~ 0 0 0 0 1

##Called for a ground ability in progress
execute as @a[scores={fighter=8,ability_timer=1..,ability_state=1,ability_type=0}] at @s anchored eyes positioned ^ ^ ^2.75 run function fighter:drakier/dragon_breath



##Counting elytra flight
scoreboard players add @a[scores={is_flying=1..},nbt={OnGround:0b}] random_stat 1

##Pausing firework cooldown




##Xp bar
xp set @a[scores={random_stat=1,fighter=8},tag=is_fighter,gamemode=adventure] 10 levels
xp set @a[scores={random_stat=21,fighter=8},tag=is_fighter,gamemode=adventure] 9 levels
xp set @a[scores={random_stat=41,fighter=8},tag=is_fighter,gamemode=adventure] 8 levels
xp set @a[scores={random_stat=61,fighter=8},tag=is_fighter,gamemode=adventure] 7 levels
xp set @a[scores={random_stat=81,fighter=8},tag=is_fighter,gamemode=adventure] 6 levels
xp set @a[scores={random_stat=101,fighter=8},tag=is_fighter,gamemode=adventure] 5 levels
xp set @a[scores={random_stat=121,fighter=8},tag=is_fighter,gamemode=adventure] 4 levels
xp set @a[scores={random_stat=141,fighter=8},tag=is_fighter,gamemode=adventure] 3 levels
xp set @a[scores={random_stat=161,fighter=8},tag=is_fighter,gamemode=adventure] 2 levels
xp set @a[scores={random_stat=181,fighter=8},tag=is_fighter,gamemode=adventure] 1 levels

##Break elytra
execute as @a[scores={random_stat=201,fighter=8},tag=is_fighter,gamemode=adventure] at @s run function fighter:drakier/fly_too_long


##Firework cooldown
execute as @a[scores={fighter=8},tag=is_fighter,gamemode=adventure] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:firework_rocket"}]}] unless entity @s[scores={random_cooldown2=1..}] run scoreboard players set @s random_cooldown2 100

##Starting firework cooldown
tag @a[scores={fighter=8},tag=!pause_random_cooldown2,nbt={OnGround:0b},tag=is_fighter,gamemode=adventure] add pause_random_cooldown2