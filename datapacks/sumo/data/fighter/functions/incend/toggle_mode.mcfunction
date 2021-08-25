##Called to toggle our active mode on the ground ability

##Finding which entity is ours
scoreboard players operation @e[tag=incend_tnt,tag=!incend_blue_tnt] calculate = @s id
scoreboard players operation @e[tag=incend_tnt,tag=!incend_blue_tnt] calculate -= @s id
## Entity tagged with incend_tnt that is ours now has a calculate score of 0
tag @e[tag=incend_tnt,scores={calculate=0},tag=!incend_return,sort=nearest,limit=1,tag=!incend_blue_tnt] add temporary_toggle
tag @e[tag=incend_tnt,scores={calculate=0},sort=nearest,limit=1,tag=!incend_blue_tnt] remove incend_return
tag @e[tag=incend_tnt,scores={calculate=0},sort=nearest,limit=1,tag=temporary_toggle,tag=!incend_blue_tnt] add incend_return
tag @e[tag=incend_tnt,scores={calculate=0},sort=nearest,limit=1,tag=!incend_blue_tnt] remove temporary_toggle