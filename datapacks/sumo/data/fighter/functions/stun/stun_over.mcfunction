##Called when a player's stun is over

##Score reset
scoreboard players reset @s stun

##Title
title @s title [{"text":""}]
title @s subtitle [{"text":""}]


##Sound
playsound minecraft:entity.zombie.break_wooden_door master @a ~ ~ ~ 1 2

##Effect clear
effect clear @s slowness
effect clear @s weakness