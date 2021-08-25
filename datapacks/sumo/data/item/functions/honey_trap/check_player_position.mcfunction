##Called to see if we have a nearby player who didn't shoot us.

##Tag
tag @s add temporary_tag

execute as @a[tag=is_fighter,gamemode=adventure,distance=..5] at @s run scoreboard players operation @s calculate = @s id

execute as @a[tag=is_fighter,gamemode=adventure,distance=..5] at @s run scoreboard players operation @s calculate -= @e[type=armor_stand,tag=temporary_tag,sort=nearest,limit=1] id

execute as @a[tag=is_fighter,gamemode=adventure,distance=..5] at @s unless entity @s[scores={calculate=0}] run function item:honey_trap/hit

##Tag removal
tag @s remove temporary_tag