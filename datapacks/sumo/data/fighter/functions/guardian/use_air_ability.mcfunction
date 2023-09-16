##Called when theo uses his air ability

##Scores

##Setting the ability state to inactive
scoreboard players set @s ability_state 2

##Showing how long until the ability can be used again
scoreboard players set @s ability_timer 400

##Clarifying it as an air ability (0 is ground, 1 is air)
scoreboard players set @s ability_type 1
##Effects

##Adding tags (used_ability is just so that it doesn't use yourself) (copy_id is to give the entity the damaged tag)
tag @s add used_ability




summon guardian ~ ~ ~ {Tags:["on_death_timer","needs_death_timer","guardian_shooter"],NoAI:1b,Attributes:[{Name:"generic.attack_damage",Base:0.0}]}
scoreboard players set @e[type=guardian,tag=needs_death_timer] death_timer 35

scoreboard players operation @e[type=guardian,tag=needs_death_timer] id = @s id
tp @e[type=guardian,tag=needs_death_timer] @s
tp @e[type=guardian,tag=needs_death_timer] ~ ~-1 ~ 
kill @e[type=marker,tag=marker,limit=1]

##Summoning marker to the guardian to tp to later.
summon marker ~ ~ ~ {Tags:["guardian_tp_point","needs_death_timer","on_death_timer"]}
tp @e[type=marker,tag=needs_death_timer] @s

execute as @e[type=guardian,tag=needs_death_timer] at @s run tp @s ~ ~ ~ ~ 0


tag @s remove used_ability


##Death timer for marker
scoreboard players set @e[type=marker,tag=needs_death_timer] death_timer 60
scoreboard players operation @e[type=marker,tag=needs_death_timer] id = @s id


tag @e[type=marker,tag=needs_death_timer] remove needs_death_timer
tag @e[type=guardian,tag=needs_death_timer] remove needs_death_timer

##Tellraw
tellraw @s[tag=!no_ability_msg] [{"translate":"--------------------------","color":"white"},{"translate":"\nAir Ability: ","color":"dark_aqua","bold":true},{"translate":"Guardian Strike\n","color":"aqua"},{"translate":"(Hover for description.)\n","color":"#bd9b4b","italic":true,"hoverEvent":{"action":"show_text","value":{"translate":"Spawns a guardian which will shoot a damaging laser shortly; however, if the guardian is damaged, it immediately explodes."}}},{"translate":"--------------------------","color":"white"}]


##Sounds
playsound minecraft:entity.guardian.death master @a ~ ~ ~ 1 0
playsound minecraft:entity.guardian.death master @a ~ ~ ~ 1 0.6
playsound minecraft:entity.guardian.death master @a ~ ~ ~ 1 0.7