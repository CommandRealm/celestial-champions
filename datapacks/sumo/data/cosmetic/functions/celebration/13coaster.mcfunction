# Rollercoaster Celebration by Calverin
execute if score $end cooldown matches 99 run playsound minecraft:entity.minecart.riding master @a 2 76 80 20 0.2
#execute if score $end cooldown matches 99 run summon minecraft:falling_block -3 76 80 {BlockState:{Name:"minecraft:rail",Properties:{shape:south_east}},NoGravity:1b,Time:-2147483648,Tags:["coasterWin","die"]}
#execute if score $end cooldown matches 99 run summon minecraft:falling_block -2 76 80 {BlockState:{Name:"minecraft:rail",Properties:{shape:east_west}},NoGravity:1b,Time:-2147483648,Tags:["coasterWin","die"]}
#execute if score $end cooldown matches 99 run summon minecraft:falling_block -1 76 80 {BlockState:{Name:"minecraft:rail",Properties:{shape:east_west}},NoGravity:1b,Time:-2147483648,Tags:["coasterWin","die"]}
#execute if score $end cooldown matches 99 run summon minecraft:falling_block 0 76 80 {BlockState:{Name:"minecraft:rail",Properties:{shape:east_west}},NoGravity:1b,Time:-2147483648,Tags:["coasterWin","die"]}
#execute if score $end cooldown matches 99 run summon minecraft:falling_block 1 76 80 {BlockState:{Name:"minecraft:rail",Properties:{shape:east_west}},NoGravity:1b,Time:-2147483648,Tags:["coasterWin","die"]}
#execute if score $end cooldown matches 99 run summon minecraft:falling_block 2 76 80 {BlockState:{Name:"minecraft:rail",Properties:{shape:east_west}},NoGravity:1b,Time:-2147483648,Tags:["coasterWin","die"]}
#execute if score $end cooldown matches 99 run summon minecraft:falling_block -3 76 81 {BlockState:{Name:"minecraft:rail",Properties:{shape:north_south}},NoGravity:1b,Time:-2147483648,Tags:["coasterWin","die"]}
#execute if score $end cooldown matches 99 run summon minecraft:falling_block -3 76 82 {BlockState:{Name:"minecraft:rail",Properties:{shape:north_south}},NoGravity:1b,Time:-2147483648,Tags:["coasterWin","die"]}
#execute if score $end cooldown matches 99 run summon minecraft:falling_block -3 76 83 {BlockState:{Name:"minecraft:rail",Properties:{shape:north_south}},NoGravity:1b,Time:-2147483648,Tags:["coasterWin","die"]}
#execute if score $end cooldown matches 99 run summon minecraft:falling_block -3 76 84 {BlockState:{Name:"minecraft:rail",Properties:{shape:north_south}},NoGravity:1b,Time:-2147483648,Tags:["coasterWin","die"]}
#execute if score $end cooldown matches 99 run summon minecraft:falling_block -3 76 85 {BlockState:{Name:"minecraft:rail",Properties:{shape:north_south}},NoGravity:1b,Time:-2147483648,Tags:["coasterWin","die"]}
#execute if score $end cooldown matches 99 run summon minecraft:falling_block -2 76 86 {BlockState:{Name:"minecraft:rail",Properties:{shape:east_west}},NoGravity:1b,Time:-2147483648,Tags:["coasterWin","die"]}
#execute if score $end cooldown matches 99 run summon minecraft:falling_block -1 76 86 {BlockState:{Name:"minecraft:rail",Properties:{shape:east_west}},NoGravity:1b,Time:-2147483648,Tags:["coasterWin","die"]}
#execute if score $end cooldown matches 99 run summon minecraft:falling_block 0 76 86 {BlockState:{Name:"minecraft:rail",Properties:{shape:east_west}},NoGravity:1b,Time:-2147483648,Tags:["coasterWin","die"]}
#execute if score $end cooldown matches 99 run summon minecraft:falling_block 1 76 86 {BlockState:{Name:"minecraft:rail",Properties:{shape:east_west}},NoGravity:1b,Time:-2147483648,Tags:["coasterWin","die"]}
#execute if score $end cooldown matches 99 run summon minecraft:falling_block 2 76 86 {BlockState:{Name:"minecraft:rail",Properties:{shape:east_west}},NoGravity:1b,Time:-2147483648,Tags:["coasterWin","die"]}
#execute if score $end cooldown matches 99 run summon minecraft:falling_block 3 76 81 {BlockState:{Name:"minecraft:rail",Properties:{shape:north_south}},NoGravity:1b,Time:-2147483648,Tags:["coasterWin","die"]}
#execute if score $end cooldown matches 99 run summon minecraft:falling_block 3 76 82 {BlockState:{Name:"minecraft:rail",Properties:{shape:north_south}},NoGravity:1b,Time:-2147483648,Tags:["coasterWin","die"]}
#execute if score $end cooldown matches 99 run summon minecraft:falling_block 3 76 83 {BlockState:{Name:"minecraft:rail",Properties:{shape:north_south}},NoGravity:1b,Time:-2147483648,Tags:["coasterWin","die"]}
#execute if score $end cooldown matches 99 run summon minecraft:falling_block 3 76 84 {BlockState:{Name:"minecraft:rail",Properties:{shape:north_south}},NoGravity:1b,Time:-2147483648,Tags:["coasterWin","die"]}
#execute if score $end cooldown matches 99 run summon minecraft:falling_block 3 76 85 {BlockState:{Name:"minecraft:rail",Properties:{shape:north_south}},NoGravity:1b,Time:-2147483648,Tags:["coasterWin","die"]}
#execute if score $end cooldown matches 99 run summon minecraft:falling_block -3 76 86 {BlockState:{Name:"minecraft:rail",Properties:{shape:north_east}},NoGravity:1b,Time:-2147483648,Tags:["coasterWin","die"]}
#execute if score $end cooldown matches 99 run summon minecraft:falling_block 3 76 86 {BlockState:{Name:"minecraft:rail",Properties:{shape:north_west}},NoGravity:1b,Time:-2147483648,Tags:["coasterWin","die"]}
#execute if score $end cooldown matches 99 run summon minecraft:falling_block 3 76 80 {BlockState:{Name:"minecraft:rail",Properties:{shape:south_west}},NoGravity:1b,Time:-2147483648,Tags:["coasterWin","die"]}

execute if score $end cooldown matches 99 run summon minecart 2 76 80 {NoGravity:1b,Invulnerable:1b,Tags:["coasterWin","die","cart"]}
execute if score $end cooldown matches 80..99 as @e[tag=cart,tag=coasterWin] at @s run tp @s ~-.25 ~ ~ 0 0
execute if score $end cooldown matches 56..79 as @e[tag=cart,tag=coasterWin] at @s run tp @s ~ ~ ~.25 -150 0
execute if score $end cooldown matches 31..55 as @e[tag=cart,tag=coasterWin] at @s run tp @s ~.25 ~ ~ -240 0
execute if score $end cooldown matches 7..30 as @e[tag=cart,tag=coasterWin] at @s run tp @s ~ ~ ~-.25 -330 0
execute if score $end cooldown matches 1..6 as @e[tag=cart,tag=coasterWin] at @s run tp @s ~-.25 ~ ~ 0 0
execute if score $end cooldown matches 1.. as @e[tag=cart,tag=coasterWin] at @s run particle cloud ~ ~-.1 ~ 0 0 0 1 0 normal

execute if score $end cooldown matches 1 run kill @e[tag=coasterWin]