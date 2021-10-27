##Runs basic functions (like abilities and double jumps)

##Clearing effects of those who touch the ground after the countdown
execute as @a[tag=slow_falling_until_landing,nbt={OnGround:1b}] at @s run function game:landed




##Dying
execute unless score $time cooldown matches 1.. as @a[tag=playing,gamemode=adventure] at @s at @s[y=30,distance=..10] run function game:die


##Call function if a player has a death cooldown
execute if entity @a[tag=playing,scores={death_cooldown=1..}] run function game:death_cooldown

##Particles signifying where people die
execute as @a[tag=playing] at @s run particle minecraft:end_rod ~ 40 ~ 5 0 5 0 20 force @s

##If player is in the slow falling stage
execute if entity @a[tag=is_fighter,tag=slow_falling_until_landing] run function game:player_is_floating

##Adding last death time
scoreboard players add @a[tag=playing,scores={last_death_time=0..}] last_death_time 1

##Advancement tag for when you're near the void
execute as @a[tag=playing,advancements={advancements:custom/recovery=false}] at @s if entity @s[y=35,distance=..20] run tag @s add near_void

##if we recover
execute as @a[tag=playing,advancements={advancements:custom/recovery=false},nbt={OnGround:1b},tag=near_void] at @s unless entity @e[type=shulker,distance=..2] run function game:check_advancement_recovery