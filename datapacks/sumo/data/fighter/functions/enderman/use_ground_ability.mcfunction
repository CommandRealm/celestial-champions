##Called when enderman uses his ground ability

##Scores

##Setting the ability state to inactive
scoreboard players set @s ability_state 2

##Showing how long the ability lasts for
scoreboard players set @s ability_timer 350

##Clarifying it as a ground ability (0 is ground, 1 is air)
scoreboard players set @s ability_type 0


##Tellraw
tellraw @s[tag=!no_ability_msg] [{"text":"--------------------------","color":"aqua"},{"text":"\nGround Ability: ","color":"gray","bold":true},{"text":"Time Warp\n","color":"white"},{"text":"(Hover for description.)\n","color":"#bd9b4b","italic":true,"hoverEvent":{"action":"show_text","value":"Warp yourself to your position three 3 seconds ago."}},{"text":"--------------------------","color":"aqua"}]


##Tags additions
tag @s add copy_id

##Teleportation

##Copying AEC ids to calculate
execute as @e[type=marker,tag=enderman_warp_spot,scores={death_timer=1}] run scoreboard players operation @s calculate = @s id
##Subtraction
execute as @e[type=marker,tag=enderman_warp_spot,scores={death_timer=1}] run scoreboard players operation @s calculate -= @p[tag=copy_id] id

##Teleporting to warp spot with calculate score of 0
tp @s @e[type=marker,tag=enderman_warp_spot,scores={death_timer=1},sort=nearest,limit=1]

##Killing warp spot
kill @e[type=marker,tag=enderman_warp_spot,scores={death_timer=1},sort=nearest,limit=1]

##Tag removals
tag @s remove copy_id
tag @s remove temporary_tag

##Sounds
playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 1
execute at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 1


##Particles 
particle minecraft:reverse_portal ~ ~1 ~ 0 0 0 1 100
execute at @s run particle minecraft:reverse_portal ~ ~1 ~ 0 0 0 1 100