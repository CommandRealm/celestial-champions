# Food Stream Celebration by Calverin
execute as @a[tag=winner,scores={celebration=11}] at @s if score $end cooldown matches 1.. run summon snowball ~ ~7 ~ {Tags:["foodWin","die"],Item:{id:"minecraft:cake",Count:1b}}
execute as @a[tag=winner,scores={celebration=11}] at @s if score $end cooldown matches 1.. run summon snowball ~ ~7 ~ {Tags:["foodWin","die"],Item:{id:"minecraft:cookie",Count:1b}}
execute as @a[tag=winner,scores={celebration=11}] at @s if score $end cooldown matches 1.. run summon snowball ~ ~7 ~ {Tags:["foodWin","die"],Item:{id:"minecraft:cooked_chicken",Count:1b}}
execute as @a[tag=winner,scores={celebration=11}] at @s if score $end cooldown matches 1.. run summon snowball ~ ~7 ~ {Tags:["foodWin","die"],Item:{id:"minecraft:golden_apple",Count:1b}}
execute as @a[tag=winner,scores={celebration=11}] at @s if score $end cooldown matches 1.. run summon snowball ~ ~7 ~ {Tags:["foodWin","die"],Item:{id:"minecraft:baked_potato",Count:1b}}
execute as @a[tag=winner,scores={celebration=11}] at @s if score $end cooldown matches 1.. run summon snowball ~ ~7 ~ {Tags:["foodWin","die"],Item:{id:"minecraft:bread",Count:1b}}
execute as @a[tag=winner,scores={celebration=11}] at @s if score $end cooldown matches 1.. run summon snowball ~ ~7 ~ {Tags:["foodWin","die"],Item:{id:"minecraft:pumpkin_pie",Count:1b}}
execute as @a[tag=winner,scores={celebration=11}] at @s if score $end cooldown matches 1.. run summon snowball ~ ~7 ~ {Tags:["foodWin","die"],Item:{id:"minecraft:mushroom_stew",Count:1b}}

execute as @a[tag=winner,scores={celebration=11}] at @s store result score @s eating run data get entity @s Rotation[1]
execute as @a[tag=winner,scores={celebration=11}] at @s if score $end cooldown matches 1..85 if score @s eating matches ..-45 run playsound minecraft:entity.generic.eat master @a ~ ~ ~ 10 1
execute as @a[tag=winner,scores={celebration=11}] at @s if score $end cooldown matches 1 run kill @e[tag=foodWin]