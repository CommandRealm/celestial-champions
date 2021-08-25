##Particle raycast
particle dust 0.886 0.722 0.173 1 ~ ~ ~ 0 0 0 0 1 force @s
execute unless entity @s[distance=..1] positioned ^ ^ ^0.67 run function lobby:tutorial_pointer/raycast