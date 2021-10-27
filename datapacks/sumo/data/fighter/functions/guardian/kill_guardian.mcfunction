##Called to kill the guardian (and the marker)

#tag
tag @s add this

##finding our marker
execute as @e[type=marker,tag=guardian_tp_point] run scoreboard players operation @s calculate = @s id
execute as @e[type=marker,tag=guardian_tp_point] run scoreboard players operation @s calculate -= @e[type=guardian,tag=this,limit=1] id

kill @e[type=marker,tag=guardian_tp_point,scores={calculate=0}]

#tag
tag @s remove this