##Called when someone is playing as malice.

##If arrow hits block
execute as @e[type=arrow,nbt={inGround:1b},tag=malice_arrow] at @s run function fighter:malice/arrow_in_block


execute as @a[tag=is_fighter,gamemode=adventure,advancements={advancements:damage/damaged_by_malice_arrow=true}] at @s run function fighter:malice/hit_by_malice_arrow

##Particle when malice is using ground ability

##Called to copy the id of the nearest arrow to the player
execute at @a[scores={ability_state=1,ability_timer=1..,fighter=15,ability_type=0},tag=is_fighter] run particle dust 0.427 0.38 0.506 1 ~ ~1 ~ 0.25 0.5 0.25 0.15 5

execute as @a[tag=is_fighter,gamemode=adventure] at @s run function fighter:malice/get_nearest_arrow_id


##Particle

execute as @e[type=area_effect_cloud,tag=malice_detonation] at @s run function fighter:malice/show_owner_particle

##If detonation spot needs to follow player
execute as @e[type=area_effect_cloud,tag=malice_tracker] at @s run function fighter:malice/track_player


##sound for Jetpack
execute if entity @a[scores={ability_state=1,ability_timer=1..,fighter=15,ability_type=1},tag=is_fighter] run function fighter:malice/jetpack_effects


##If a player has the recall item
execute as @a[tag=is_fighter,gamemode=adventure,scores={fighter=15,drop_red_dye=1..}] at @s unless score @s random_cooldown matches 1.. run function fighter:malice/start_detonate
