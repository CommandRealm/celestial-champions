##called to activate the spider web.

##Temp tag
tag @s add temporary_tag


##Copying player ids to calculate
execute as @a[distance=..5,gamemode=adventure,tag=is_fighter] at @s run scoreboard players operation @s calculate = @s id
##Subtraction
execute as @a[distance=..5,gamemode=adventure,tag=is_fighter] at @s run scoreboard players operation @s calculate -= @e[tag=temporary_tag,limit=1,sort=nearest] id

##If its not the player who uses it, then run the explode function
execute as @a[scores={calculate=1..},distance=..5,gamemode=adventure,tag=is_fighter] at @s run function fighter:spider/hit_in_web
execute as @a[scores={calculate=..-1},distance=..5,gamemode=adventure,tag=is_fighter] at @s run function fighter:spider/hit_in_web
##Remove temp tag
tag @s remove temporary_tag
tag @s remove about_to_activate

##Particles and sounds
playsound minecraft:entity.spider.hurt master @a ~ ~ ~ 1 0.75
particle item string ~ ~ ~ 0.5 0.5 0.5 0.5 50

##Removing the nearby web.
tag @s add temporary_tag
execute as @e[type=falling_block,tag=spider_web_display] at @s run scoreboard players operation @s calculate = @s id
execute as @e[type=falling_block,tag=spider_web_display] at @s run scoreboard players operation @s calculate -= @e[type=zombie,tag=temporary_tag,limit=1] id
kill @e[type=falling_block,tag=spider_web_display,scores={calculate=0},limit=1]