# End Portal Celebration by Calverin
execute as @a[tag=winner,scores={celebration=10}] at @s if score $end cooldown matches 95 run setblock -1 76 81 end_portal_frame[eye=true,facing=north]
execute as @a[tag=winner,scores={celebration=10}] at @s if score $end cooldown matches 90 run setblock 0 76 81 end_portal_frame[eye=true,facing=north]
execute as @a[tag=winner,scores={celebration=10}] at @s if score $end cooldown matches 85 run setblock 1 76 81 end_portal_frame[eye=true,facing=north]
execute as @a[tag=winner,scores={celebration=10}] at @s if score $end cooldown matches 80 run setblock 2 76 82 end_portal_frame[eye=true,facing=north]
execute as @a[tag=winner,scores={celebration=10}] at @s if score $end cooldown matches 75 run setblock 2 76 83 end_portal_frame[eye=true,facing=north]
execute as @a[tag=winner,scores={celebration=10}] at @s if score $end cooldown matches 70 run setblock 2 76 84 end_portal_frame[eye=true,facing=north]
execute as @a[tag=winner,scores={celebration=10}] at @s if score $end cooldown matches 65 run setblock 1 76 85 end_portal_frame[eye=true,facing=north]
execute as @a[tag=winner,scores={celebration=10}] at @s if score $end cooldown matches 60 run setblock 0 76 85 end_portal_frame[eye=true,facing=north]
execute as @a[tag=winner,scores={celebration=10}] at @s if score $end cooldown matches 55 run setblock -1 76 85 end_portal_frame[eye=true,facing=north]
execute as @a[tag=winner,scores={celebration=10}] at @s if score $end cooldown matches 50 run setblock -2 76 84 end_portal_frame[eye=true,facing=north]
execute as @a[tag=winner,scores={celebration=10}] at @s if score $end cooldown matches 45 run setblock -2 76 83 end_portal_frame[eye=true,facing=north]
execute as @a[tag=winner,scores={celebration=10}] at @s if score $end cooldown matches 40 run setblock -2 76 82 end_portal_frame[eye=true,facing=north]
execute as @a[tag=winner,scores={celebration=10}] at @s if score $end cooldown matches 39 run fill 1 76 82 -1 76 84 minecraft:end_gateway{Age:200L} replace air

execute as @a[tag=winner,scores={celebration=10}] at @s if score $end cooldown matches 95 run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 10 0.4
execute as @a[tag=winner,scores={celebration=10}] at @s if score $end cooldown matches 90 run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 10 0.5
execute as @a[tag=winner,scores={celebration=10}] at @s if score $end cooldown matches 85 run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 10 0.6
execute as @a[tag=winner,scores={celebration=10}] at @s if score $end cooldown matches 80 run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 10 0.7
execute as @a[tag=winner,scores={celebration=10}] at @s if score $end cooldown matches 75 run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 10 0.8
execute as @a[tag=winner,scores={celebration=10}] at @s if score $end cooldown matches 70 run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 10 0.9
execute as @a[tag=winner,scores={celebration=10}] at @s if score $end cooldown matches 65 run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 10 1.0
execute as @a[tag=winner,scores={celebration=10}] at @s if score $end cooldown matches 60 run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 10 1.1
execute as @a[tag=winner,scores={celebration=10}] at @s if score $end cooldown matches 55 run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 10 1.2
execute as @a[tag=winner,scores={celebration=10}] at @s if score $end cooldown matches 50 run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 10 1.3
execute as @a[tag=winner,scores={celebration=10}] at @s if score $end cooldown matches 45 run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 10 1.4
execute as @a[tag=winner,scores={celebration=10}] at @s if score $end cooldown matches 40 run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 10 1.5
execute as @a[tag=winner,scores={celebration=10}] at @s if score $end cooldown matches 39 run playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 10 0