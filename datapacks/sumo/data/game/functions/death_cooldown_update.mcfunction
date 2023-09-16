title @s title [{"translate":""}]
title @s[scores={death_cooldown=80}] subtitle [{"translate":"You died!","color":"red"}]

title @s[scores={death_cooldown=60}] subtitle [{"translate":"You will respawn in ","color":"aqua"},{"translate":"3","bold":true,"color":"white"},{"translate":" seconds.","color":"aqua"}]
title @s[scores={death_cooldown=40}] subtitle [{"translate":"You will respawn in ","color":"aqua"},{"translate":"2","bold":true,"color":"white"},{"translate":" seconds.","color":"aqua"}]
title @s[scores={death_cooldown=20}] subtitle [{"translate":"You will respawn in ","color":"aqua"},{"translate":"1","bold":true,"color":"white"},{"translate":" second.","color":"aqua"}]


playsound minecraft:block.note_block.cow_bell master @s[scores={death_cooldown=80}] ~ ~ ~ 0.25 0.7
playsound minecraft:block.note_block.cow_bell master @s[scores={death_cooldown=60}] ~ ~ ~ 0.35 0.8
playsound minecraft:block.note_block.cow_bell master @s[scores={death_cooldown=40}] ~ ~ ~ 0.45 0.9
playsound minecraft:block.note_block.cow_bell master @s[scores={death_cooldown=20}] ~ ~ ~ 0.5 1.0

playsound minecraft:block.note_block.pling master @s[scores={death_cooldown=80}] ~ ~ ~ 1000 0.7
playsound minecraft:block.note_block.pling master @s[scores={death_cooldown=60}] ~ ~ ~ 1000 0.8
playsound minecraft:block.note_block.pling master @s[scores={death_cooldown=40}] ~ ~ ~ 1000 0.9
playsound minecraft:block.note_block.pling master @s[scores={death_cooldown=20}] ~ ~ ~ 1000 1.0

##
