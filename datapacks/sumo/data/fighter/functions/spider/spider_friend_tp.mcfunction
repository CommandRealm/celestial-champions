##Called when the spider needs to tp to the players

##Tagging self
tag @s add temporary_tag


##Putting ids on calculate

scoreboard players operation @s calculate = @s id

execute as @a[tag=is_fighter,gamemode=adventure] at @s run scoreboard players operation @s calculate = @s id

##Subtraction
execute as @a[tag=is_fighter,gamemode=adventure] at @s run scoreboard players operation @s calculate -= @e[type=spider,tag=temporary_tag,sort=nearest,limit=1] id

##Tping
tp @s @p[scores={calculate=0},tag=is_fighter,gamemode=adventure]



##Tag removals
tag @s remove invalid_kb_hit
tag @s remove temporary_tag





