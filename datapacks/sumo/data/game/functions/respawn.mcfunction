##Respawn function

##Given tag for place players function
tag @s add spreadplayers

##Spreadplayers function
function game:place_players


##remove tag
tag @s remove spreadplayers


##sounds
execute at @s run playsound minecraft:entity.blaze.hurt master @s ~ ~ ~ 0.5 0.85
execute at @s run playsound minecraft:entity.blaze.death master @s ~ ~ ~ 0.5 0.5
execute at @s run playsound minecraft:block.note_block.cow_bell master @s ~ ~ ~ 1000 1.05
execute at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1000 1.05


##Titles
title @s title [{"text":"☄ ","color":"#8a0007","bold":true},{"text":"- ","color":"white","bold":false},{"text":"Fight!","color":"#ff7d83","bold":false},{"text":" -","color":"white","bold":false},{"text":" ☄","color":"#8a0007"}]
title @s subtitle [{"text":""}]

##Effects
gamemode adventure @s
effect clear @s[tag=playing] levitation
effect give @s[tag=playing] slow_falling 10000 0 true
effect give @s[tag=playing] weakness 10000 0 true
replaceitem entity @s[tag=playing] armor.feet netherite_boots{Unbreakable:1b,display:{Name:'[{"text":"Boots That Make You Invulnerable","italic":false,"color":"dark_gray"}]'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999]},{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:1,UUID:[I; 99, 99, 99, 99]}]}

##Particles
execute at @s run particle spit ~ ~ ~ 0.25 0.25 0.25 0.15 5

##Tag to show that players need to touch the ground
tag @s[tag=playing] add slow_falling_until_landing

##Resetting fighter scores
function fighter:reset_scores

##Resetting respawn score
scoreboard players reset @s death_cooldown

##Giving back passive potion effects
function fighter:passive_effects

##Resetting blink
function fighter:costume/blink/stop_blinking

##Getting rid of drakier's elytra
scoreboard players set @s[scores={fighter=8}] random_cooldown 2
tag @s[scores={fighter=8}] add pause_random_cooldown
replaceitem entity @s[scores={fighter=8}] armor.chest air