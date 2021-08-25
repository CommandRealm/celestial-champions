##Function that resets players

##set resetting score to 1 so that this won't run next time they join
scoreboard players set @s resetting 1


##Slot scores

##Slot position for combo weapon
scoreboard players set @s combo_slot 1
##Slot position for kb weapon
scoreboard players set @s knockback_slot 0
##Slot position for air jumps
scoreboard players set @s air_jump_slot 8

##Character/costume
scoreboard players set @s fighter 0
scoreboard players set @s costume 0





##Character costume selected objectives
scoreboard players set @s f_0_costume 0
scoreboard players set @s f_1_costume 0
scoreboard players set @s f_2_costume 0
scoreboard players set @s f_3_costume 0
scoreboard players set @s f_4_costume 0
scoreboard players set @s f_5_costume 0
scoreboard players set @s f_6_costume 0
scoreboard players set @s f_7_costume 0
scoreboard players set @s f_8_costume 0
scoreboard players set @s f_9_costume 0
scoreboard players set @s f_10_costume 0
scoreboard players set @s f_11_costume 0
scoreboard players set @s f_12_costume 0
scoreboard players set @s f_13_costume 0
scoreboard players set @s f_14_costume 0
scoreboard players set @s f_15_costume 0


##Creating Lobby id
scoreboard players add $set_id lobby_id 1
scoreboard players operation @s lobby_id = $set_id lobby_id


##music resets
scoreboard players reset @s previous_track
scoreboard players set @s music_time 100
scoreboard players set @s music_cooldown 20
scoreboard players set @s queued_track 16



##Resetting statistics
scoreboard players set @s stats_played 0
scoreboard players set @s stats_wins 0
scoreboard players set @s stats_duels 0 
scoreboard players set @s stats_d_wins 0
scoreboard players set @s stats_kills 0
scoreboard players set @s stats_deaths 0
scoreboard players set @s stats_streak 0


##handicap reset
scoreboard players set @s handicap 0

##action bar reset
tag @s remove action_bar_symbols

##msg resets
tag @s remove no_music_msg
tag @s remove no_ability_msg
tag @s remove pause_music


##Cosmetic resets
scoreboard players set @s celebration 0
scoreboard players set @s death_animation 0


##REmoving invalid book tags
tag @s remove invalid_book_slot_0
tag @s remove invalid_book_slot_1
tag @s remove invalid_book_slot_2
tag @s remove invalid_book_slot_3
tag @s remove invalid_book_slot_4
tag @s remove invalid_book_slot_5
tag @s remove invalid_book_slot_6
tag @s remove invalid_book_slot_7
tag @s remove invalid_book_slot_8

tag @s add invalid_book_slot_0
tag @s add invalid_book_slot_1
tag @s add invalid_book_slot_8


##remove advancements
advancement revoke @s everything

##removing unlocks
tag @s remove unlock_death_7
tag @s remove unlock_death_8
tag @s remove unlock_death_9
tag @s remove unlock_death_10
tag @s remove unlock_death_11

tag @s remove unlock_celebration_10
tag @s remove unlock_celebration_11
tag @s remove unlock_celebration_12
tag @s remove unlock_celebration_13
tag @s remove unlock_celebration_14
tag @s remove unlock_celebration_15
tag @s remove unlock_celebration_16
tag @s remove unlock_celebration_17

tag @s remove unlock_theo_2
tag @s remove unlock_theo_3
tag @s remove unlock_theo_4

tag @s remove unlock_incend_2
tag @s remove unlock_incend_3
tag @s remove unlock_incend_4

tag @s remove unlock_drakier_2
tag @s remove unlock_drakier_3
tag @s remove unlock_drakier_4

tag @s remove unlock_gracea_2
tag @s remove unlock_gracea_3
tag @s remove unlock_gracea_4

tag @s remove unlock_callidus_2
tag @s remove unlock_callidus_3
tag @s remove unlock_callidus_4

tag @s remove unlock_melon_man_2
tag @s remove unlock_melon_man_3
tag @s remove unlock_melon_man_4

tag @s remove unlock_gene_2
tag @s remove unlock_gene_3
tag @s remove unlock_gene_4

tag @s remove unlock_malice_2
tag @s remove unlock_malice_3
tag @s remove unlock_malice_4

tag @s remove unlock_zombie_2
tag @s remove unlock_zombie_3

tag @s remove unlock_skeleton_2
tag @s remove unlock_skeleton_3

tag @s remove unlock_spider_2

tag @s remove unlock_creeper_2

tag @s remove unlock_enderman_2
tag @s remove unlock_enderman_3
tag @s remove unlock_enderman_4

tag @s remove unlock_blaze_2
tag @s remove unlock_blaze_3
tag @s remove unlock_blaze_4

tag @s remove unlock_slime_2
tag @s remove unlock_slime_3
tag @s remove unlock_slime_4

tag @s remove unlock_chicken_2
tag @s remove unlock_chicken_3
tag @s remove unlock_chicken_4


##custom tp (disabled)
##tp @s 0 83 -75

##setting our tutorial pointer score
scoreboard players set @s tutorial_pointer 300