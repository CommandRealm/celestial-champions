##called to tp the guardian to the marker

#tag
tag @s add this

execute as @e[type=marker,tag=guardian_tp_point] run scoreboard players operation @s calculate = @s id
execute as @e[type=marker,tag=guardian_tp_point] run scoreboard players operation @s calculate -= @e[type=guardian,tag=this,limit=1] id

tp @s @e[type=marker,tag=guardian_tp_point,scores={calculate=0},limit=1]

#tag
tag @s remove this