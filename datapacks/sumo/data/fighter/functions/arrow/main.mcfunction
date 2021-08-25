##Called whenever a fighter that needs arrows is present.

##Removing time
scoreboard players remove @a[tag=is_fighter,scores={set_arrow_timer=1..},gamemode=adventure] arrow_timer 1

##Giving arrow
execute as @a[tag=is_fighter,scores={set_arrow_timer=1..,arrow_timer=0},gamemode=adventure,tag=!slow_falling_until_landing] at @s run function fighter:arrow/get_arrow

##Not having arrow
execute as @a[tag=is_fighter,scores={set_arrow_timer=1..,arrow_timer=..-1},gamemode=adventure] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:arrow"}]}] run function fighter:arrow/set_arrow_timer

