##Called when theo uses his air ability

##Scores

##Setting the ability state to inactive
scoreboard players set @s ability_state 2

##Showing how long until the ability can be used again
scoreboard players set @s ability_timer 300

##Clarifying it as an air ability (0 is ground, 1 is air)
scoreboard players set @s ability_type 1
##Effects

##Adding tags (used_ability is just so that it doesn't use yourself) (copy_id is to give the entity the damaged tag)
tag @s add used_ability

tag @s add copy_id

##Calling function of ability
execute anchored eyes positioned ^ ^ ^2 as @p[tag=!used_ability,distance=..5.0] at @s run function fighter:theo/enemy_star_strike


##Removing tags
tag @s remove copy_id
tag @s remove used_ability


##Particles
execute anchored eyes positioned ^ ^ ^2 positioned ~ ~5 ~ run particle dust 1 1 1 1 ~ ~ ~ 1 0 0 0 35
execute anchored eyes positioned ^ ^ ^2 positioned ~ ~5 ~ run particle dust 1 1 1 1 ~ ~ ~ 0 0 1 0 35
execute anchored eyes positioned ^ ^ ^2 positioned ~ ~5 ~ run particle dust 1 1 1 1 ~ ~ ~ 0 1 0 0 35
execute anchored eyes positioned ^ ^ ^2 positioned ~ ~5 ~ run particle minecraft:firework ~ ~ ~ 0 0 0 0.5 50

##colored for costumes
execute if entity @s[scores={costume=2}] anchored eyes positioned ^ ^ ^2 positioned ~ ~5 ~ run particle dust 0.78 0.541 0.184 1 ~ ~ ~ 0 1 0 0 15
execute if entity @s[scores={costume=3}] anchored eyes positioned ^ ^ ^2 positioned ~ ~5 ~ run particle dust 0.184 0.78 0.216 1 ~ ~ ~ 0 1 0 0 15
execute if entity @s[scores={costume=4}] anchored eyes positioned ^ ^ ^2 positioned ~ ~5 ~ run particle soul_fire_flame ~ ~ ~ 0.25 0.25 0.25 0.25 50

##Tellraw
tellraw @s[tag=!no_ability_msg] [{"text":"--------------------------","color":"white"},{"text":"\nAir Ability: ","color":"dark_aqua","bold":true},{"text":"Star-Strike\n","color":"aqua"},{"text":"(Hover for description.)\n","color":"#bd9b4b","italic":true,"hoverEvent":{"action":"show_text","value":"Spikes opponent in front of you."}},{"text":"--------------------------","color":"white"}]


##Sounds
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 1 2
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 1 1.75
playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 1 1.25