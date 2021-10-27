##Called whenever there should be a training buddy

##Check summon
execute unless entity @e[type=skeleton,tag=training_buddy] run function lobby:training_area/buddy/summon

##Constantly setting it to 1 so that when this function no longer runs, it dies.
scoreboard players set @e[type=skeleton,tag=training_buddy] death_timer 2
execute as @e[type=skeleton,tag=training_buddy] at @s if entity @s[y=30,distance=..10] run function lobby:training_area/buddy/fall_off
execute as @e[type=skeleton,tag=training_buddy,nbt={OnGround:1b}] at @s if entity @s[x=84,y=80,z=0,distance=30..] run scoreboard players set @s death_timer 1

##Blinking
scoreboard players remove $blink_cooldown training_area 1
execute if score $blink_cooldown training_area matches ..0 run function lobby:training_area/buddy/blink_cooldown_over