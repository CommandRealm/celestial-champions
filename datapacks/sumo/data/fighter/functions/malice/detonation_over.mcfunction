##called when a detonation aec dies (should return the arrow to the user.)

##tag
tag @s add temporary_tag

execute as @a[scores={fighter=15},tag=is_fighter,gamemode=adventure] at @s run scoreboard players operation @s calculate = @s id
execute as @a[scores={fighter=15},tag=is_fighter,gamemode=adventure] at @s run scoreboard players operation @s calculate -= @e[type=area_effect_cloud,sort=nearest,limit=1,tag=temporary_tag,tag=malice_detonation] id

##sound and arrow
execute as @a[scores={calculate=0},tag=is_fighter,gamemode=adventure] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 100 0
execute as @a[scores={calculate=0},tag=is_fighter,gamemode=adventure] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 100 0.65
execute as @a[scores={calculate=0},tag=is_fighter,gamemode=adventure] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 100 0.85





##removal
tag @s remove temporary_tag