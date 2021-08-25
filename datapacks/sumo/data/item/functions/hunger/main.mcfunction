execute as @a at @s unless entity @s[scores={hunger=0}] run scoreboard players operation @s hunger = @s d_hunger
scoreboard players add @a hunger 0
scoreboard players set @a[scores={hunger=0}] hunger 20
function item:hunger/apply_hunger
