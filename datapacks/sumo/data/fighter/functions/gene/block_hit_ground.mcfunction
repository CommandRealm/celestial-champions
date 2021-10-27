##Block hit ground function

tag @s add this

##Getting the components of the block
execute as @e[type=falling_block,tag=gene_block_display] at @s run scoreboard players operation @s calculate = @s id
execute as @e[type=falling_block,tag=gene_block_display] at @s run scoreboard players operation @s calculate -= @e[type=armor_stand,sort=nearest,limit=1,tag=this] id
kill @e[type=falling_block,tag=gene_block_display,scores={calculate=0}]

execute as @e[type=armor_stand,tag=gene_block_shulker_display] at @s run scoreboard players operation @s calculate = @s id
execute as @e[type=armor_stand,tag=gene_block_shulker_display] at @s run scoreboard players operation @s calculate -= @e[type=armor_stand,sort=nearest,limit=1,tag=this] id
kill @e[type=armor_stand,tag=gene_block_shulker_display,scores={calculate=0}]

execute as @e[type=shulker,tag=gene_block_shulker] at @s run scoreboard players operation @s calculate = @s id
execute as @e[type=shulker,tag=gene_block_shulker] at @s run scoreboard players operation @s calculate -= @e[type=armor_stand,sort=nearest,limit=1,tag=this] id

tp @e[type=shulker,tag=gene_block_shulker,scores={calculate=0}] 0 0 0
kill @e[type=shulker,tag=gene_block_shulker,scores={calculate=0}]

playsound minecraft:block.stone.place master @a ~ ~ ~ 1 0

particle firework ~ ~0.75 ~ 0.15 0.15 0.15 0.15 50

tag @s remove this