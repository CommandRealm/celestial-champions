##Function for ending the starting countdown


##Title update
function game:starting_countdown/title


##Effects
effect clear @a[tag=playing] levitation
effect give @a[tag=playing] slow_falling 10000 0 true

##Particles
execute as @a[tag=playing,team=!dead] at @s run particle spit ~ ~ ~ 0.25 0.25 0.25 0.15 5

##Boots that give knockback resistance
item replace entity @a[tag=playing] armor.feet with netherite_boots{Unbreakable:1b,display:{Name:'[{"text":"Boots That Make You Invulnerable","italic":false,"color":"dark_gray"}]'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999]},{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:1,UUID:[I; 99, 99, 99, 99]}]}

##Tag to show that players need to touch the ground
tag @a[tag=playing] add slow_falling_until_landing

##Scoreboard resets
scoreboard players reset @a[tag=playing] extra_jump_sneak
scoreboard players set @a[tag=playing] extra_jump_cool 0

##Set sidebar objective on the sidebar

scoreboard objectives setdisplay sidebar sidebar

##Give players tag
tag @a[tag=playing] add is_fighter


##Getting rid of drakier's elytra
scoreboard players set @a[tag=playing,scores={fighter=8}] random_cooldown 1
tag @a[tag=playing,scores={fighter=8}] add pause_random_cooldown
item replace entity @a[tag=playing,scores={fighter=8}] armor.chest with air

