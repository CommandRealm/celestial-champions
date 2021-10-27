##called to strike map
setblock -2 61 88 air destroy
setblock -2 61 88 structure_void
execute positioned -2 61 88 as @e[type=area_effect_cloud,tag=competitive_nameplate,sort=nearest,limit=1] at @s run function game:competitive/striking_phase/strikethrough_name

tellraw @a[tag=playing] [{"selector":"@p[tag=playing,tag=!just_striked]"},{"text":" has chosen to strike ","color":"gray"},{"text":"Fortress","color":"gray"},{"text":"!","color":"gray"}]

##Seeing if six maps have been striked
scoreboard players add $striked_maps game 1
execute if score $striked_maps game matches 6.. run function game:competitive/selection_over

##Selecting next player
execute unless score $striked_maps game matches 6.. as @a[tag=playing,tag=!just_striked] at @s run function game:competitive/striking_phase/choose_player


##announcing which map was striked

execute as @a[tag=playing] at @s run playsound minecraft:block.end_portal_frame.fill master @s ~ ~ ~ 1 0.55
scoreboard players set $time game 2