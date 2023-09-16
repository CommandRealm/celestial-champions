##Called when Blaze uses his air ability

##Scores

##Setting the ability state to active
scoreboard players set @s ability_state 1

##Showing how long until the ability can be used again
scoreboard players set @s ability_timer 20

##Clarifying it as an air ability (0 is ground, 1 is air)
scoreboard players set @s ability_type 1

##Floating levitation
effect give @s levitation 1 255 true
scoreboard players set @s extra_jump_time 18

##Weakness
effect give @s weakness 1 255 true

##clearing arrow so we can't shoot
clear @s arrow


##summoning aec
summon area_effect_cloud ~ ~ ~ {Tags:["blaze_floating_spot","needs_copied_id"],Duration:40}

##Tping area effect cloud to ourself
tp @e[type=area_effect_cloud,tag=needs_copied_id] @s

##Id copy
scoreboard players operation @e[type=area_effect_cloud,tag=needs_copied_id] id = @s id

##Tag removal
tag @e[type=area_effect_cloud,tag=needs_copied_id] remove needs_copied_id


##Tellraw
tellraw @s[tag=!no_ability_msg] [{"translate":"--------------------------","color":"white"},{"translate":"\nAir Ability: ","color":"dark_aqua","bold":true},{"translate":"Fiery Float\n","color":"aqua"},{"translate":"(Hover for description.)\n","color":"#bd9b4b","italic":true,"hoverEvent":{"action":"show_text","value":{"translate":"Freezes the user in place and become invincible for 1 second."}}},{"translate":"--------------------------","color":"white"}]


##Particles
particle lava ~ ~ ~ 0.5 0.5 0.5 0.25 50
particle smoke ~ ~ ~ 0.5 0.5 0.5 0.25 50
particle campfire_cosy_smoke ~ ~ ~ 0.15 0.15 0.15 0 5

##Sounds
playsound minecraft:entity.blaze.ambient master @s ~ ~ ~ 1000 1.5
playsound minecraft:entity.blaze.ambient master @s ~ ~ ~ 1000 1.25
playsound minecraft:entity.blaze.ambient master @s ~ ~ ~ 1000 1.0