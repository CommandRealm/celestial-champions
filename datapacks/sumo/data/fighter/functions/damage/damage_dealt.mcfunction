##Function runs whenever damage is dealt

##Score resets
scoreboard players reset @s damage_dealt
scoreboard players reset @s damage_taken

##removing advancements
advancement revoke @s only advancements:damage/damage_dealt

##Seeing if it was done with the knockback weapon (ignore tag is used in fighters like Callidus where they don't have the trident.)
execute if entity @s[nbt={SelectedItem:{tag:{Weapon:"knockback"}}}] unless entity @s[nbt={SelectedItem:{tag:{ignore:1b}}}] unless entity @s[advancements={advancements:damage/invalid_kb_hit=true,advancements:damage/direct_damage=false}] run function fighter:damage/used_knockback

##Seeing if it was done with the combo weapon
execute if entity @s[nbt={SelectedItem:{tag:{Weapon:"combo"}}}] unless entity @s[advancements={advancements:damage/invalid_kb_hit=true,advancements:damage/direct_damage=false}] unless entity @s[advancements={advancements:damage/give_red_team_friendly_fire=true}] unless entity @s[advancements={advancements:damage/give_blue_team_friendly_fire=true}] unless entity @s[advancements={advancements:damage/give_yellow_team_friendly_fire=true}] unless entity @s[advancements={advancements:damage/give_green_team_friendly_fire=true}] unless entity @s[advancements={advancements:damage/give_cyan_team_friendly_fire=true}] unless entity @s[advancements={advancements:damage/give_orange_team_friendly_fire=true}] unless entity @s[advancements={advancements:damage/give_pink_team_friendly_fire=true}] unless entity @s[advancements={advancements:damage/give_purple_team_friendly_fire=true}] unless entity @s[advancements={advancements:damage/give_white_team_friendly_fire=true}] unless entity @s[advancements={advancements:damage/give_gray_team_friendly_fire=true}] run function fighter:damage/used_combo

##Sound for if we hit teammate
execute unless entity @s[advancements={advancements:damage/give_red_team_friendly_fire=true}] unless entity @s[advancements={advancements:damage/give_blue_team_friendly_fire=true}] unless entity @s[advancements={advancements:damage/give_yellow_team_friendly_fire=true}] unless entity @s[advancements={advancements:damage/give_green_team_friendly_fire=true}] unless entity @s[advancements={advancements:damage/give_cyan_team_friendly_fire=true}] unless entity @s[advancements={advancements:damage/give_orange_team_friendly_fire=true}] unless entity @s[advancements={advancements:damage/give_pink_team_friendly_fire=true}] unless entity @s[advancements={advancements:damage/give_purple_team_friendly_fire=true}] unless entity @s[advancements={advancements:damage/give_white_team_friendly_fire=true}] unless entity @s[advancements={advancements:damage/give_gray_team_friendly_fire=true}] run tag @s add ignore_sound
playsound minecraft:block.note_block.didgeridoo master @s[tag=!ignore_sound] ~ ~ ~ 10000 1.75
tag @a remove ignore_sound

##Tag for callidus
tag @s[tag=is_fighter,gamemode=adventure,scores={fighter=10},advancements={advancements:damage/trident_damage=true,advancements:damage/invalid_kb_hit=true}] add invalid_trident

advancement revoke @s only advancements:damage/damage_slow_falling_player
advancement revoke @s only advancements:damage/direct_damage
advancement revoke @s only advancements:damage/invalid_kb_hit

##Specific fighter functions
execute if entity @s[scores={fighter=11}] run function fighter:gene/deal_damage


##Removing advancements


advancement revoke @a only advancements:damage/give_red_team_friendly_fire


advancement revoke @a only advancements:damage/give_blue_team_friendly_fire



advancement revoke @a only advancements:damage/give_yellow_team_friendly_fire



advancement revoke @a only advancements:damage/give_green_team_friendly_fire



advancement revoke @a only advancements:damage/give_cyan_team_friendly_fire




advancement revoke @a only advancements:damage/give_orange_team_friendly_fire




advancement revoke @a only advancements:damage/give_pink_team_friendly_fire




advancement revoke @a only advancements:damage/give_purple_team_friendly_fire


advancement revoke @a only advancements:damage/give_white_team_friendly_fire




advancement revoke @a only advancements:damage/give_gray_team_friendly_fire