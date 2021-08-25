# Throne Celebration by Calverin

# Rotate and Helmet
execute if score $end cooldown matches 99 as @a[tag=winner,scores={celebration=17}] at @s run tp @s ~ ~ ~ facing 0 77 86
execute if score $end cooldown matches 99 as @a[tag=winner,scores={celebration=17}] at @s run replaceitem entity @s armor.head minecraft:golden_helmet

# Layer 0 and 1
execute if score $end cooldown matches 97 run fill 1 75 86 1 76 86 gold_block
execute if score $end cooldown matches 95 run fill 0 75 86 0 76 86 gold_block
execute if score $end cooldown matches 93 run fill -1 75 86 -1 76 86 gold_block
execute if score $end cooldown matches 91 run fill 1 75 87 1 76 87 gold_block
execute if score $end cooldown matches 89 run fill 0 75 87 0 76 87 gold_block
execute if score $end cooldown matches 87 run fill -1 75 87 -1 76 87 gold_block
# Layer 2
execute if score $end cooldown matches 85 run setblock 1 77 86 gold_block
execute if score $end cooldown matches 85 run setblock -1 77 86 gold_block
execute if score $end cooldown matches 83 run setblock 0 77 86 red_carpet
# Layer 2 and 3
execute if score $end cooldown matches 81 run fill 1 77 87 1 78 87 gold_block
execute if score $end cooldown matches 79 run setblock 0 77 87 gold_block
execute if score $end cooldown matches 79 run setblock 0 78 87 emerald_block
execute if score $end cooldown matches 77 run fill -1 77 87 -1 78 87 gold_block
# Layer 4
execute if score $end cooldown matches 75 run setblock 0 79 87 gold_block
# Buttons
execute if score $end cooldown matches 73 run setblock 1 78 86 minecraft:polished_blackstone_button[face=wall,facing=north,powered=true]
execute if score $end cooldown matches 73 run setblock 0 79 86 minecraft:polished_blackstone_button[face=wall,facing=north,powered=true]
execute if score $end cooldown matches 73 run setblock -1 78 86 minecraft:polished_blackstone_button[face=wall,facing=north,powered=true]
execute if score $end cooldown matches 71 run playsound minecraft:ui.toast.challenge_complete master @a 0 77 86 20 0
# Clear
execute if score $end cooldown matches 1 run fill 1 75 86 -1 79 87 air
execute if score $end cooldown matches 1 as @a[tag=winner,scores={celebration=17}] at @s run replaceitem entity @s armor.head air