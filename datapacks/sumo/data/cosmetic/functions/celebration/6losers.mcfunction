# Losers Celebration by Calverin
execute if score $end cooldown matches 99 run summon armor_stand 0 76 83 {Tags:["loserWinControl","die"],Invisible:1b,Invulnerable:1b,NoGravity:1b,DisabledSlots:2039583}
execute if score $end cooldown matches 99 run summon armor_stand 0 76 83 {Tags:["loserWin","die","loser0"],Invisible:1b,Invulnerable:1b,NoGravity:1b,DisabledSlots:2039583}
execute if score $end cooldown matches 99 run summon armor_stand 0 76 83 {Tags:["loserWin","die","loser1"],Invisible:1b,Invulnerable:1b,NoGravity:1b,DisabledSlots:2039583}
execute if score $end cooldown matches 99 run summon armor_stand 0 76 83 {Tags:["loserWin","die","loser2"],Invisible:1b,Invulnerable:1b,NoGravity:1b,DisabledSlots:2039583}
execute if score $end cooldown matches 99 run summon armor_stand 0 76 83 {Tags:["loserWin","die","loser3"],Invisible:1b,Invulnerable:1b,NoGravity:1b,DisabledSlots:2039583}
execute if score $end cooldown matches 99 as @a[tag=playing,tag=!winner,limit=1,sort=random] at @s run loot replace entity @e[tag=loser0,limit=1,sort=random] armor.head loot cosmetic:player_head
execute if score $end cooldown matches 99 as @a[tag=playing,tag=!winner,limit=1,sort=random] at @s run loot replace entity @e[tag=loser1,limit=1,sort=random] armor.head loot cosmetic:player_head
execute if score $end cooldown matches 99 as @a[tag=playing,tag=!winner,limit=1,sort=random] at @s run loot replace entity @e[tag=loser2,limit=1,sort=random] armor.head loot cosmetic:player_head
execute if score $end cooldown matches 99 as @a[tag=playing,tag=!winner,limit=1,sort=random] at @s run loot replace entity @e[tag=loser3,limit=1,sort=random] armor.head loot cosmetic:player_head
execute if score $end cooldown matches 1..99 as @e[tag=loserWinControl] at @s run tp @e[tag=loserWin,tag=loser0,limit=1] ^ ^ ^3 facing entity @s
execute if score $end cooldown matches 1..99 as @e[tag=loserWinControl] at @s run tp @e[tag=loserWin,tag=loser1,limit=1] ^ ^ ^-3 facing entity @s
execute if score $end cooldown matches 1..99 as @e[tag=loserWinControl] at @s run tp @e[tag=loserWin,tag=loser2,limit=1] ^3 ^ ^ facing entity @s
execute if score $end cooldown matches 1..99 as @e[tag=loserWinControl] at @s run tp @e[tag=loserWin,tag=loser3,limit=1] ^-3 ^ ^ facing entity @s
execute if score $end cooldown matches 1..99 as @e[tag=loserWinControl] at @s run tp @s ~ ~ ~ ~2 ~
execute if score $end cooldown matches 1 run kill @e[tag=loserWin,type=armor_stand]
execute if score $end cooldown matches 1 run kill @e[tag=loserWinControl,type=armor_stand]