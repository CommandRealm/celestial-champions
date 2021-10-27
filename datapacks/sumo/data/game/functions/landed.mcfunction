##Function for when players land after the slow falling from the starting countdown.


##removing tags
tag @s remove slow_falling_until_landing


##Removing effects
effect clear @s slow_falling
effect clear @s weakness
clear @s netherite_boots

##Cooldown scores
scoreboard players set @s ability_timer 0
scoreboard players set @s ability_state 0

##Setting arrow score if player is a ranged class.
scoreboard players set @s[scores={set_arrow_timer=1..}] arrow_timer 1

##Dragon firework
scoreboard players set @s[scores={fighter=8}] random_cooldown2 1

##Sounds
playsound minecraft:block.netherite_block.break master @a ~ ~ ~ 1 1

##Reset damage
scoreboard players set @s damage_percent 0
scoreboard players set @s times_hit 0