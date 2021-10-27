##Hurting those who should be hit by the laser
execute as @a[scores={calculate=1..},distance=..2,gamemode=adventure,tag=is_fighter] at @s run function fighter:guardian/hit_by_laser
execute as @a[scores={calculate=..-1},distance=..2,gamemode=adventure,tag=is_fighter] at @s run function fighter:guardian/hit_by_laser

particle item dark_prismarine ~ ~ ~ 0 0 0 0.5 50
playsound minecraft:entity.guardian.hurt master @a ~ ~ ~ 1 0.67

##Killing the laser
kill @s