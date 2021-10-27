##Called when arthor uses his air jump

tag @s add used_ability


##Setting the ability state to inactive
scoreboard players set @s ability_state 2

##Showing how long until the ability can be used again
scoreboard players set @s ability_timer 300

##Clarifying it as an air ability (0 is ground, 1 is air)
scoreboard players set @s ability_type 1
##Jump

effect clear @s levitation

##Fire
effect give @s[scores={random_stat=0}] levitation 1 20 true
scoreboard players set @s[scores={random_stat=0}] extra_jump_time 8
execute if entity @s[scores={random_stat=0}] run particle item magma_block ~ ~ ~ 0 0 0 0.5 50

##Ice
effect give @s[scores={random_stat=1}] levitation 20 2 true
scoreboard players set @s[scores={random_stat=1}] extra_jump_time 110
execute if entity @s[scores={random_stat=1}] run particle item ice ~ ~ ~ 0 0 0 0.5 50
scoreboard players set @s[scores={random_stat=1}] random_cooldown2 110

##Earth Explosion
execute if score @s random_stat matches 2 run summon creeper ~ ~ ~ {Fuse:0s,Invulnerable:1b,Tags:["needs_adjustments"]}
execute if score @s random_stat matches 2 run summon creeper ~ ~-0.5 ~ {Fuse:0s,Invulnerable:1b,Tags:["needs_adjustments"]}
execute if score @s random_stat matches 2 run scoreboard players operation @e[type=creeper,tag=needs_adjustments] id = @s id
execute if score @s random_stat matches 2 run tag @e[type=creeper] remove needs_adjustments
execute if entity @s[scores={random_stat=2}] run particle item granite ~ ~ ~ 0 0 0 0.5 50

##Air
effect give @s[scores={random_stat=3}] levitation 20 25 true
scoreboard players set @s[scores={random_stat=3}] extra_jump_time 9
execute if entity @s[scores={random_stat=3}] run particle item white_stained_glass ~ ~ ~ 0 0 0 0.5 50

##Darkness
execute if score @s random_stat matches 4 run effect give @a[distance=..5,tag=!used_ability,tag=is_fighter,gamemode=adventure] blindness 20 4 true
effect give @s[scores={random_stat=4}] levitation 20 18 true
scoreboard players set @s[scores={random_stat=4}] extra_jump_time 9
execute if entity @s[scores={random_stat=4}] run particle item blackstone ~ ~ ~ 0 0 0 0.5 50
execute if entity @s[scores={random_stat=4}] run particle squid_ink ~ ~ ~ 2.5 2.5 2.5 0.5 100

##Tellraw
tellraw @s[tag=!no_ability_msg] [{"text":"--------------------------","color":"white"},{"text":"\nAir Ability: ","color":"dark_aqua","bold":true},{"text":"Elemental Jump\n","color":"aqua"},{"text":"(Hover for description.)\n","color":"#bd9b4b","italic":true,"hoverEvent":{"action":"show_text","value":"Launches you upwards, different selected elements have different effects."}},{"text":"--------------------------","color":"white"}]

tag @s remove used_ability

##Sounds
playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 2
##Essentially a 3rd air jump, but its properties change based on what you have selected.
##Fire: Doesn't send you very high.
##Ice: Sends you high, but is very slow.
##Earth: No levitation. Explosion instead. (a lot weaker than creepers)
##Wind: Sends you up a decent amount and is relatively fast. (probably the best one)
##Darkness: Average. Gives blindness around you.