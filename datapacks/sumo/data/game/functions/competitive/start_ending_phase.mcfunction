##Starts the ending phase.

##final tellraws
tellraw @a [{"translate":"=","color":"white"},{"translate":"-","color":"aqua"},{"translate":"=","color":"white"},{"translate":"-","color":"aqua"},{"translate":"=","color":"white"},{"translate":"-","color":"aqua"},{"translate":"=","color":"white"},{"translate":"-","color":"aqua"},{"translate":"=","color":"white"},{"translate":"-","color":"aqua"},{"translate":"=","color":"white"},{"translate":"-","color":"aqua"},{"translate":"=","color":"white"},{"translate":"-","color":"aqua"},{"translate":"=","color":"white"},{"translate":"-","color":"aqua"},{"translate":"=","color":"white"},{"translate":"-","color":"aqua"},{"translate":"=","color":"white"}]
tellraw @a [{"translate":"☀ ","color":"gold"},{"translate":"Round ","color":"aqua"},{"translate":"1","color":"white","bold":true}]
tellraw @a [{"storage":"game:comp","nbt":"1.w_fighter","interpret":true},{"translate":" "},{"storage":"game:comp","nbt":"1.w","interpret":true},{"translate":": ","color":"gray"},{"storage":"game:comp","nbt":"1.w_deaths","interpret":true},{"translate":" ☠","color":"red"},{"translate":" | ","color":"gray","bold":true},{"storage":"game:comp","nbt":"1.l_fighter","interpret":true},{"translate":" "},{"storage":"game:comp","nbt":"1.l","interpret":true},{"translate":": ","color":"gray"},{"storage":"game:comp","nbt":"1.l_deaths","interpret":true},{"translate":" ☠","color":"red"}]

tellraw @a [{"translate":"=","color":"white"},{"translate":"-","color":"aqua"},{"translate":"=","color":"white"},{"translate":"-","color":"aqua"},{"translate":"=","color":"white"},{"translate":"-","color":"aqua"},{"translate":"=","color":"white"},{"translate":"-","color":"aqua"},{"translate":"=","color":"white"},{"translate":"-","color":"aqua"},{"translate":"=","color":"white"},{"translate":"-","color":"aqua"},{"translate":"=","color":"white"},{"translate":"-","color":"aqua"},{"translate":"=","color":"white"},{"translate":"-","color":"aqua"},{"translate":"=","color":"white"},{"translate":"-","color":"aqua"},{"translate":"=","color":"white"}]
tellraw @a [{"translate":"☀ ","color":"gold"},{"translate":"Round ","color":"aqua"},{"translate":"2","color":"white","bold":true}]
tellraw @a [{"storage":"game:comp","nbt":"2.w_fighter","interpret":true},{"translate":" "},{"storage":"game:comp","nbt":"2.w","interpret":true},{"translate":": ","color":"gray"},{"storage":"game:comp","nbt":"2.w_deaths","interpret":true},{"translate":" ☠","color":"red"},{"translate":" | ","color":"gray","bold":true},{"storage":"game:comp","nbt":"2.l_fighter","interpret":true},{"translate":" "},{"storage":"game:comp","nbt":"2.l","interpret":true},{"translate":": ","color":"gray"},{"storage":"game:comp","nbt":"2.l_deaths","interpret":true},{"translate":" ☠","color":"red"}]

execute if data storage game:comp 3.w run tellraw @a [{"translate":"=","color":"white"},{"translate":"-","color":"aqua"},{"translate":"=","color":"white"},{"translate":"-","color":"aqua"},{"translate":"=","color":"white"},{"translate":"-","color":"aqua"},{"translate":"=","color":"white"},{"translate":"-","color":"aqua"},{"translate":"=","color":"white"},{"translate":"-","color":"aqua"},{"translate":"=","color":"white"},{"translate":"-","color":"aqua"},{"translate":"=","color":"white"},{"translate":"-","color":"aqua"},{"translate":"=","color":"white"},{"translate":"-","color":"aqua"},{"translate":"=","color":"white"},{"translate":"-","color":"aqua"},{"translate":"=","color":"white"}]
execute if data storage game:comp 3.w run tellraw @a [{"translate":"☀ ","color":"gold"},{"translate":"Round ","color":"aqua"},{"translate":"3","color":"white","bold":true}]
execute if data storage game:comp 3.w run tellraw @a [{"storage":"game:comp","nbt":"3.w_fighter","interpret":true},{"translate":" "},{"storage":"game:comp","nbt":"3.w","interpret":true},{"translate":": ","color":"gray"},{"storage":"game:comp","nbt":"3.w_deaths","interpret":true},{"translate":" ☠","color":"red"},{"translate":" | ","color":"gray","bold":true},{"storage":"game:comp","nbt":"3.l_fighter","interpret":true},{"translate":" "},{"storage":"game:comp","nbt":"3.l","interpret":true},{"translate":": ","color":"gray"},{"storage":"game:comp","nbt":"3.l_deaths","interpret":true},{"translate":" ☠","color":"red"}]



##Score
scoreboard players set $end cooldown 100

##Setting fake criteria to 0; this is typically how the winner is kept track of and it's just easier to set it here.
scoreboard players set @a[scores={list=2..},tag=playing] fake_criteria 0


##Joining team to remove prefix
team join aqua @a[tag=playing,scores={fake_criteria=0}]

##Remove sidebar
scoreboard objectives setdisplay sidebar

##Tellraws and titles

title @a[tag=playing] times 5 50 5
title @a[tag=playing] title [{"selector":"@a[tag=playing,scores={fake_criteria=0}]"},{"translate":" wins!","color":"white"}]
tellraw @a[tag=playing] [{"selector":"@a[tag=playing,scores={fake_criteria=0}]"},{"translate":" wins!","color":"white"}]

##Winner tag
tag @a remove winner
tag @a[tag=playing,scores={fake_criteria=0}] add winner
