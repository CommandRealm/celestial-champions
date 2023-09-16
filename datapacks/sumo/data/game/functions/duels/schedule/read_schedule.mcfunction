##Called to give ourselves a tellraw to show us our schedule.

##temporary tag
tag @s add temporary_tag

tellraw @s [{"translate":"-= ","color":"white","bold":true},{"translate":"Schedule","bold":true,"color":"aqua"},{"translate":" =-","color":"white","bold":true}]

##Removing tag
tag @a remove on_schedule
##Getting our opponent
execute as @a[tag=playing] at @s if score @s id = @p[tag=temporary_tag] duel_1 run tag @s add on_schedule
##Message
tellraw @s[scores={duel_1=1..}] [{"translate":"Fight","bold":true,"color":"aqua"},{"translate":" 1: ","color":"white","bold":false},{"selector":"@a[tag=on_schedule]","bold":false}]
execute if entity @a[scores={duel_1=1..}] run tellraw @s[scores={duel_1=..0}] [{"translate":"Fight","bold":true,"color":"aqua"},{"translate":" 1: ","color":"white","bold":false},{"translate":"You have a bye","bold":false,"color":"gold"}]


##Removing tag
tag @a remove on_schedule
##Getting our opponent
execute as @a[tag=playing] at @s if score @s id = @p[tag=temporary_tag] duel_2 run tag @s add on_schedule
##Message
tellraw @s[scores={duel_2=1..}] [{"translate":"Fight","bold":true,"color":"aqua"},{"translate":" 2: ","color":"white","bold":false},{"selector":"@a[tag=on_schedule]","bold":false}]
execute if entity @a[scores={duel_2=1..}] run tellraw @s[scores={duel_2=..0}] [{"translate":"Fight","bold":true,"color":"aqua"},{"translate":" 2: ","color":"white","bold":false},{"translate":"You have a bye","bold":false,"color":"gold"}]

##Removing tag
tag @a remove on_schedule
##Getting our opponent
execute as @a[tag=playing] at @s if score @s id = @p[tag=temporary_tag] duel_3 run tag @s add on_schedule
##Message
tellraw @s[scores={duel_3=1..}] [{"translate":"Fight","bold":true,"color":"aqua"},{"translate":" 3: ","color":"white","bold":false},{"selector":"@a[tag=on_schedule]","bold":false}]
execute if entity @a[scores={duel_3=1..}] run tellraw @s[scores={duel_3=..0}] [{"translate":"Fight","bold":true,"color":"aqua"},{"translate":" 3: ","color":"white","bold":false},{"translate":"You have a bye","bold":false,"color":"gold"}]



##Removing tag
tag @a remove on_schedule
##Getting our opponent
execute as @a[tag=playing] at @s if score @s id = @p[tag=temporary_tag] duel_4 run tag @s add on_schedule
##Message
tellraw @s[scores={duel_4=1..}] [{"translate":"Fight","bold":true,"color":"aqua"},{"translate":" 4: ","color":"white","bold":false},{"selector":"@a[tag=on_schedule]","bold":false}]
execute if entity @a[scores={duel_4=1..}] run tellraw @s[scores={duel_4=..0}] [{"translate":"Fight","bold":true,"color":"aqua"},{"translate":" 4: ","color":"white","bold":false},{"translate":"You have a bye","bold":false,"color":"gold"}]

##Removing tag
tag @a remove on_schedule
##Getting our opponent
execute as @a[tag=playing] at @s if score @s id = @p[tag=temporary_tag] duel_5 run tag @s add on_schedule
##Message
tellraw @s[scores={duel_5=1..}] [{"translate":"Fight","bold":true,"color":"aqua"},{"translate":" 5: ","color":"white","bold":false},{"selector":"@a[tag=on_schedule]","bold":false}]
execute if entity @a[scores={duel_5=1..}] run tellraw @s[scores={duel_5=..0}] [{"translate":"Fight","bold":true,"color":"aqua"},{"translate":" 5: ","color":"white","bold":false},{"translate":"You have a bye","bold":false,"color":"gold"}]

##Removing tag
tag @a remove on_schedule
##Getting our opponent
execute as @a[tag=playing] at @s if score @s id = @p[tag=temporary_tag] duel_6 run tag @s add on_schedule
##Message
tellraw @s[scores={duel_6=1..}] [{"translate":"Fight","bold":true,"color":"aqua"},{"translate":" 6: ","color":"white","bold":false},{"selector":"@a[tag=on_schedule]","bold":false}]
execute if entity @a[scores={duel_6=1..}] run tellraw @s[scores={duel_6=..0}] [{"translate":"Fight","bold":true,"color":"aqua"},{"translate":" 6: ","color":"white","bold":false},{"translate":"You have a bye","bold":false,"color":"gold"}]

##Removing tag
tag @a remove on_schedule
##Getting our opponent
execute as @a[tag=playing] at @s if score @s id = @p[tag=temporary_tag] duel_7 run tag @s add on_schedule
##Message
tellraw @s[scores={duel_7=1..}] [{"translate":"Fight","bold":true,"color":"aqua"},{"translate":" 7: ","color":"white","bold":false},{"selector":"@a[tag=on_schedule]","bold":false}]
execute if entity @a[scores={duel_7=1..}] run tellraw @s[scores={duel_7=..0}] [{"translate":"Fight","bold":true,"color":"aqua"},{"translate":" 7: ","color":"white","bold":false},{"translate":"You have a bye","bold":false,"color":"gold"}]


##Removing tag
tag @a remove on_schedule
##Getting our opponent
execute as @a[tag=playing] at @s if score @s id = @p[tag=temporary_tag] duel_8 run tag @s add on_schedule
##Message
tellraw @s[scores={duel_8=1..}] [{"translate":"Fight","bold":true,"color":"aqua"},{"translate":" 8: ","color":"white","bold":false},{"selector":"@a[tag=on_schedule]","bold":false}]
execute if entity @a[scores={duel_8=1..}] run tellraw @s[scores={duel_8=..0}] [{"translate":"Fight","bold":true,"color":"aqua"},{"translate":" 8: ","color":"white","bold":false},{"translate":"You have a bye","bold":false,"color":"gold"}]

##Removing tag
tag @a remove on_schedule
##Getting our opponent
execute as @a[tag=playing] at @s if score @s id = @p[tag=temporary_tag] duel_9 run tag @s add on_schedule
##Message
tellraw @s[scores={duel_9=1..}] [{"translate":"Fight","bold":true,"color":"aqua"},{"translate":" 9: ","color":"white","bold":false},{"selector":"@a[tag=on_schedule]","bold":false}]
execute if entity @a[scores={duel_9=1..}] run tellraw @s[scores={duel_9=..0}] [{"translate":"Fight","bold":true,"color":"aqua"},{"translate":" 9: ","color":"white","bold":false},{"translate":"You have a bye","bold":false,"color":"gold"}]



##Removing tag
tag @a remove on_schedule
##Getting our opponent
execute as @a[tag=playing] at @s if score @s id = @p[tag=temporary_tag] duel_10 run tag @s add on_schedule
##Message
tellraw @s[scores={duel_10=1..}] [{"translate":"Fight","bold":true,"color":"aqua"},{"translate":" 10: ","color":"white","bold":false},{"selector":"@a[tag=on_schedule]","bold":false}]
execute if entity @a[scores={duel_10=1..}] run tellraw @s[scores={duel_10=..0}] [{"translate":"Fight","bold":true,"color":"aqua"},{"translate":" 10: ","color":"white","bold":false},{"translate":"You have a bye","bold":false,"color":"gold"}]


##Removing tag
tag @a remove on_schedule
##Getting our opponent
execute as @a[tag=playing] at @s if score @s id = @p[tag=temporary_tag] duel_11 run tag @s add on_schedule
##Message
tellraw @s[scores={duel_11=1..}] [{"translate":"Fight","bold":true,"color":"aqua"},{"translate":" 11: ","color":"white","bold":false},{"selector":"@a[tag=on_schedule]","bold":false}]
execute if entity @a[scores={duel_11=1..}] run tellraw @s[scores={duel_11=..0}] [{"translate":"Fight","bold":true,"color":"aqua"},{"translate":" 11: ","color":"white","bold":false},{"translate":"You have a bye","bold":false,"color":"gold"}]

##removing tags
tag @s remove temporary_tag
tag @a remove on_schedule