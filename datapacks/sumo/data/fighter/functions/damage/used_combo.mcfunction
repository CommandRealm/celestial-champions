##Function runs whenever damage is dealt with the combo weapon

##Adding combo score by one
execute if entity @s[advancements={advancements:damage/damage_slow_falling_player=false}] run scoreboard players add @s combo 1

##Combo meter calculations
scoreboard players operation @s calc_knockback = @s combo

##Adding in the multiplier
scoreboard players operation @s calc_knockback *= @s combo_multiplier

##Adding 50 so that it will round up
scoreboard players add @s calc_knockback 50

##Adding in the decimal base knockback
scoreboard players operation @s calc_knockback += @s base_kb_decimal

##Dividing
scoreboard players operation @s calc_knockback /= $100 number

##Adding in base knockback
scoreboard players operation @s calc_knockback += @s base_knockback

##Seeing if this is different from our current knockback (if it is, run a function), the unless statement is to make sure that it doesn't exceed the characters max kb
execute unless score @s calc_knockback = @s knockback unless score @s calc_knockback > @s max_knockback run function fighter:damage/upgrade_knockback
