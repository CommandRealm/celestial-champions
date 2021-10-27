##Resets cooldowns and timers

scoreboard players set @s ability_timer -100

scoreboard players set @s damage_percent 0


##Double jump resets
scoreboard players set @s extra_jump_cool 0
scoreboard players reset @s extra_jump_sneak
scoreboard players reset @s extra_jump_time
scoreboard players operation @s extra_jumps = @s set_extra_jumps

##Ability drop reset
scoreboard players reset @s drop_ability

##Damage resets
scoreboard players set @s times_hit 0

##Damage id reset
scoreboard players set @s damaged_id -100


##Resetting combo score
scoreboard players reset @s combo

##Knockback score
scoreboard players operation @s knockback = @s base_knockback
scoreboard players operation @s calc_knockback = @s base_knockback

##Setting arrow timer to be super low
scoreboard players set @s arrow_timer -1000000

##Resetting stun timer
scoreboard players reset @s stun

##Resetting fear timer
scoreboard players reset @s fear


##Clearing Stun effect
effect clear @s slowness


##Resetting random cooldown obj
scoreboard players reset @s random_cooldown
scoreboard players reset @s random_cooldown2
scoreboard players reset @s random_cooldown3


##Resetting thrown egg obj
scoreboard players reset @s throw_egg

##Resetting use shield obj
scoreboard players reset @s use_shield

##Kill streak
scoreboard players reset @s kill_streak

##Shoot bow obj
scoreboard players reset @s shoot_bow
scoreboard players reset @s shoot_crossbow

##Remove Tags
tag @s remove use_set_knockback
tag @s remove pause_random_cooldown
tag @s remove pause_random_cooldown2
tag @s remove pause_random_cooldown3
tag @s remove pause_needs_costume

##Reset random stats
scoreboard players reset @s random_stat
scoreboard players reset @s random_stat2
scoreboard players reset @s random_stat3

scoreboard players set @s[scores={fighter=16}] random_stat 0
scoreboard players set @s[scores={fighter=8}] random_stat2 130


##Reset trident obj
scoreboard players reset @s throw_trident

##Advancements
advancement revoke @s only advancements:damage/trident_melee

##Xp bar
xp set @s 0 levels
xp set @s 0 points

##Ability item reset
scoreboard players reset @s drop_item

##Giving and taking advancements
advancement grant @a only advancements:damage/damage_dealt
advancement revoke @a only advancements:damage/damage_dealt

advancement grant @a only advancements:damage/direct_damage
advancement revoke @a only advancements:damage/direct_damage

advancement grant @a only advancements:damage/invalid_kb_hit
advancement revoke @a only advancements:damage/invalid_kb_hit

advancement grant @a only advancements:damage/damaged_by_malice_arrow
advancement revoke @a only advancements:damage/damaged_by_malice_arrow

advancement grant @s only advancements:item/shoot_crossbow
advancement revoke @s only advancements:item/shoot_crossbow

advancement grant @s only advancements:item/damaged_by_crossbow
advancement revoke @s only advancements:item/damaged_by_crossbow

advancement grant @a only advancements:item/damaged_by_potato
advancement revoke @a only advancements:item/damaged_by_potato

advancement grant @a only advancements:damage/take_red_team_friendly_fire
advancement revoke @a only advancements:damage/take_red_team_friendly_fire
advancement grant @a only advancements:damage/give_red_team_friendly_fire
advancement revoke @a only advancements:damage/give_red_team_friendly_fire

advancement grant @a only advancements:damage/take_blue_team_friendly_fire
advancement revoke @a only advancements:damage/take_blue_team_friendly_fire
advancement grant @a only advancements:damage/give_blue_team_friendly_fire
advancement revoke @a only advancements:damage/give_blue_team_friendly_fire

advancement grant @a only advancements:damage/take_yellow_team_friendly_fire
advancement revoke @a only advancements:damage/take_yellow_team_friendly_fire
advancement grant @a only advancements:damage/give_yellow_team_friendly_fire
advancement revoke @a only advancements:damage/give_yellow_team_friendly_fire

advancement grant @a only advancements:damage/take_green_team_friendly_fire
advancement revoke @a only advancements:damage/take_green_team_friendly_fire
advancement grant @a only advancements:damage/give_green_team_friendly_fire
advancement revoke @a only advancements:damage/give_green_team_friendly_fire

advancement grant @a only advancements:damage/take_cyan_team_friendly_fire
advancement revoke @a only advancements:damage/take_cyan_team_friendly_fire
advancement grant @a only advancements:damage/give_cyan_team_friendly_fire
advancement revoke @a only advancements:damage/give_cyan_team_friendly_fire

advancement grant @a only advancements:damage/take_orange_team_friendly_fire
advancement revoke @a only advancements:damage/take_orange_team_friendly_fire
advancement grant @a only advancements:damage/give_orange_team_friendly_fire
advancement revoke @a only advancements:damage/give_orange_team_friendly_fire

advancement grant @a only advancements:damage/take_pink_team_friendly_fire
advancement revoke @a only advancements:damage/take_pink_team_friendly_fire
advancement grant @a only advancements:damage/give_pink_team_friendly_fire
advancement revoke @a only advancements:damage/give_pink_team_friendly_fire

advancement grant @a only advancements:damage/take_purple_team_friendly_fire
advancement revoke @a only advancements:damage/take_purple_team_friendly_fire
advancement grant @a only advancements:damage/give_purple_team_friendly_fire
advancement revoke @a only advancements:damage/give_purple_team_friendly_fire

advancement grant @a only advancements:damage/take_white_team_friendly_fire
advancement revoke @a only advancements:damage/take_white_team_friendly_fire
advancement grant @a only advancements:damage/give_white_team_friendly_fire
advancement revoke @a only advancements:damage/give_white_team_friendly_fire

advancement grant @a only advancements:damage/take_gray_team_friendly_fire
advancement revoke @a only advancements:damage/take_gray_team_friendly_fire
advancement grant @a only advancements:damage/give_gray_team_friendly_fire
advancement revoke @a only advancements:damage/give_gray_team_friendly_fire

advancement revoke @s only fighter:arthor/fire_arrow_damage
advancement revoke @s only fighter:arthor/earth_arrow_damage
advancement revoke @s only fighter:arthor/darkness_arrow_damage

advancement revoke @s only advancements:damage/hurt_entity_check
advancement revoke @s only advancements:damage/hurt_player_check


##poisonous potato resets
tag @s remove has_potato
tag @s remove has_had_potato
scoreboard players reset @s pickup_potato

##ability cake reset
tag @s remove reset_timer_when_ability_over

##cookie objective reset
scoreboard players reset @s eat_cookie

##healing obj reset
scoreboard players reset @s times_heal

##Removing fear level
tag @s remove fear_level_1

##adv tags
tag @s remove near_void

##drop red dye
scoreboard players reset @s drop_red_dye