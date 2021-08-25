# Parrot Dance Party Celebration by Calverin
execute as @a[tag=winner,scores={celebration=15}] at @s if score $end cooldown matches 99 run replaceitem entity @s armor.head jukebox
execute as @a[tag=winner,scores={celebration=15}] at @s if score $end cooldown matches 99 run setblock 0 76 80 minecraft:jukebox[has_record=false]{}
execute as @a[tag=winner,scores={celebration=15}] at @s if score $end cooldown matches 99 run give @s music_disc_blocks{CanPlaceOn:["minecraft:jukebox"]}
execute as @a[tag=winner,scores={celebration=15}] at @s if score $end cooldown matches 99 run give @s music_disc_cat{CanPlaceOn:["minecraft:jukebox"]}
execute as @a[tag=winner,scores={celebration=15}] at @s if score $end cooldown matches 99 run give @s music_disc_chirp{CanPlaceOn:["minecraft:jukebox"]}
execute as @a[tag=winner,scores={celebration=15}] at @s if score $end cooldown matches 99 run give @s music_disc_far{CanPlaceOn:["minecraft:jukebox"]}
execute as @a[tag=winner,scores={celebration=15}] at @s if score $end cooldown matches 99 run give @s music_disc_mall{CanPlaceOn:["minecraft:jukebox"]}
execute as @a[tag=winner,scores={celebration=15}] at @s if score $end cooldown matches 99 run give @s music_disc_mellohi{CanPlaceOn:["minecraft:jukebox"]}
execute as @a[tag=winner,scores={celebration=15}] at @s if score $end cooldown matches 99 run give @s music_disc_pigstep{CanPlaceOn:["minecraft:jukebox"]}
execute as @a[tag=winner,scores={celebration=15}] at @s if score $end cooldown matches 99 run give @s music_disc_stal{CanPlaceOn:["minecraft:jukebox"]}
execute as @a[tag=winner,scores={celebration=15}] at @s if score $end cooldown matches 99 run give @s music_disc_11{CanPlaceOn:["minecraft:jukebox"]}

execute positioned 0 76 83 if score $end cooldown matches 99 run summon parrot -2 77 82 {Tags:["die","danceWin"],Rotation:[180f],Variant:0}
execute positioned 0 76 83 if score $end cooldown matches 99 run summon parrot -2 77 81 {Tags:["die","danceWin"],Rotation:[180f],Variant:1}
execute positioned 0 76 83 if score $end cooldown matches 99 run summon parrot -1 77 81 {Tags:["die","danceWin"],Rotation:[180f],Variant:2}
execute positioned 0 76 83 if score $end cooldown matches 99 run summon parrot 1 77 81 {Tags:["die","danceWin"],Rotation:[180f],Variant:3}
execute positioned 0 76 83 if score $end cooldown matches 99 run summon parrot 2 77 81 {Tags:["die","danceWin"],Rotation:[180f],Variant:4}
execute positioned 0 76 83 if score $end cooldown matches 99 run summon parrot 2 77 82 {Tags:["die","danceWin"],Rotation:[180f],Variant:0}

execute as @a[tag=winner,scores={celebration=15}] at @s if score $end cooldown matches 1.. run particle note ~ ~2 ~ 0 0 0 1 0 normal
execute as @e[tag=danceWin,type=parrot] at @s if score $end cooldown matches 1.. run tp @s ~ ~ ~ facing entity @a[tag=winner,scores={celebration=15},limit=1,sort=nearest]

execute as @a[tag=winner,scores={celebration=15}] at @s if score $end cooldown matches 1 run tp @e[tag=danceWin] ~ ~-5000 ~
execute as @a[tag=winner,scores={celebration=15}] at @s if score $end cooldown matches 1 run setblock 0 76 80 air
execute as @a[tag=winner,scores={celebration=15}] at @s if score $end cooldown matches 1 run stopsound @a record music_disc.blocks
execute as @a[tag=winner,scores={celebration=15}] at @s if score $end cooldown matches 1 run stopsound @a record music_disc.cat
execute as @a[tag=winner,scores={celebration=15}] at @s if score $end cooldown matches 1 run stopsound @a record music_disc.chirp
execute as @a[tag=winner,scores={celebration=15}] at @s if score $end cooldown matches 1 run stopsound @a record music_disc.far
execute as @a[tag=winner,scores={celebration=15}] at @s if score $end cooldown matches 1 run stopsound @a record music_disc.mall
execute as @a[tag=winner,scores={celebration=15}] at @s if score $end cooldown matches 1 run stopsound @a record music_disc.mellohi
execute as @a[tag=winner,scores={celebration=15}] at @s if score $end cooldown matches 1 run stopsound @a record music_disc.pigstep
execute as @a[tag=winner,scores={celebration=15}] at @s if score $end cooldown matches 1 run stopsound @a record music_disc.stal
execute as @a[tag=winner,scores={celebration=15}] at @s if score $end cooldown matches 1 run stopsound @a record music_disc.11
execute as @a[tag=winner,scores={celebration=15}] at @s if score $end cooldown matches 1 run clear @s