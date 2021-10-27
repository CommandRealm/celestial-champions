##Called when you click on the fighter screen

##Copying our screen to calculate
scoreboard players operation @s calculate = @s screen

##Clicks

##Start screen clicks
execute if entity @s[scores={screen=0}] unless entity @s[nbt={EnderItems:[{id:"minecraft:command_block",tag:{clickable:1}}]}] run function lobby:chest_menu/start_credits
execute if entity @s[scores={screen=0}] unless entity @s[nbt={EnderItems:[{id:"minecraft:nether_star",tag:{clickable:1}}]}] run function lobby:chest_menu/start_stats
execute if entity @s[scores={screen=0}] unless entity @s[nbt={EnderItems:[{id:"minecraft:brewing_stand",tag:{clickable:1}}]}] run function lobby:chest_menu/start_options
execute if entity @s[scores={screen=0}] unless entity @s[nbt={EnderItems:[{id:"minecraft:golden_helmet",tag:{clickable:1}}]}] run function lobby:chest_menu/start_cosmetics
execute if entity @s[scores={screen=0}] unless entity @s[nbt={EnderItems:[{id:"minecraft:book",tag:{clickable:1}}]}] run function lobby:chest_menu/tutorial
execute if score @s screen matches 0 unless entity @s[tag=!has_test,tag=!has_help,tag=!has_bld,tag=!has_srbld,tag=!has_prg,tag=!has_srprg,tag=!has_manager,tag=!has_lead,tag=!has_pc,tag=!has_cr,tag=!has_art] unless data entity @s EnderItems[{id:"minecraft:written_book"}] run function lobby:chest_menu/start_titles


##First screen clicks
execute if entity @s[scores={screen=1}] unless entity @s[nbt={EnderItems:[{id:"minecraft:barrier",tag:{clickable:1}}]}] run function lobby:chest_menu/start
execute if entity @s[scores={screen=1}] unless entity @s[nbt={EnderItems:[{id:"minecraft:chain_command_block",tag:{clickable:1}}]}] run function lobby:chest_menu/start_team_credits
execute if entity @s[scores={screen=1}] unless entity @s[nbt={EnderItems:[{id:"minecraft:player_head",tag:{clickable:1}}]}] run function lobby:chest_menu/start_website_credits
execute if entity @s[scores={screen=1}] unless entity @s[nbt={EnderItems:[{id:"minecraft:music_disc_stal",tag:{clickable:1}}]}] run function lobby:chest_menu/start_music_credits

##Second screen clicks
execute if entity @s[scores={screen=2}] unless entity @s[nbt={EnderItems:[{id:"minecraft:barrier",tag:{clickable:1}}]}] run function lobby:chest_menu/start_credits
execute if entity @s[scores={screen=2}] if score @s screen = @s calculate run function lobby:chest_menu/start_website_credits

##Third screen clicks
execute if entity @s[scores={screen=3}] unless entity @s[nbt={EnderItems:[{id:"minecraft:barrier",tag:{clickable:1}}]}] run function lobby:chest_menu/start_credits
execute if entity @s[scores={screen=3}] if entity @s[nbt={EnderItems:[{id:"minecraft:barrier",tag:{clickable:1}}]}] if score @s screen = @s calculate run function lobby:chest_menu/get_music_description

##Fourth screen clicks
execute if entity @s[scores={screen=4}] unless entity @s[nbt={EnderItems:[{id:"minecraft:barrier",tag:{clickable:1}}]}] run function lobby:chest_menu/start_credits
execute if entity @s[scores={screen=4}] unless entity @s[nbt={EnderItems:[{id:"minecraft:book",tag:{clickable:1}}]}] run function lobby:chest_menu/view_testers
execute if entity @s[scores={screen=4}] if entity @s[nbt={EnderItems:[{id:"minecraft:book",tag:{clickable:1}}]}] if entity @s[nbt={EnderItems:[{id:"minecraft:barrier",tag:{clickable:1}}]}] run function lobby:chest_menu/start_team_credits


##Fifth screen clicks (This is stats)
execute if entity @s[scores={screen=5}] unless entity @s[nbt={EnderItems:[{id:"minecraft:barrier",tag:{clickable:1}}]}] run function lobby:chest_menu/start
execute if entity @s[scores={screen=5}] if score @s screen = @s calculate run function lobby:chest_menu/start_stats


##sixth screen clicks
execute if entity @s[scores={screen=6}] unless entity @s[nbt={EnderItems:[{id:"minecraft:barrier",tag:{clickable:1}}]}] run function lobby:chest_menu/start
execute if entity @s[scores={screen=6}] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_sword",tag:{clickable:1}}]}] run function lobby:chest_menu/start_hotbar_orientation
execute if entity @s[scores={screen=6},tag=!action_bar_symbols] unless entity @s[nbt={EnderItems:[{id:"minecraft:ender_pearl",tag:{clickable:1}}]}] run function lobby:chest_menu/toggle_action_bar_symbols
execute if entity @s[scores={screen=6},tag=action_bar_symbols] unless entity @s[nbt={EnderItems:[{id:"minecraft:ender_eye",tag:{clickable:1}}]}] run function lobby:chest_menu/toggle_action_bar_symbols
execute if entity @s[scores={screen=6,handicap=0}] unless entity @s[nbt={EnderItems:[{id:"minecraft:netherite_pickaxe",tag:{clickable:1}}]}] run function lobby:chest_menu/adjust_handicap
execute if entity @s[scores={screen=6,handicap=1}] unless entity @s[nbt={EnderItems:[{id:"minecraft:stick",tag:{clickable:1}}]}] run function lobby:chest_menu/adjust_handicap
execute if entity @s[scores={screen=6,handicap=2}] unless entity @s[nbt={EnderItems:[{id:"minecraft:wooden_pickaxe",tag:{clickable:1}}]}] run function lobby:chest_menu/adjust_handicap
execute if entity @s[scores={screen=6,handicap=3}] unless entity @s[nbt={EnderItems:[{id:"minecraft:iron_pickaxe",tag:{clickable:1}}]}] run function lobby:chest_menu/adjust_handicap
execute if entity @s[scores={screen=6},tag=!no_ability_msg] unless entity @s[nbt={EnderItems:[{id:"minecraft:soul_torch",tag:{clickable:1}}]}] run function lobby:chest_menu/toggle_ability_msg
execute if entity @s[scores={screen=6},tag=no_ability_msg] unless entity @s[nbt={EnderItems:[{id:"minecraft:torch",tag:{clickable:1}}]}] run function lobby:chest_menu/toggle_ability_msg
execute if entity @s[scores={screen=6},tag=!no_music_msg] unless entity @s[nbt={EnderItems:[{id:"minecraft:music_disc_cat",tag:{clickable:1}}]}] run function lobby:chest_menu/toggle_music_msg
execute if entity @s[scores={screen=6},tag=no_music_msg] unless entity @s[nbt={EnderItems:[{id:"minecraft:music_disc_stal",tag:{clickable:1}}]}] run function lobby:chest_menu/toggle_music_msg
##seventh screen clicks (this is hotbar orientation)
execute if entity @s[scores={screen=7}] unless entity @s[nbt={EnderItems:[{id:"minecraft:barrier",tag:{clickable:1}}]}] run function lobby:chest_menu/start_options
execute if entity @s[scores={screen=7}] unless entity @s[nbt={EnderItems:[{id:"minecraft:emerald",tag:{clickable:1}}]}] run function lobby:chest_menu/save_hotbar_orientation
execute if entity @s[scores={screen=7}] if entity @s[nbt={EnderItems:[{id:"minecraft:emerald",tag:{clickable:1}}]}] if score @s screen = @s calculate run function lobby:chest_menu/start_hotbar_orientation

execute unless entity @s[tag=invalid_click] run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1


##Eighth screen clicks (This is cosmetics)
execute if entity @s[scores={screen=8}] unless entity @s[nbt={EnderItems:[{id:"minecraft:barrier",tag:{clickable:1}}]}] run function lobby:chest_menu/start
execute if entity @s[scores={screen=8}] unless entity @s[nbt={EnderItems:[{id:"minecraft:bone",tag:{clickable:1}}]}] run function lobby:chest_menu/start_death_animations
execute if entity @s[scores={screen=8}] unless entity @s[nbt={EnderItems:[{id:"minecraft:diamond",tag:{clickable:1}}]}] run function lobby:chest_menu/start_celebrations
execute if entity @s[scores={screen=8}] unless entity @s[nbt={EnderItems:[{id:"minecraft:gold_nugget",tag:{clickable:1}}]}] run function lobby:chest_menu/start_advancement_unlocks


##Cosmetic seletion (death poses)
execute if entity @s[scores={screen=9}] unless entity @s[nbt={EnderItems:[{id:"minecraft:barrier",tag:{clickable:1}}]}] run function lobby:chest_menu/start_cosmetics
execute if entity @s[scores={screen=9}] run scoreboard players operation @s calculate = @s death_animation
execute if entity @s[scores={screen=9}] unless entity @s[nbt={EnderItems:[{tag:{id:0}}]}] run scoreboard players set @s calculate 0
execute if entity @s[scores={screen=9}] unless entity @s[nbt={EnderItems:[{tag:{id:1}}]}] run scoreboard players set @s calculate 1
execute if entity @s[scores={screen=9}] unless entity @s[nbt={EnderItems:[{tag:{id:2}}]}] run scoreboard players set @s calculate 2
execute if entity @s[scores={screen=9}] unless entity @s[nbt={EnderItems:[{tag:{id:3}}]}] run scoreboard players set @s calculate 3
execute if entity @s[scores={screen=9}] unless entity @s[nbt={EnderItems:[{tag:{id:4}}]}] run scoreboard players set @s calculate 4
execute if entity @s[scores={screen=9}] unless entity @s[nbt={EnderItems:[{tag:{id:5}}]}] run scoreboard players set @s calculate 5
execute if entity @s[scores={screen=9}] unless entity @s[nbt={EnderItems:[{tag:{id:6}}]}] run scoreboard players set @s calculate 6
execute if entity @s[scores={screen=9},tag=unlock_death_7] unless entity @s[nbt={EnderItems:[{tag:{id:7}}]}] run scoreboard players set @s calculate 7
execute if entity @s[scores={screen=9},tag=unlock_death_8] unless entity @s[nbt={EnderItems:[{tag:{id:8}}]}] run scoreboard players set @s calculate 8
execute if entity @s[scores={screen=9},tag=unlock_death_9] unless entity @s[nbt={EnderItems:[{tag:{id:9}}]}] run scoreboard players set @s calculate 9
execute if entity @s[scores={screen=9},tag=unlock_death_10] unless entity @s[nbt={EnderItems:[{tag:{id:10}}]}] run scoreboard players set @s calculate 10
execute if entity @s[scores={screen=9},tag=unlock_death_11] unless entity @s[nbt={EnderItems:[{tag:{id:11}}]}] run scoreboard players set @s calculate 11

##if we changed poses run the start function
execute if entity @s[scores={screen=9}] unless score @s calculate = @s death_animation run function lobby:chest_menu/change_death_animations
execute if entity @s[scores={screen=9}] if score @s calculate = @s death_animation if entity @s[nbt={EnderItems:[{id:"minecraft:barrier",tag:{clickable:1}}]}] run function lobby:chest_menu/start_death_animations

##iron bars
execute if entity @s[scores={screen=9},tag=unlock_death_9] unless entity @s[nbt={EnderItems:[{tag:{id:9}}]}] run function lobby:chest_menu/start_death_animations
execute if entity @s[scores={screen=9},tag=unlock_death_10] unless entity @s[nbt={EnderItems:[{tag:{id:10}}]}] run function lobby:chest_menu/start_death_animations
execute if entity @s[scores={screen=9},tag=unlock_death_11] unless entity @s[nbt={EnderItems:[{tag:{id:11}}]}] run function lobby:chest_menu/start_death_animations


##Cosmetic seletion (celebrations)
execute if entity @s[scores={screen=10}] unless entity @s[nbt={EnderItems:[{id:"minecraft:barrier",tag:{clickable:1}}]}] run function lobby:chest_menu/start_cosmetics
execute if entity @s[scores={screen=10}] run scoreboard players operation @s calculate = @s celebration
execute if entity @s[scores={screen=10}] unless entity @s[nbt={EnderItems:[{tag:{id:0}}]}] run scoreboard players set @s calculate 0
execute if entity @s[scores={screen=10}] unless entity @s[nbt={EnderItems:[{tag:{id:1}}]}] run scoreboard players set @s calculate 1
execute if entity @s[scores={screen=10}] unless entity @s[nbt={EnderItems:[{tag:{id:2}}]}] run scoreboard players set @s calculate 2
execute if entity @s[scores={screen=10}] unless entity @s[nbt={EnderItems:[{tag:{id:3}}]}] run scoreboard players set @s calculate 3
execute if entity @s[scores={screen=10}] unless entity @s[nbt={EnderItems:[{tag:{id:4}}]}] run scoreboard players set @s calculate 4
execute if entity @s[scores={screen=10}] unless entity @s[nbt={EnderItems:[{tag:{id:5}}]}] run scoreboard players set @s calculate 5
execute if entity @s[scores={screen=10}] unless entity @s[nbt={EnderItems:[{tag:{id:6}}]}] run scoreboard players set @s calculate 6
execute if entity @s[scores={screen=10}] unless entity @s[nbt={EnderItems:[{tag:{id:7}}]}] run scoreboard players set @s calculate 7
execute if entity @s[scores={screen=10}] unless entity @s[nbt={EnderItems:[{tag:{id:8}}]}] run scoreboard players set @s calculate 8
execute if entity @s[scores={screen=10}] unless entity @s[nbt={EnderItems:[{tag:{id:9}}]}] run scoreboard players set @s calculate 9
execute if entity @s[scores={screen=10},tag=unlock_celebration_10] unless entity @s[nbt={EnderItems:[{tag:{id:10}}]}] run scoreboard players set @s calculate 10
execute if entity @s[scores={screen=10},tag=unlock_celebration_11] unless entity @s[nbt={EnderItems:[{tag:{id:11}}]}] run scoreboard players set @s calculate 11
execute if entity @s[scores={screen=10},tag=unlock_celebration_12] unless entity @s[nbt={EnderItems:[{tag:{id:12}}]}] run scoreboard players set @s calculate 12
execute if entity @s[scores={screen=10},tag=unlock_celebration_13] unless entity @s[nbt={EnderItems:[{tag:{id:13}}]}] run scoreboard players set @s calculate 13
execute if entity @s[scores={screen=10},tag=unlock_celebration_14] unless entity @s[nbt={EnderItems:[{tag:{id:14}}]}] run scoreboard players set @s calculate 14
execute if entity @s[scores={screen=10},tag=unlock_celebration_15] unless entity @s[nbt={EnderItems:[{tag:{id:15}}]}] run scoreboard players set @s calculate 15
execute if entity @s[scores={screen=10},tag=unlock_celebration_16] unless entity @s[nbt={EnderItems:[{tag:{id:16}}]}] run scoreboard players set @s calculate 16
execute if entity @s[scores={screen=10},tag=unlock_celebration_17] unless entity @s[nbt={EnderItems:[{tag:{id:17}}]}] run scoreboard players set @s calculate 17


##if we changed poses run the start function
execute if entity @s[scores={screen=10}] unless score @s calculate = @s celebration run function lobby:chest_menu/change_celebrations
execute if entity @s[scores={screen=10}] if score @s calculate = @s celebration if entity @s[nbt={EnderItems:[{id:"minecraft:barrier",tag:{clickable:1}}]}] run function lobby:chest_menu/start_celebrations

##iron bars
execute if entity @s[scores={screen=10},tag=unlock_celebration_10] unless entity @s[nbt={EnderItems:[{tag:{id:10}}]}] run function lobby:chest_menu/start_celebrations
execute if entity @s[scores={screen=10},tag=unlock_celebration_11] unless entity @s[nbt={EnderItems:[{tag:{id:11}}]}] run function lobby:chest_menu/start_celebrations
execute if entity @s[scores={screen=10},tag=unlock_celebration_12] unless entity @s[nbt={EnderItems:[{tag:{id:12}}]}] run function lobby:chest_menu/start_celebrations
execute if entity @s[scores={screen=10},tag=unlock_celebration_13] unless entity @s[nbt={EnderItems:[{tag:{id:13}}]}] run function lobby:chest_menu/start_celebrations
execute if entity @s[scores={screen=10},tag=unlock_celebration_14] unless entity @s[nbt={EnderItems:[{tag:{id:14}}]}] run function lobby:chest_menu/start_celebrations
execute if entity @s[scores={screen=10},tag=unlock_celebration_15] unless entity @s[nbt={EnderItems:[{tag:{id:15}}]}] run function lobby:chest_menu/start_celebrations
execute if entity @s[scores={screen=10},tag=unlock_celebration_16] unless entity @s[nbt={EnderItems:[{tag:{id:16}}]}] run function lobby:chest_menu/start_celebrations
execute if entity @s[scores={screen=10},tag=unlock_celebration_17] unless entity @s[nbt={EnderItems:[{tag:{id:17}}]}] run function lobby:chest_menu/start_celebrations

##Advancement Unlocks
execute if entity @s[scores={screen=11}] unless entity @s[nbt={EnderItems:[{id:"minecraft:barrier",tag:{clickable:1}}]}] run function lobby:chest_menu/start_cosmetics
execute if entity @s[scores={screen=11},advancements={advancements:custom/all_lobby=true}] unless entity @s[nbt={EnderItems:[{tag:{id:1}}]}] run function lobby:chest_menu/toggle_prefix
execute if entity @s[scores={screen=11},advancements={advancements:custom/all_kills=true}] unless entity @s[nbt={EnderItems:[{tag:{id:2}}]}] run function lobby:chest_menu/toggle_death_animation
execute if entity @s[scores={screen=11},advancements={advancements:custom/all_games=true}] unless entity @s[nbt={EnderItems:[{tag:{id:3}}]}] run function lobby:chest_menu/toggle_celebration

execute if entity @s[scores={screen=11},advancements={advancements:custom/all_lobby=false}] unless entity @s[nbt={EnderItems:[{tag:{id:1}}]}] run function lobby:chest_menu/start_advancement_unlocks
execute if entity @s[scores={screen=11},advancements={advancements:custom/all_kills=false}] unless entity @s[nbt={EnderItems:[{tag:{id:2}}]}] run function lobby:chest_menu/start_advancement_unlocks
execute if entity @s[scores={screen=11},advancements={advancements:custom/all_games=false}] unless entity @s[nbt={EnderItems:[{tag:{id:3}}]}] run function lobby:chest_menu/start_advancement_unlocks


execute if entity @s[scores={screen=99}] run function lobby:chest_menu/click_titles

##Advancement
advancement grant @s[scores={death_animation=1..,celebration=1..,costume=1..}] only advancements:custom/cosmetics