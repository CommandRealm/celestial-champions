##Summoning area effect cloud warp spot, then rotate them, then copy our id onto them, then remove their needs id tag.
summon marker ~ ~ ~ {Tags:["enderman_warp_spot","die","needs_copied_id","on_death_timer","needs_death_timer"]}
scoreboard players set @e[type=marker,tag=needs_copied_id,sort=nearest,limit=1] death_timer 60
tp @e[type=marker,tag=needs_copied_id,sort=nearest,limit=1] @s
scoreboard players operation @e[type=marker,tag=needs_copied_id,sort=nearest,limit=1] id = @s id
tag @e[type=marker,tag=needs_copied_id,sort=nearest,limit=1] remove needs_copied_id