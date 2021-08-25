##called when there is a tutorial pointer

##Resetting the score if they're too far away
scoreboard players reset @a[scores={tutorial_pointer=1..},x=0,y=66,z=0,distance=10..] tutorial_pointer


scoreboard players remove @a[scores={tutorial_pointer=1..}] tutorial_pointer 1

##activating particle
execute as @a[scores={tutorial_pointer=1..}] at @s positioned -5 65 7 facing entity @s feet positioned ~ ~0.67 ~ run function lobby:tutorial_pointer/raycast