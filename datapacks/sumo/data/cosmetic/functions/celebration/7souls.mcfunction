# Soul Stealer Celebration by Calverin
execute as @a[tag=playing,tag=!winner,limit=1] at @s if score $end cooldown matches 21.. run summon minecraft:snowball ~ ~-1 ~ {Item:{id:"minecraft:light_gray_stained_glass_pane",Count:1b,tag:{CustomModelData:1}},Passengers:[{id:falling_block,BlockState:{Name:"minecraft:soul_fire"},NoGravity:1b,Time:-2147483648,Tags:["soulWin","die"]}],Tags:["soulWin","die"],NoGravity:1b}
execute as @e[tag=winner,scores={celebration=7}] at @s if score $end cooldown matches 10 run particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 1 40 normal

execute as @e[tag=soulWin] at @s store result score @s soulVel run data get entity @s Pos[0] 100
execute as @e[tag=soulWin] at @s as @e[tag=winner,sort=nearest,limit=1] store result score @s soulVel run data get entity @s Pos[0] 100
execute as @e[tag=soulWin] at @s run scoreboard players operation @s soulVel -= @e[tag=winner,limit=1,sort=nearest] soulVel
execute as @e[tag=soulWin] at @s if block ^ ^ ^-1 air store result entity @s Motion[0] double -0.0005 run scoreboard players get @s soulVel

execute as @e[tag=soulWin] at @s store result score @s soulVel run data get entity @s Pos[1] 100
execute as @e[tag=soulWin] at @s as @e[tag=winner,sort=nearest,limit=1] store result score @s soulVel run data get entity @s Pos[1] 101
execute as @e[tag=soulWin] at @s run scoreboard players operation @s soulVel -= @e[tag=winner,limit=1,sort=nearest] soulVel
execute as @e[tag=soulWin] at @s if block ^ ^ ^-1 air store result entity @s Motion[1] double -0.0005 run scoreboard players get @s soulVel

execute as @e[tag=soulWin] at @s store result score @s soulVel run data get entity @s Pos[2] 100
execute as @e[tag=soulWin] at @s as @e[tag=winner,sort=nearest,limit=1] store result score @s soulVel run data get entity @s Pos[2] 100
execute as @e[tag=soulWin] at @s run scoreboard players operation @s soulVel -= @e[tag=winner,limit=1,sort=nearest] soulVel
execute as @e[tag=soulWin] at @s if block ^ ^ ^-1 air store result entity @s Motion[2] double -0.0005 run scoreboard players get @s soulVel

execute as @e[tag=soulWin] at @s if entity @e[tag=winner,distance=..1.5] run kill @s
execute if score $end cooldown matches 10 run kill @e[tag=soulWin,type=!player]