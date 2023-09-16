##called to tell the player selecting what to do

execute unless entity @a[tag=just_striked,tag=playing] run tag @r[tag=playing] add just_striked

##Tping everyone to their proper positions.
tp @a[tag=playing,tag=just_striked] 0 61 81 0 20
tp @a[tag=playing,tag=!just_striked] 0 61 85 0 5

tellraw @a[tag=playing,tag=!just_striked] [{"translate":"- ","color":"gray"},{"translate":"Choose the map to play on. ","color":"red"},{"translate":"\nThe fight will immediately begin.","color":"gold"}]
execute as @a[tag=playing,tag=!just_striked] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.5