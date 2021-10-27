##called to start the detonation

clear @s red_dye{detonate_item:1b}
kill @e[type=item,nbt={Item:{id:"minecraft:red_dye"}},distance=..15]

##tag
tag @s add temporary_tag

execute as @e[type=area_effect_cloud,tag=malice_detonation] at @s run scoreboard players operation @s calculate = @s id
execute as @e[type=area_effect_cloud,tag=malice_detonation] at @s run scoreboard players operation @s calculate -= @p[tag=temporary_tag] id

execute as @e[type=area_effect_cloud,tag=malice_detonation,scores={calculate=0}] at @s run function fighter:malice/detonate


##getting back arrow
clear @s arrow 1
scoreboard players set @s arrow_timer 300

##tag removals
tag @s remove temporary_tag

##Sounds
playsound minecraft:entity.tnt.primed master @a ~ ~ ~ 1 0


##clearing score
scoreboard players reset @s drop_red_dye