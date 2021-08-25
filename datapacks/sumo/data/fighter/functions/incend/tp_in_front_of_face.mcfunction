##Called to tp the explosive to it's owner's face

##Tagging ourselves
tag @s add temporary_tag

##Finding which player is ours
execute as @a[tag=is_fighter,gamemode=adventure] at @s run scoreboard players operation @s calculate = @s id
execute as @a[tag=is_fighter,gamemode=adventure] at @s run scoreboard players operation @s calculate -= @e[tag=temporary_tag,sort=nearest,limit=1] id
## Player with calculate 0 is our owner
execute as @p[tag=is_fighter,gamemode=adventure,scores={calculate=0}] at @s positioned ~ ~-0.1 ~ anchored eyes run tp @e[tag=temporary_tag,tag=incend_tnt,sort=nearest,limit=1] ^ ^ ^1.5


##Removeing tag
tag @s remove temporary_tag