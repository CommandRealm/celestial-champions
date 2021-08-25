##called to make the smoke bomb blind.

##Smoke bomb effects (copied from Stealthiators)
execute as @a[distance=..3] at @s unless entity @s[scores={calculate=0}] run effect give @s blindness 2 255 false
particle smoke ~ ~.5 ~ 2 2 2 0.5 100 normal @a
playsound minecraft:entity.illusioner.prepare_blindness master @a ~ ~ ~ 1 2
playsound minecraft:entity.illusioner.mirror_move master @a ~ ~ ~ 1 1

##stun
execute as @a[distance=..3] at @s unless entity @s[scores={calculate=0}] run scoreboard players set @s stun 20
execute as @a[distance=..3] at @s unless entity @s[scores={calculate=0}] run function fighter:stun/start_stun

##Particle
execute as @a[distance=..3] at @s unless entity @s[scores={calculate=0}] run particle squid_ink ~ ~1 ~ 0.25 0.25 0.25 0.15 40

function fighter:entity_death_timer_over