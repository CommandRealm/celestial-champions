##Called to display your opponent in the subtitle
##tag
tag @s add temporary_tag
title @s subtitle {"selector":"@p[tag=!temporary_tag,tag=playing,distance=..100]"}



##If we're on bye
title @s[scores={duels=..0}] subtitle [{"translate":"You have a bye","color":"gold","bold":false}]


##If our opponent isn't here
execute unless entity @a[tag=playing,tag=!temporary_tag,scores={duels=1..},distance=..100] run title @s[scores={duels=1..}] subtitle [{"translate":"Your opponent is absent","color":"gold","bold":false}]


tag @s remove temporary_tag