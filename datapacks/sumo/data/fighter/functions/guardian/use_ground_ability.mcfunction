##Called when theo uses his ground ability

##Scores

##Setting the ability state to inactive
scoreboard players set @s ability_state 2

##Cooldown
scoreboard players set @s ability_timer 70

##Clarifying it as a ground ability (0 is ground, 1 is air)
scoreboard players set @s ability_type 0

##tag self
tag @s add this

##Raycast
scoreboard players set $calculate calculate 35
execute anchored eyes run function fighter:guardian/ground_raycast

execute as @a[tag=hit] at @s run function fighter:guardian/hit_by_ground_raycast

tag @a remove hit




##Tellraw
tellraw @s[tag=!no_ability_msg] [{"text":"--------------------------","color":"aqua"},{"text":"\nGround Ability: ","color":"gray","bold":true},{"text":"Thorn\n","color":"white"},{"text":"(Hover for description.)\n","color":"#bd9b4b","italic":true,"hoverEvent":{"action":"show_text","value":"Gain Speed 4 and Jump Boost 6 for 1 second. However, during this ability, knockback is locked to 2."}},{"text":"--------------------------","color":"aqua"}]


##remove tag
tag @a remove this

##Sounds
playsound minecraft:entity.guardian.hurt master @a ~ ~ ~ 1 1
playsound minecraft:entity.guardian.hurt master @a ~ ~ ~ 1 1
playsound minecraft:entity.guardian.hurt master @a ~ ~ ~ 1 1


