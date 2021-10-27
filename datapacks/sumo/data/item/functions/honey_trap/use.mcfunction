##Called when we drop the honey block

##Tag
tag @s add temporary_tag

execute as @e[type=item,nbt={Item:{id:"minecraft:honey_block"}},sort=nearest,limit=1] at @s unless entity @s[scores={id=1..}] run scoreboard players operation @s id = @p[tag=temporary_tag] id


##tag rmeoval
tag @s remove temporary_tag