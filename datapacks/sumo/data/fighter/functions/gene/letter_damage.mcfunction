##Called when a letter hits someone


##Tag so that the original player can't be acted upon
tag @a[distance=..1,scores={calculate=0},gamemode=adventure,tag=is_fighter] add temporary_tag

execute at @p[distance=..1,tag=!temporary_tag,gamemode=adventure,tag=is_fighter] run scoreboard players operation @p[distance=..1,tag=!temporary_tag] calculate = @s id
execute as @p[distance=..1,tag=!temporary_tag,gamemode=adventure,tag=is_fighter] at @s run function game:give_advancement_from_self_calculate
advancement grant @p[distance=..1,tag=!temporary_tag,gamemode=adventure,tag=is_fighter] only advancements:damage/additional_damage_1
effect give @p[distance=..1,tag=!temporary_tag,gamemode=adventure,tag=is_fighter] instant_damage 1 0 true
execute as @p[distance=..1,tag=!temporary_tag,gamemode=adventure,tag=is_fighter] at @s run function fighter:damage/damage_taken


##Particles and Sounds
playsound minecraft:block.note_block.bit master @a ~ ~ ~
execute if entity @s[tag=gene_blue_letter] run particle item blue_concrete ~ ~0.85 ~ 0.25 0.25 0.25 0.25 50
execute if entity @s[tag=gene_aqua_letter] run particle item light_blue_concrete ~ ~0.85 ~ 0.25 0.25 0.25 0.25 50
execute if entity @s[tag=gene_yellow_letter] run particle item yellow_concrete ~ ~0.85 ~ 0.25 0.25 0.25 0.25 50

##Tag removal
tag @a remove temporary_tag

##Kill letter
function fighter:entity_death_timer_over