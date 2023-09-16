##am##Called when Blaze uses his ground ability

##Scores

##Setting the ability state to inactive
scoreboard players set @s ability_state 2

##Showing how long the ability lasts for
scoreboard players set @s ability_timer 500

##Clarifying it as a ground ability (0 is ground, 1 is air)
scoreboard players set @s ability_type 0

##tag
tag @s add copy_id

##summon zombies
execute anchored eyes positioned ~ ~4.5 ~ run summon zombie ^ ^ ^2 {Tags:["blaze_fireball","needs_death_timer","on_death_timer","needs_copied_id"],Invulnerable:1b,IsBaby:1b,ActiveEffects:[{Id:14b,Amplifier:1,Duration:100000,ShowParticles:0b}],Silent:1b,ArmorItems:[{},{},{},{id:"minecraft:fire_charge",Count:1b}],NoAI:0b,Attributes:[{Name:"generic.attack_damage",Base:0}]}

##Tp so they're facing us
execute as @e[type=zombie,tag=needs_copied_id] at @s run tp @s ~ ~ ~ facing entity @p[tag=copy_id]

##Team
team join no_collision @e[type=zombie,tag=needs_copied_id]

##Copying id
scoreboard players operation @e[type=zombie,tag=needs_copied_id] id = @s id

##Setting up death timer
scoreboard players set @e[type=zombie,tag=needs_death_timer] death_timer 300

##Removing tags
tag @e[type=zombie,tag=needs_death_timer] remove needs_death_timer
tag @e[type=zombie,tag=needs_copied_id] remove needs_copied_id
tag @s remove copy_id

##Tellraw
tellraw @s[tag=!no_ability_msg] [{"translate":"--------------------------","color":"aqua"},{"translate":"\nGround Ability: ","color":"gray","bold":true},{"translate":"Homing Heat\n","color":"white"},{"translate":"(Hover for description.)\n","color":"#bd9b4b","italic":true,"hoverEvent":{"action":"show_text","value":{"translate":"Fire an explosive that track the nearest player."}}},{"translate":"--------------------------","color":"aqua"}]


##Sounds
playsound minecraft:item.trident.throw master @a ~ ~ ~ 1 0.5
playsound minecraft:item.trident.throw master @a ~ ~ ~ 1 0.75
playsound minecraft:item.trident.throw master @a ~ ~ ~ 1 0.9

