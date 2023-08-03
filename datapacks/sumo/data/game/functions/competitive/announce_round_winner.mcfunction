##Activated when someone wins a round of solos (rounds mode)



##Swapping player to a different team for tellraw
team join red @a[tag=playing,team=dead]
team join aqua @p[tag=playing,team=!red]

tag @a remove just_striked
tag @p[tag=playing,team=!red] add just_striked

##Tellraws
tellraw @a[tag=playing] [{"selector":"@p[tag=playing,team=!red]"},{"text":" has won the round.","color":"white"}]


##Symbol
execute as @p[tag=playing,team=!red] at @s run function game:competitive/store_character_symbol
data modify storage game:comp cur.w_fighter set from storage game:comp symbol


execute as @p[tag=playing,team=red] at @s run function game:competitive/store_character_symbol
data modify storage game:comp cur.l_fighter set from storage game:comp symbol

##name
setblock 0 55 0 air
setblock 0 55 0 oak_sign{front_text:{messages:['[{"selector":"@p[tag=playing,team=!red]"}]', '{"text":""}', '{"text":""}', '{"text":""}'], has_glowing_text: false, color: "black"}}
data modify storage game:comp cur.w set from block 0 55 0 Text1

setblock 0 55 0 air
setblock 0 55 0 oak_sign{front_text:{messages:['[{"selector":"@p[tag=playing,team=red]"}]', '{"text":""}', '{"text":""}', '{"text":""}'], has_glowing_text: false, color: "black"}}
data modify storage game:comp cur.l set from block 0 55 0 Text1

##deaths
setblock 0 55 0 air
setblock 0 55 0 oak_sign{front_text:{messages:['[{"score":{"name":"@p[tag=playing,team=!red]","objective":"cur_deaths"}}]', '{"text":""}', '{"text":""}', '{"text":""}'], has_glowing_text: false, color: "black"}}
data modify storage game:comp cur.w_deaths set from block 0 55 0 Text1

setblock 0 55 0 air
setblock 0 55 0 oak_sign{front_text:{messages:['[{"score":{"name":"@p[tag=playing,team=red]","objective":"cur_deaths"}}]', '{"text":""}', '{"text":""}', '{"text":""}'], has_glowing_text: false, color: "black"}}
data modify storage game:comp cur.l_deaths set from block 0 55 0 Text1

##Adding tag
tag @p[tag=playing,team=!red] add join_team
##Running join team function
function game:join_solo_team
##Removing tag
tag @a remove join_team


scoreboard players add @p[tag=playing,team=!red] criteria 1
scoreboard players add @p[tag=playing,team=!red] list 1

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


##
execute if data storage game:comp 1.w if data storage game:comp 2.w unless data storage game:comp 3.w run data modify storage game:comp 3 set from storage game:comp cur
execute if data storage game:comp 1.w unless data storage game:comp 2.w run data modify storage game:comp 2 set from storage game:comp cur
execute unless data storage game:comp 1.w run data modify storage game:comp 1 set from storage game:comp cur


team join dead @a[tag=playing,team=red]