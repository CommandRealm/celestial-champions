##Activated when someone wins a round of solos (rounds mode)

##Swapping player to a different team for tellraw
team join aqua @p[tag=playing,team=!dead]


##Tellraws
tellraw @a[tag=playing] [{"selector":"@p[tag=playing,team=!dead]"},{"text":" has won the round.","color":"white"}]

##Adding tag
tag @p[tag=playing,team=!dead] add join_team
##Running join team function
function game:join_solo_team
##Removing tag
tag @a remove join_team


scoreboard players add @p[tag=playing,team=!dead] criteria 1
scoreboard players add @p[tag=playing,team=!dead] list 1

##Sounds
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 10000 0.561231
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 10000 0.707107
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 10000 0.840896
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 10000 1.122462

execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 10000 0.561231
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 10000 0.707107
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 10000 0.840896


execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 0.25 0.561231
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 0.25 0.707107
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 0.25 0.840896

execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.5 0.561231
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.5 0.707107
execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.5 0.840896