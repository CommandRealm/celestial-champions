##Called to get our nearest arrow id

##tag
tag @s add temporary_tag

##
execute as @e[type=arrow,tag=malice_arrow] at @s unless score @s id = @p[tag=temporary_tag] id run tag @s add temporary_option

##copying id score
scoreboard players operation @s malice_arrow_id = @e[type=arrow,tag=temporary_option,sort=nearest,limit=1] id


##tag removal
tag @s remove temporary_tag
tag @e[type=arrow,tag=temporary_option] remove temporary_option