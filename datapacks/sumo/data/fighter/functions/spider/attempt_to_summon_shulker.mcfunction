##Called to check shulkers in proximity to player

##Setting our calculate score to -1000000
scoreboard players set @s calculate -1000000

##Moving entities ids to calculate
execute as @e[type=shulker,tag=spider_platform] run scoreboard players operation @s calculate = @s id
execute as @e[type=armor_stand,tag=spider_platform] run scoreboard players operation @s calculate = @s id
execute as @e[type=falling_block,tag=spider_platform] run scoreboard players operation @s calculate = @s id

##Subtracting our id
execute as @e[type=shulker,tag=spider_platform] run scoreboard players operation @s calculate -= @s id
execute as @e[type=armor_stand,tag=spider_platform] run scoreboard players operation @s calculate -= @s id
execute as @e[type=falling_block,tag=spider_platform] run scoreboard players operation @s calculate -= @s id

##Seeing if we have one within range
execute unless entity @e[type=shulker,tag=spider_platform,distance=..0.75,scores={calculate=0}] run function fighter:spider/summon_shulker