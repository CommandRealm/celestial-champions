##Called to swap gamemodes and teleport players to their proper positions.
gamemode spectator @a[tag=playing,tag=!winner]
tp @a[tag=playing] 0 76 83 180 0

##Removing fighter qualities
tag @a[tag=playing] remove is_fighter
clear @a[tag=playing]

##Actionbar clear
title @a[tag=playing] actionbar {"translate":" "}

##Resetting extra jump
scoreboard players reset @a[tag=playing] extra_jump_time
effect clear @a[tag=playing] slow_falling
effect clear @a[tag=playing] levitation


##Sounds
execute as @a[tag=playing] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 10000 2


##Adding winner stats
scoreboard players add @a[tag=winner,tag=playing] stats_wins 1


##kill
kill @e[tag=die]


##advancements
advancement grant @a[tag=playing,tag=winner] only advancements:custom/win_game