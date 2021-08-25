##called to display and use dragon breath

##Tagging ourselves so it doesn't pick us
tag @s add temporary_tag

##Effecting those hit by dragon breath
execute as @a[distance=..2.25,tag=is_fighter,gamemode=adventure,tag=!temporary_tag] at @s run function fighter:drakier/hit_by_dragon_breath



##Particle
particle falling_dust magenta_concrete ~ ~ ~ 0.9 0.9 0.9 0 20


##tag removal
tag @s remove temporary_tag