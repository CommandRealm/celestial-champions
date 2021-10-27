##When there is an active guardian shooter.

##If guardian is hit
execute as @e[type=guardian,tag=guardian_shooter,nbt={HurtTime:10s}] at @s run function fighter:guardian/hit_guardian

##Fixing y rotation
execute as @e[type=guardian,tag=guardian_shooter,scores={death_timer=23}] at @s run function fighter:guardian/tp_to_marker

##Shooting laser
execute as @e[type=guardian,tag=guardian_shooter,scores={death_timer=20}] at @s run function fighter:guardian/shoot_laser