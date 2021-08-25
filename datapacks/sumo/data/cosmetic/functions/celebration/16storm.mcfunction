# Storm Cloud Celebration by Calverin
execute if score $end cooldown matches 90.. run playsound minecraft:weather.rain master @a 80 83 1 20 0
execute if score $end cooldown matches 90.. run particle dust 1 1 1 1 0 80 83 1 .5 1 0 20 normal 
execute if score $end cooldown matches 80..90 run particle dust 0.639 0.639 0.639 1 0 80 83 1 .5 1 0 20 normal
execute if score $end cooldown matches 1..90 run particle rain 0 80 83 1 .5 1 1 10 normal
execute if score $end cooldown matches 70..80 run particle dust 0.306 0.306 0.306 1 0 80 83 1 .5 1 0 20 normal 
execute if score $end cooldown matches 60..70 run particle dust 0 0 0 1 0 80 83 1 .5 1 0 20 normal 
execute if score $end cooldown matches 1..60 run particle minecraft:squid_ink 0 81 83 1 1 1 0 40 normal
execute if score $end cooldown matches 40 run summon lightning_bolt 0 76 83
execute if score $end cooldown matches 30 run summon lightning_bolt 0 76 83
execute if score $end cooldown matches 20 run summon lightning_bolt 0 76 83
execute if score $end cooldown matches 1 run setblock 0 76 83 air