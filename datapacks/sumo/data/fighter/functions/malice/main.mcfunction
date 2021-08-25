##Called when someone is playing as malice.

##If arrow hits block
execute as @e[type=arrow,nbt={inGround:1b},tag=malice_arrow] at @s run function fighter:malice/arrow_in_block




##If player is hit by arrow.
execute as @a[tag=is_fighter,gamemode=adventure,advancements={advancements:damage/damaged_by_malice_arrow=true}] at @s run function fighter:malice/hit_by_malice_arrow

##Called to copy the id of the nearest arrow to the player

execute as @a[tag=is_fighter,gamemode=adventure] at @s run function fighter:malice/get_nearest_arrow_id


##Particle

execute as @e[type=area_effect_cloud,tag=malice_detonation] at @s run function fighter:malice/show_owner_particle

##If detonation spot needs to follow player
execute as @e[type=area_effect_cloud,tag=malice_tracker] at @s run function fighter:malice/track_player


##sound for Jetpack
execute if entity @a[scores={ability_state=1,ability_timer=1..,fighter=15},tag=is_fighter] run function fighter:malice/jetpack_effects

##Making sure we don't need to get our arrow back.
execute as @a[tag=is_fighter,gamemode=adventure,scores={fighter=15,arrow_timer=101..}] unless entity @s[nbt={Inventory:[{id:"minecraft:arrow"}]}] at @s run function fighter:malice/check_if_we_need_arrow