# Anvil Squash Celebration by Calverin
execute if score $end cooldown matches 99 run summon minecraft:armor_stand 0 77 83 {Tags:["anvilWin","die"],NoGravity:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,Rotation:[180f],DisabledSlots:2039583}
execute if score $end cooldown matches 99 run tag @a[tag=winner,limit=1,sort=random,scores={celebration=3}] add anvilWinner
execute as @a[tag=winner,tag=anvilWinner,scores={celebration=3}] at @s run function fighter:costume/update_costume
execute as @a[tag=winner,tag=anvilWinner,scores={celebration=3}] at @s if score $end cooldown matches 99 run data modify entity @e[type=armor_stand,tag=anvilWin,sort=nearest,limit=1] ArmorItems[0] set from entity @s Inventory[{Slot:100b}]
execute as @a[tag=winner,tag=anvilWinner,scores={celebration=3}] at @s if score $end cooldown matches 99 run data modify entity @e[type=armor_stand,tag=anvilWin,sort=nearest,limit=1] ArmorItems[1] set from entity @s Inventory[{Slot:101b}]
execute as @a[tag=winner,tag=anvilWinner,scores={celebration=3}] at @s if score $end cooldown matches 99 run data modify entity @e[type=armor_stand,tag=anvilWin,sort=nearest,limit=1] ArmorItems[2] set from entity @s Inventory[{Slot:102b}]
execute as @a[tag=winner,tag=anvilWinner,scores={celebration=3}] at @s if score $end cooldown matches 99 run data modify entity @e[type=armor_stand,tag=anvilWin,sort=nearest,limit=1] ArmorItems[3] set from entity @s Inventory[{Slot:103b}]
execute as @a[tag=winner,scores={celebration=3},limit=1,sort=random] at @s if score $end cooldown matches 99 run tp @e[type=armor_stand,tag=anvilWin,sort=nearest,limit=1,distance=..1] ~2 76.51 ~
execute if score $end cooldown matches 99 run summon minecraft:armor_stand 0 77 83 {Tags:["anvilWin","die"],NoGravity:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,Rotation:[180f],DisabledSlots:2039583}
execute if score $end cooldown matches 99 run tag @a remove anvilWinner
execute if score $end cooldown matches 99 run tag @a[tag=winner,limit=1,sort=random,tag=playing] add anvilWinner
execute as @a[tag=winner,tag=anvilWinner,scores={celebration=3}] at @s if score $end cooldown matches 99 run data modify entity @e[type=armor_stand,tag=anvilWin,sort=nearest,limit=1] ArmorItems[0] set from entity @s Inventory[{Slot:100b}]
execute as @a[tag=winner,tag=anvilWinner,scores={celebration=3}] at @s if score $end cooldown matches 99 run data modify entity @e[type=armor_stand,tag=anvilWin,sort=nearest,limit=1] ArmorItems[1] set from entity @s Inventory[{Slot:101b}]
execute as @a[tag=winner,tag=anvilWinner,scores={celebration=3}] at @s if score $end cooldown matches 99 run data modify entity @e[type=armor_stand,tag=anvilWin,sort=nearest,limit=1] ArmorItems[2] set from entity @s Inventory[{Slot:102b}]
execute as @a[tag=winner,tag=anvilWinner,scores={celebration=3}] at @s if score $end cooldown matches 99 run data modify entity @e[type=armor_stand,tag=anvilWin,sort=nearest,limit=1] ArmorItems[3] set from entity @s Inventory[{Slot:103b}]
execute as @a[tag=winner,scores={celebration=3},limit=1,sort=random] at @s if score $end cooldown matches 99 run tp @e[type=armor_stand,tag=anvilWin,sort=nearest,limit=1,distance=..1] ~-2 76.51 ~
execute if score $end cooldown matches 99 run summon minecraft:armor_stand 0 77 83 {Tags:["anvilWin","die"],NoGravity:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,Rotation:[180f],DisabledSlots:2039583}
execute if score $end cooldown matches 99 run tag @a remove anvilWinner
execute if score $end cooldown matches 99 run tag @a[tag=winner,limit=1,sort=random,tag=playing] add anvilWinner
execute as @a[tag=winner,tag=anvilWinner,scores={celebration=3}] at @s if score $end cooldown matches 99 run data modify entity @e[type=armor_stand,tag=anvilWin,sort=nearest,limit=1] ArmorItems[0] set from entity @s Inventory[{Slot:100b}]
execute as @a[tag=winner,tag=anvilWinner,scores={celebration=3}] at @s if score $end cooldown matches 99 run data modify entity @e[type=armor_stand,tag=anvilWin,sort=nearest,limit=1] ArmorItems[1] set from entity @s Inventory[{Slot:101b}]
execute as @a[tag=winner,tag=anvilWinner,scores={celebration=3}] at @s if score $end cooldown matches 99 run data modify entity @e[type=armor_stand,tag=anvilWin,sort=nearest,limit=1] ArmorItems[2] set from entity @s Inventory[{Slot:102b}]
execute as @a[tag=winner,tag=anvilWinner,scores={celebration=3}] at @s if score $end cooldown matches 99 run data modify entity @e[type=armor_stand,tag=anvilWin,sort=nearest,limit=1] ArmorItems[3] set from entity @s Inventory[{Slot:103b}]
execute as @a[tag=winner,scores={celebration=3},limit=1,sort=random] at @s if score $end cooldown matches 99 run tp @e[type=armor_stand,tag=anvilWin,sort=nearest,limit=1,distance=..1] ~ 76.51 ~2
execute if score $end cooldown matches 99 run summon minecraft:armor_stand 0 77 83 {Tags:["anvilWin","die"],NoGravity:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,Rotation:[180f],DisabledSlots:2039583}
execute if score $end cooldown matches 99 run tag @a remove anvilWinner
execute if score $end cooldown matches 99 run tag @a[tag=winner,limit=1,sort=random,tag=playing] add anvilWinner
execute as @a[tag=winner,tag=anvilWinner,scores={celebration=3}] at @s if score $end cooldown matches 99 run data modify entity @e[type=armor_stand,tag=anvilWin,sort=nearest,limit=1] ArmorItems[0] set from entity @s Inventory[{Slot:100b}]
execute as @a[tag=winner,tag=anvilWinner,scores={celebration=3}] at @s if score $end cooldown matches 99 run data modify entity @e[type=armor_stand,tag=anvilWin,sort=nearest,limit=1] ArmorItems[1] set from entity @s Inventory[{Slot:101b}]
execute as @a[tag=winner,tag=anvilWinner,scores={celebration=3}] at @s if score $end cooldown matches 99 run data modify entity @e[type=armor_stand,tag=anvilWin,sort=nearest,limit=1] ArmorItems[2] set from entity @s Inventory[{Slot:102b}]
execute as @a[tag=winner,tag=anvilWinner,scores={celebration=3}] at @s if score $end cooldown matches 99 run data modify entity @e[type=armor_stand,tag=anvilWin,sort=nearest,limit=1] ArmorItems[3] set from entity @s Inventory[{Slot:103b}]
execute as @a[tag=winner,scores={celebration=3},limit=1,sort=random] at @s if score $end cooldown matches 99 run tp @e[type=armor_stand,tag=anvilWin,sort=nearest,limit=1,distance=..1] ~ 76.51 ~-2
execute if score $end cooldown matches 99 run tag @a remove anvilWinner

execute if score $end cooldown matches 98 as @e[tag=anvilWin,type=armor_stand] at @s run summon minecraft:falling_block ~ ~10 ~ {Time:1,BlockState:{Name:"minecraft:anvil"},DropItem:0,HurtEntities:0}
execute as @e[tag=anvilWin,type=armor_stand] at @s if entity @e[type=falling_block,distance=..1] run data merge entity @s {Small:1b}
execute as @e[tag=anvilWin,type=armor_stand] at @s if entity @e[type=falling_block,distance=..1] run playsound minecraft:block.anvil.land master @a ~ ~ ~ 1 .9
execute as @e[tag=anvilWin,type=armor_stand] at @s if entity @e[type=falling_block,distance=..1] run playsound minecraft:block.slime_block.break master @a ~ ~ ~ 20 0 1
execute as @e[tag=anvilWin,type=armor_stand] at @s if score $end cooldown matches 1 run kill @s