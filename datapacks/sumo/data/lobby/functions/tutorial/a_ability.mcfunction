##Called when we jump



##Particles

execute as @e[type=armor_stand,limit=1,tag=tutorial_abilities] at @s anchored eyes positioned ^ ^ ^2 positioned ~ ~5 ~ run particle dust 1 1 1 1 ~ ~ ~ 1 0 0 0 35
execute as @e[type=armor_stand,limit=1,tag=tutorial_abilities] at @s anchored eyes positioned ^ ^ ^2 positioned ~ ~5 ~ run particle dust 1 1 1 1 ~ ~ ~ 0 0 1 0 35
execute as @e[type=armor_stand,limit=1,tag=tutorial_abilities] at @s anchored eyes positioned ^ ^ ^2 positioned ~ ~5 ~ run particle dust 1 1 1 1 ~ ~ ~ 0 1 0 0 35
execute as @e[type=armor_stand,limit=1,tag=tutorial_abilities] at @s anchored eyes positioned ^ ^ ^2 positioned ~ ~5 ~ run particle minecraft:firework ~ ~ ~ 0 0 0 0.5 50

execute at @e[type=armor_stand,tag=tutorial_abilities] run playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 0.25 2
execute at @e[type=armor_stand,tag=tutorial_abilities] run playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 0.25 1.75
execute at @e[type=armor_stand,tag=tutorial_abilities] run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 0.25 1.25

##Sound (small_fall will pitch down with player's percentage)
