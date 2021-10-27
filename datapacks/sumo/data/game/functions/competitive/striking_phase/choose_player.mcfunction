##called to choose the first player on striking maps.

tag @a remove just_striked
tag @s add just_striked
execute unless entity @a[tag=just_striked,tag=playing] run tag @r[tag=playing] add just_striked

##Tping everyone to their proper positions.
tp @a[tag=playing,tag=just_striked] 0 61 81 0 20
tp @a[tag=playing,tag=!just_striked] 0 61 85 0 5

tellraw @a[tag=playing,tag=!just_striked] [{"text":"- ","color":"gray"},{"text":"Choose a map to strike. ","color":"red"},{"text":"\nOnce one map remains, you will play on that map.","color":"gold"}]
execute as @a[tag=playing,tag=!just_striked] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5