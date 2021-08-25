##Summoning area effect cloud warp spot, then rotate them, then copy our id onto them, then remove their needs id tag.
summon area_effect_cloud ~ ~ ~ {Tags:["enderman_warp_spot","die","needs_copied_id"],Duration:60}
tp @e[type=area_effect_cloud,tag=needs_copied_id,sort=nearest,limit=1] @s
scoreboard players operation @e[type=area_effect_cloud,tag=needs_copied_id,sort=nearest,limit=1] id = @s id
tag @e[type=area_effect_cloud,tag=needs_copied_id,sort=nearest,limit=1] remove needs_copied_id