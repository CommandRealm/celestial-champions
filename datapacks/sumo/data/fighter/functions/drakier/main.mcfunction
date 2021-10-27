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

#converting to percentage
execute as @a[scores={fighter=8},tag=is_fighter,gamemode=adventure] at @s run scoreboard players operation @s calculate = @s random_stat
execute as @a[scores={fighter=8},tag=is_fighter,gamemode=adventure] at @s run scoreboard players operation @s calculate *= $100 number
execute as @a[scores={fighter=8},tag=is_fighter,gamemode=adventure] at @s run scoreboard players operation @s calculate /= @s random_stat2


xp set @a[scores={calculate=0..9,fighter=8},tag=is_fighter,gamemode=adventure] 10 levels
xp set @a[scores={calculate=10..19,fighter=8},tag=is_fighter,gamemode=adventure] 9 levels
xp set @a[scores={calculate=20..29,fighter=8},tag=is_fighter,gamemode=adventure] 8 levels
xp set @a[scores={calculate=30..39,fighter=8},tag=is_fighter,gamemode=adventure] 7 levels
xp set @a[scores={calculate=40..49,fighter=8},tag=is_fighter,gamemode=adventure] 6 levels
xp set @a[scores={calculate=50..59,fighter=8},tag=is_fighter,gamemode=adventure] 5 levels
xp set @a[scores={calculate=60..69,fighter=8},tag=is_fighter,gamemode=adventure] 4 levels
xp set @a[scores={calculate=70..79,fighter=8},tag=is_fighter,gamemode=adventure] 3 levels
xp set @a[scores={calculate=80..89,fighter=8},tag=is_fighter,gamemode=adventure] 2 levels
xp set @a[scores={calculate=90..99,fighter=8},tag=is_fighter,gamemode=adventure] 1 levels

##Break elytra
execute as @a[scores={calculate=100,fighter=8},tag=is_fighter,gamemode=adventure] at @s run function fighter:drakier/fly_too_long


##Firework cooldown
##execute as @a[scores={fighter=8},tag=is_fighter,gamemode=adventure] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:firework_rocket"}]}] unless entity @s[scores={random_cooldown2=1..}] run scoreboard players set @s random_cooldown2 100

##Starting firework cooldown
##tag @a[scores={fighter=8},tag=!pause_random_cooldown2,nbt={OnGround:0b},tag=is_fighter,gamemode=adventure] add pause_random_cooldown2