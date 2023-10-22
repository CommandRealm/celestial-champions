##Called to prepare a player for the fighting area

##Tag
tag @s add is_fighter

##Resetting set_arrow_timer (If it's not reset here it will run with all fighters after they've selected a bow class)
scoreboard players reset @s set_arrow_timer

##Stats
function fighter:get_stats

##Passive effects
function fighter:passive_effects

##Score resets
function fighter:reset_scores

##Resetting item timer
function item:random_time

##Setting arrow score if player is a ranged class.
scoreboard players set @s[scores={set_arrow_timer=1..}] arrow_timer 1

##Dragon firework
scoreboard players set @s[scores={fighter=8}] random_cooldown2 1

##Resetting ability timer
scoreboard players set @s ability_timer 1

##Resetting ability state
scoreboard players set @s ability_state 0

##Remove tag
tag @s remove slow_falling_until_landing

##BelowName display
scoreboard objectives setdisplay below_name damage_percent

##invulnerability
scoreboard players set @s training_area 20

##Boots
item replace entity @s armor.feet with netherite_boots{Unbreakable:1b,display:{Name:'[{"text":"Boots That Make You Invulnerable","italic":false,"color":"dark_gray"}]'},HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,UUID:[I; 999, 999, 999]},{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:1,UUID:[I; 99, 99, 99, 99]}]}
