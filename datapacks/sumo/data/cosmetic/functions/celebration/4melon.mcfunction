# Melon Rain Celebration by Calverin
# Summon Melons
execute as @a[tag=winner,scores={celebration=4}] at @s if score $end cooldown matches 90.. run summon minecraft:snowball ~ ~ ~ {Item:{id:"minecraft:melon",Count:1b},Tags:["melonWin","die"]}
execute as @a[tag=winner,scores={celebration=4}] at @s if score $end cooldown matches 90.. run summon minecraft:snowball ~ ~ ~ {Item:{id:"minecraft:melon_slice",Count:1b},Tags:["melonWin","die"]}
execute as @a[tag=winner,scores={celebration=4}] at @s if score $end cooldown matches 90.. run summon minecraft:snowball ~ ~ ~ {Item:{id:"minecraft:melon",Count:1b},Tags:["melonWin","die"]}
execute as @a[tag=winner,scores={celebration=4}] at @s if score $end cooldown matches 90.. run summon minecraft:snowball ~ ~ ~ {Item:{id:"minecraft:melon",Count:1b},Tags:["melonWin","die"]}
execute as @a[tag=winner,scores={celebration=4}] at @s if score $end cooldown matches 90.. run summon minecraft:snowball ~ ~ ~ {Item:{id:"minecraft:glistering_melon_slice",Count:1b},Tags:["melonWin","die"]}
execute as @a[tag=winner,scores={celebration=4}] at @s if score $end cooldown matches 90.. run summon minecraft:snowball ~ ~ ~ {Item:{id:"minecraft:melon",Count:1b},Tags:["melonWin","die"]}
execute as @a[tag=winner,scores={celebration=4}] at @s if score $end cooldown matches 90.. run summon minecraft:snowball ~ ~ ~ {Item:{id:"minecraft:melon_slice",Count:1b},Tags:["melonWin","die"]}
execute as @a[tag=winner,scores={celebration=4}] at @s if score $end cooldown matches 90.. run summon minecraft:snowball ~ ~ ~ {Item:{id:"minecraft:melon",Count:1b},Tags:["melonWin","die"]}
execute as @a[tag=winner,scores={celebration=4}] at @s if score $end cooldown matches 90.. run summon minecraft:snowball ~ ~ ~ {Item:{id:"minecraft:melon",Count:1b},Tags:["melonWin","die"]}
execute as @a[tag=winner,scores={celebration=4}] at @s if score $end cooldown matches 90.. run summon minecraft:snowball ~ ~ ~ {Item:{id:"minecraft:melon",Count:1b},Tags:["melonWin","die"]}
execute as @a[tag=winner,scores={celebration=4}] at @s if score $end cooldown matches 90.. run summon minecraft:snowball ~ ~ ~ {Item:{id:"minecraft:melon_slice",Count:1b},Tags:["melonWin","die"]}
execute as @a[tag=winner,scores={celebration=4}] at @s if score $end cooldown matches 90.. run summon minecraft:snowball ~ ~ ~ {Item:{id:"minecraft:melon",Count:1b},Tags:["melonWin","die"]}
execute as @a[tag=winner,scores={celebration=4}] at @s if score $end cooldown matches 90.. run summon minecraft:snowball ~ ~ ~ {Item:{id:"minecraft:glistering_melon_slice",Count:1b},Tags:["melonWin","die"]}
execute as @a[tag=winner,scores={celebration=4}] at @s if score $end cooldown matches 90.. run summon minecraft:snowball ~ ~ ~ {Item:{id:"minecraft:melon",Count:1b},Tags:["melonWin","die"]}
execute as @a[tag=winner,scores={celebration=4}] at @s if score $end cooldown matches 90.. run summon minecraft:snowball ~ ~ ~ {Item:{id:"minecraft:melon",Count:1b},Tags:["melonWin","die"]}
execute as @a[tag=winner,scores={celebration=4}] at @s if score $end cooldown matches 90.. run summon minecraft:snowball ~ ~ ~ {Item:{id:"minecraft:melon",Count:1b},Tags:["melonWin","die"]}
# Spread Melons
execute as @a[tag=winner,scores={celebration=4}] at @s if score $end cooldown matches 90.. run spreadplayers ~ ~ 0.25 3 under 80 false @e[tag=melonWin,type=snowball,limit=16,sort=nearest]
execute as @e[tag=melonWin,type=snowball] at @s if score $end cooldown matches 90.. run tp @s ~ ~10 ~
execute as @e[tag=melonWin,type=snowball,limit=4,sort=random] at @s if score $end cooldown matches 90.. run tp @s ~ ~3 ~
execute as @e[tag=melonWin,type=snowball,limit=4,sort=random] at @s if score $end cooldown matches 90.. run tp @s ~ ~3 ~
execute as @e[tag=melonWin,type=snowball,limit=4,sort=random] at @s if score $end cooldown matches 90.. run tp @s ~ ~3 ~
execute as @e[tag=melonWin,type=snowball] at @s if score $end cooldown matches 1.. unless block ~ ~-1 ~ air if block ~ ~ ~ air run playsound minecraft:block.slime_block.break master @a ~ ~ ~ 0.01 0