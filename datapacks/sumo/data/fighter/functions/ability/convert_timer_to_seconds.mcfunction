##Called when a player needs their ability timer converted to seconds on the ability_display objective

##Copying it to a fake display objective because you can't if you spam it to the objective that is actually being displayed it will display very strangely.


##Copying score to fake display obj
execute as @a[scores={ability_timer=1..},tag=is_fighter] at @s run scoreboard players operation @s check_ability_d = @s ability_timer

##Division by 20 to convert it from ticks to seconds
execute as @a[scores={ability_timer=1..},tag=is_fighter] at @s run scoreboard players operation @s check_ability_d /= $20 number

##Adding a second to make it display how we want it to
scoreboard players add @a[scores={ability_timer=1..},tag=is_fighter] check_ability_d 1

##If the check_ability_d doesn't match ability_display make them equal.
execute as @a[scores={ability_timer=1..},tag=is_fighter] at @s unless score @s ability_display = @s check_ability_d run scoreboard players operation @s ability_display = @s check_ability_d