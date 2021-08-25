##Called to tp the explosive to it's owner

##tag
tag @s add temporary_tag

##Finding which entity is ours
execute as @a[tag=is_fighter,gamemode=adventure] at @s run scoreboard players operation @s calculate = @s id
execute as @a[tag=is_fighter,gamemode=adventure] at @s run scoreboard players operation @s calculate -= @e[tag=temporary_tag,sort=nearest,limit=1] id
## Player with calculate 0 is our owner

execute facing entity @p[tag=is_fighter,gamemode=adventure,scores={calculate=0}] feet run tp @s ^ ^ ^1
execute if entity @p[tag=is_fighter,gamemode=adventure,scores={calculate=0},distance=..3.0] run function fighter:incend/return_over


##remove tag
tag @s remove temporary_tag