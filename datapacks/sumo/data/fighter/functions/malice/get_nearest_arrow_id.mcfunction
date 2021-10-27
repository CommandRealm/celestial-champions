##Called to get our nearest arrow id
##copying id score
scoreboard players operation @s malice_arrow_id = @e[type=arrow,tag=malice_arrow,sort=nearest,limit=1] id
