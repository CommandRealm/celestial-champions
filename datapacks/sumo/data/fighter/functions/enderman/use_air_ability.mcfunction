##Called when enderman uses his air ability

##Scores

##Setting the ability state to active
scoreboard players set @s ability_state 1

##Showing how long until the ability can be used again
scoreboard players set @s ability_timer 50

##Clarifying it as an air ability (0 is ground, 1 is air)
scoreboard players set @s ability_type 1
##Effects

##Adding tags (used_ability is just so that it doesn't use yourself) (copy_id is to give the entity the damaged tag)
tag @s add used_ability

##Particles
execute anchored eyes run particle portal ^ ^ ^4 3 3 3 0.150 150
execute anchored eyes run particle reverse_portal ^ ^ ^4 3 3 3 0.0 150

##Tagging players for swap
execute anchored eyes positioned ^ ^ ^4 if entity @a[distance=..4,tag=is_fighter,gamemode=adventure,tag=!used_ability] run tag @p[distance=..6,tag=is_fighter,gamemode=adventure,tag=!used_ability] add swap

execute if entity @a[tag=swap] run function fighter:enderman/swap



##Removing tags
tag @s remove used_ability
tag @s remove temporary_tag


##Set kb
scoreboard players set @s set_knockback 2
scoreboard players set @s knockback 2
clear @s #minecraft:knockback_weapon{Weapon:"knockback"}
tag @s add use_set_knockback

##Tellraw
tellraw @s[tag=!no_ability_msg] [{"text":"--------------------------","color":"white"},{"text":"\nAir Ability: ","color":"dark_aqua","bold":true},{"text":"Enemy Swap\n","color":"aqua"},{"text":"(Hover for description.)\n","color":"#bd9b4b","italic":true,"hoverEvent":{"action":"show_text","value":"Swap positions with a nearby player in front of your face. Sets knockback to 2 for the duration of the ability."}},{"text":"--------------------------","color":"white"}]


##Sounds
playsound minecraft:entity.ender_eye.death master @a ~ ~ ~ 1 0
execute at @s run playsound minecraft:entity.ender_eye.death master @a ~ ~ ~ 1 0