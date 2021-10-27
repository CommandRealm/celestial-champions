##called to strike map


execute as @e[type=area_effect_cloud,tag=competitive_nameplate,sort=furthest,limit=6] at @s run function game:competitive/striking_phase/strikethrough_name


function game:competitive/selection_over

execute as @a[tag=playing] at @s run playsound minecraft:block.end_portal_frame.fill master @s ~ ~ ~ 1 0.55