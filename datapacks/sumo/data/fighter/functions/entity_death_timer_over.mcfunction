##Run whenever something on the death timer reaches 0. Purpose of it being in a function is so that it can run necessary commands before dying.

##Checks
execute if entity @s[tag=grave] run playsound minecraft:block.grass.break master @a ~ ~ ~ 0.2 1
execute if entity @s[tag=skeleton_tp] run function fighter:skeleton/tossed_skeleton_death
execute if entity @s[tag=creeper_grenade] run function fighter:creeper/grenade_explode
execute if entity @s[tag=spider_web] run function fighter:spider/spider_web_activate
execute if entity @s[tag=incend_blue_tnt,tag=!dont_explode] run function fighter:incend/tnt_explode
execute if entity @s[tag=incend_tnt] run function fighter:incend/tnt_disappear
execute if entity @s[tag=gracea_block] run function fighter:gracea/block_break
##execute if entity @s[tag=gene_letter] run particle cloud ~ ~ ~ 0 0 0 0 1
execute if entity @s[tag=gene_block] run function fighter:gene/block_hit_ground
execute if entity @s[tag=duel_map_point] run function game:duels/map/clear
execute if entity @s[tag=malice_detonation] run function fighter:malice/detonation_over
execute if entity @s[tag=item_spawn] run function item:item_spawn_die
execute if entity @s[tag=idle_buddy] run function item:idle_buddy/die
execute if entity @s[tag=blaze_fireball] run function fighter:blaze/fireball_explode
execute if entity @s[tag=slime_freeze] run function fighter:slime/freeze_over
execute if entity @s[tag=guardian_shooter] run function fighter:guardian/kill_guardian


##Tp before dying
tp @s 0 50 0
##Kill
kill @s


