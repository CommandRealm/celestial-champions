##Called when a block hits someone


##Tag so that the original player can't be acted upon
tag @a[distance=..2.5,scores={calculate=0},gamemode=adventure,tag=is_fighter] add temporary_tag

execute at @p[distance=..2.5,tag=!temporary_tag,gamemode=adventure,tag=is_fighter] run scoreboard players operation @p[distance=..2.5,tag=!temporary_tag] calculate = @s id
execute as @p[distance=..2.5,tag=!temporary_tag,gamemode=adventure,tag=is_fighter] at @s run function game:give_advancement_from_self_calculate
advancement grant @p[distance=..2.5,tag=!temporary_tag,gamemode=adventure,tag=is_fighter] only advancements:damage/additional_damage_9
effect give @p[distance=..2.5,tag=!temporary_tag,gamemode=adventure,tag=is_fighter] instant_damage 1 0 true
execute as @p[distance=..2.5,tag=!temporary_tag,gamemode=adventure,tag=is_fighter] at @s run function fighter:damage/damage_taken


##Particles and Sounds
playsound minecraft:block.anvil.place master @a ~ ~ ~ 1 0.85

particle block cauldron ~ ~ ~ 0.25 0.25 0.25 0.25 100


##Tag removal
tag @a remove temporary_tag

##Kill block
function fighter:entity_death_timer_over