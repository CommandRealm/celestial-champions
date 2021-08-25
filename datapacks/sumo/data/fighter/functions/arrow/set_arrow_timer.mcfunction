##Called when a player doesn't have an arrow and needs their timer set

##Kill
kill @e[type=item,nbt={Item:{id:"minecraft:arrow"}},distance=..15]

##clear
clear @s arrow

##Setting cooldown
scoreboard players operation @s arrow_timer = @s set_arrow_timer

