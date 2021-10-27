##Getting the arrow
give @s arrow

##Sounds
playsound minecraft:entity.item.pickup master @s

##Setting score to be super low so that it won't continue thinking the player needs an arrow.
scoreboard players set @s arrow_timer -100000000

##If we're malice
clear @s[scores={fighter=15}] red_dye{detonate_item:1b}