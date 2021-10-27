##init function

##Gamerules

gamerule commandBlockOutput false
gamerule doDaylightCycle false
gamerule doFireTick false
gamerule doInsomnia false
gamerule doLimitedCrafting true
gamerule doMobLoot false
gamerule doMobSpawning false
gamerule doTileDrops false
gamerule doWeatherCycle false
gamerule drowningDamage false
gamerule fallDamage false
gamerule fireDamage false
gamerule keepInventory true
gamerule mobGriefing false
gamerule naturalRegeneration false
gamerule randomTickSpeed 0
gamerule reducedDebugInfo true
gamerule sendCommandFeedback false
gamerule showDeathMessages false
gamerule spectatorsGenerateChunks false


##Basic game objectives

##Has joined will by default be null and with an unless statement it can teleport them.
scoreboard objectives add has_joined dummy

scoreboard objectives add has_left minecraft.custom:minecraft.leave_game

scoreboard objectives add state dummy
##$game will be 1 while the game is running and 0 while it isn't running.
scoreboard players add $game state 0

##pregame will countain any information required for the countdown.
scoreboard objectives add pregame dummy


##Ready score
scoreboard objectives add ready dummy

##Pregame right click detection
scoreboard objectives add pregame_click minecraft.used:minecraft.knowledge_book


##Number objective
scoreboard objectives add number dummy
scoreboard players set $2 number 2
scoreboard players set $20 number 20
scoreboard players set $100 number 100
scoreboard players set $minute number 1200
scoreboard players set $5 number 5


##Bossbar obj
scoreboard objectives add bossbar_time dummy

##Settings
scoreboard objectives add settings dummy
scoreboard players add $mode settings 0
scoreboard players add $teams settings 0
scoreboard players add $map settings 0
scoreboard players add $lives settings 0
execute if score $lives settings matches 0 run scoreboard players set $lives settings 3
scoreboard players add $rounds_to_win settings 0
execute if score $rounds_to_win settings matches 0 run scoreboard players set $rounds_to_win settings 2
scoreboard players add $kills_to_win settings 0
execute if score $kills_to_win settings matches 0 run scoreboard players set $kills_to_win settings 10
scoreboard players add $set_kills_timer settings 0
execute if score $set_kills_timer settings matches 0 run scoreboard players set $set_kills_timer settings 3600
scoreboard players add $item_rate settings 0


##Main objective just for game operations.
scoreboard objectives add game dummy



##Purpose of this objective is to copy the players rotation to it.
scoreboard objectives add player_rotation dummy


##Lives
scoreboard objectives add lives dummy

##Death cooldown obj
scoreboard objectives add death_cooldown dummy


##teams for individual fighters
team add fighter_1
team add fighter_2
team add fighter_3
team add fighter_4
team add fighter_5
team add fighter_6
team add fighter_7
team add fighter_8
team add fighter_9
team add fighter_10
team add fighter_11
team add fighter_12
team add fighter_13
team add fighter_14
team add fighter_15
team add fighter_16
team add fighter_17
team add fighter_18
team add fighter_19
team add fighter_20
team add fighter_21
team add fighter_22
team add fighter_23
team add fighter_24
team add fighter_25
team add fighter_26
team add fighter_27
team add fighter_28
team add fighter_29
team add fighter_30
team add fighter_31
team add fighter_32
team add fighter_33
team add fighter_34
team add fighter_35
team add fighter_36
team add fighter_37
team add fighter_38
team add fighter_39
team add fighter_30
team add fighter_41
team add fighter_42
team add fighter_43
team add fighter_44
team add fighter_45
team add fighter_46
team add fighter_47
team add fighter_48
team add fighter_49
team add fighter_50
##Colors
team modify fighter_1 color aqua
team modify fighter_2 color aqua
team modify fighter_3 color aqua
team modify fighter_4 color aqua
team modify fighter_5 color aqua
team modify fighter_6 color aqua
team modify fighter_7 color aqua
team modify fighter_8 color aqua
team modify fighter_9 color aqua
team modify fighter_10 color aqua
team modify fighter_11 color aqua
team modify fighter_12 color aqua
team modify fighter_13 color aqua
team modify fighter_14 color aqua
team modify fighter_15 color aqua
team modify fighter_16 color aqua
team modify fighter_17 color aqua
team modify fighter_18 color aqua
team modify fighter_19 color aqua
team modify fighter_20 color aqua
team modify fighter_21 color aqua
team modify fighter_22 color aqua
team modify fighter_23 color aqua
team modify fighter_24 color aqua
team modify fighter_25 color aqua
team modify fighter_26 color aqua
team modify fighter_27 color aqua
team modify fighter_28 color aqua
team modify fighter_29 color aqua
team modify fighter_30 color aqua
team modify fighter_31 color aqua
team modify fighter_32 color aqua
team modify fighter_33 color aqua
team modify fighter_34 color aqua
team modify fighter_35 color aqua
team modify fighter_36 color aqua
team modify fighter_37 color aqua
team modify fighter_38 color aqua
team modify fighter_39 color aqua
team modify fighter_30 color aqua
team modify fighter_41 color aqua
team modify fighter_42 color aqua
team modify fighter_43 color aqua
team modify fighter_44 color aqua
team modify fighter_45 color aqua
team modify fighter_46 color aqua
team modify fighter_47 color aqua
team modify fighter_48 color aqua
team modify fighter_49 color aqua
team modify fighter_50 color aqua

##Dead team
team add dead
team modify dead color red
team modify dead prefix [{"text":"[","color":"dark_gray","bold":true},{"text":"☠","color":"gray","bold":false},{"text":"] ","color":"dark_gray","bold":true}]

##Cooldown objectives (Will be used for the time in between gameplay stuffs)
scoreboard objectives add cooldown dummy


##Fake criteria objective to compare scores
scoreboard objectives add fake_criteria dummy


##Basic color teams
team add aqua
team modify aqua color aqua
team add gold
team modify gold color gold
team add red
team modify red color red
team add white
team modify white color white
team add gray
team modify gray color gray

##Join team for the sake of color on the sidebar
team join gold Criteria:



##Lobby teams
team add lobby
team add test
team add help
team add bld
team add prg
team add srbld
team add srprg
team add lead
team add art
team add sr_art
team add pc_role
team modify lobby color aqua
team modify test color aqua
team modify help color aqua
team modify bld color aqua
team modify prg color aqua
team modify srbld color aqua
team modify srprg color aqua
team modify lead color aqua
team modify art color aqua
team modify sr_art color aqua
team modify pc_role color aqua
team modify test prefix {"text":"(Tester) ","color":"aqua"}
team modify help prefix {"text":"[Helper] ","color":"dark_aqua"}
team modify bld prefix {"text":"{Builder} ","color":"blue"}
team modify prg prefix {"text":"{Programmer} ","color":"red"}
team modify srbld prefix {"text":"{Sr. Builder} ","color":"dark_blue"}
team modify srprg prefix {"text":"{Sr. Programmer} ","color":"dark_red"}
team modify lead prefix [{"text":"{","color":"dark_purple","bold":true},{"text":"Project Lead","bold":false},{"text":"} ","bold":true}]
team modify art prefix {"text":"{Artist} ","color":"green"}
team modify sr_art prefix {"text":"{Sr. Artist} ","color":"dark_green"}
team modify pc_role prefix [{"text":"(","color":"dark_gray"},{"text":"pc","color":"green","bold":true},{"text":") ","color":"dark_gray"}]

team add manager
team modify manager color aqua
team modify manager prefix {"text":"{Manager} ","color":"yellow"}

team add cr
team modify cr color aqua
team modify cr prefix [{"text":"{","color":"white","bold":true},{"text":"C","color":"aqua","bold":true},{"text":"R","color":"dark_aqua","bold":true},{"text":"} ","color":"white","bold":true}]


team add sky_explorer
team modify sky_explorer color aqua
team modify sky_explorer prefix [{"text":"{","color":"dark_aqua","bold":true},{"text":"Sky ","bold":false,"color":"white"},{"text":"Explorer","color":"aqua","bold":false},{"text":"} ","bold":true,"color":"dark_aqua"}]


##Objectives for in-game statistics

##Slot position for combo weapon
scoreboard objectives add combo_slot dummy
##Slot position for kb weapon
scoreboard objectives add knockback_slot dummy
##Slot position for air jumps
scoreboard objectives add air_jump_slot dummy
##Slot detection objectives
scoreboard objectives add slot_success dummy

##Combo multiplier that will increase your current knockback
scoreboard objectives add combo_multiplier dummy

##Times hitting another player before using kb weapon.
scoreboard objectives add combo dummy

##Max knockback a fighter can have
scoreboard objectives add max_knockback dummy

##Set knockback objective (is used in abilities where it the kb is locked to a specific number)
scoreboard objectives add set_knockback dummy


##Max amount of times a player can be hit before their jump isn't affected any further
scoreboard objectives add max_damage dummy

##Times a player has been hit
scoreboard objectives add times_hit dummy

##Percentage displayed in game.
scoreboard objectives add damage_percent dummy [{"text":"☠","color":"gray"}]

##Number of extra jumps
scoreboard objectives add extra_jumps dummy

##Amount of extra jumps
scoreboard objectives add set_extra_jumps dummy

##Tick timer for how long each double jump will last
scoreboard objectives add extra_jump_time dummy

##Objective that will copy this score to "extra_jump_time" 
scoreboard objectives add set_e_jump_time dummy

##Cooldown between using extra jumps
scoreboard objectives add extra_jump_cool dummy

##Amplifier of levitation
scoreboard objectives add extra_jump_force dummy

##Starting knockback.
scoreboard objectives add base_knockback dummy

##Starting knockback.
scoreboard objectives add base_kb_decimal dummy

##Current amount of knockback.
scoreboard objectives add knockback dummy

##What the knockback should be.
scoreboard objectives add calc_knockback dummy

##Amplifier of jump boost
scoreboard objectives add jump_force dummy

##Keeps track of abilities 
scoreboard objectives add ability_timer dummy

##Keeps track of the abilities state (In progress versus cooling down)
scoreboard objectives add ability_state dummy

##Drop ability objective
scoreboard objectives add drop_ability minecraft.custom:minecraft.drop

##Ability display objective (It will display seconds in the action bar)
scoreboard objectives add ability_display dummy

##Second ability display objective (Because you can't copy it over every tick.)
scoreboard objectives add check_ability_d dummy

##Ability type objective (ground or air) (This is used after the ability has been activated)
scoreboard objectives add ability_type dummy

##Keeps track of whether the fighter's ability when used should be
scoreboard objectives add use_ability_type dummy

##Is used as a timer to tell if an ability should be in the ground or air.
scoreboard objectives add ability_type_d dummy

##Fighter score
scoreboard objectives add fighter dummy

##Costume score
scoreboard objectives add costume dummy




##Function to see if players have been reset
scoreboard objectives add resetting dummy

##Damage dealt obj
scoreboard objectives add damage_dealt minecraft.custom:minecraft.damage_dealt_resisted

##Damage taken obj
scoreboard objectives add damage_taken minecraft.custom:minecraft.damage_resisted

##Calculation objective. Whenever it's used it should only be done over a tick (Meaning it can be used over and over again)
scoreboard objectives add calculate dummy


##Extra jump sneaking objective
scoreboard objectives add extra_jump_sneak minecraft.custom:minecraft.sneak_time


##Objective that will keep track of the player who last hit you.
scoreboard objectives add damaged_id dummy

##Objective that will reset your damaged_id score if you haven't been hit in awhile
scoreboard objectives add damage_timer dummy

##Blink timer
scoreboard objectives add blink dummy


##Adding random function
scoreboard objectives add random dummy

##Death timer
scoreboard objectives add death_timer dummy


##Position scoreboard
scoreboard objectives add pos_x dummy
scoreboard objectives add pos_y dummy
scoreboard objectives add pos_z dummy


##Collisionless team
team add no_collision
team modify no_collision collisionRule never

##Arrow cooldown
scoreboard objectives add arrow_timer dummy
##Set arrow timer
scoreboard objectives add set_arrow_timer dummy

##Stun objective
scoreboard objectives add stun dummy

##Fear objective
scoreboard objectives add fear dummy

##Additional cooldown objective. Should be set by fighters to do various things (such as a chicken getting an egg to throw cooldown)
scoreboard objectives add random_cooldown dummy

##Additional cooldown objective 2. Should be set by fighters to do various things (such as a chicken getting an egg to throw cooldown)
scoreboard objectives add random_cooldown2 dummy

##Additional cooldown objective 3. Should be set by fighters to do various things (such as a chicken getting an egg to throw cooldown)
scoreboard objectives add random_cooldown3 dummy

##Additional objective to keep track of a random statistic. (Is reset by player functions and reset_scores function)
scoreboard objectives add random_stat dummy

##Additional objective to keep track of a random statistic. (Is reset by player functions and reset_scores function)
scoreboard objectives add random_stat2 dummy

##Additional objective to keep track of a random statistic. (Is reset by player functions and reset_scores function)
scoreboard objectives add random_stat3 dummy

##Thrown egg obj
scoreboard objectives add throw_egg minecraft.used:minecraft.egg


##Ender chest objectives
scoreboard objectives add open_echest minecraft.custom:minecraft.open_enderchest
scoreboard objectives add screen dummy
scoreboard objectives add chest_clear dummy




##Character costume selected objectives
scoreboard objectives add f_0_costume dummy
scoreboard objectives add f_1_costume dummy
scoreboard objectives add f_2_costume dummy
scoreboard objectives add f_3_costume dummy
scoreboard objectives add f_4_costume dummy
scoreboard objectives add f_5_costume dummy
scoreboard objectives add f_6_costume dummy
scoreboard objectives add f_7_costume dummy
scoreboard objectives add f_8_costume dummy
scoreboard objectives add f_9_costume dummy
scoreboard objectives add f_10_costume dummy
scoreboard objectives add f_11_costume dummy
scoreboard objectives add f_12_costume dummy
scoreboard objectives add f_13_costume dummy
scoreboard objectives add f_14_costume dummy
scoreboard objectives add f_15_costume dummy
scoreboard objectives add f_16_costume dummy
scoreboard objectives add f_17_costume dummy

##Lobby id obj
scoreboard objectives add lobby_id dummy


##End cooldown force spectate armor armor_stand
kill @e[type=armor_stand,tag=end_cooldown_force_spectate]
kill @e[type=area_effect_cloud,tag=end_cooldown_force_spectate]
summon minecraft:area_effect_cloud 0 77.5 77 {Invulnerable:1b,Tags:["end_cooldown_force_spectate"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}


##Killing reset die -- tags
kill @e[type=area_effect_cloud,tag=reset_die]
kill @e[type=area_effect_cloud,tag=fighter_select_chest]
##Summoning fighter selection Marker
summon area_effect_cloud 0 63 17 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["fighter_select_chest"]}
summon area_effect_cloud -45 66 3 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["fighter_select_chest"]}
summon area_effect_cloud -45 66 -3 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["fighter_select_chest"]}
summon area_effect_cloud 37 66 3 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["fighter_select_chest"]}
summon area_effect_cloud 37 66 -3 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["fighter_select_chest"]}
summon area_effect_cloud 0 62 84 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["fighter_select_chest"]}

##Fighter selection display
summon area_effect_cloud 0 65 17 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["fighter_nameplate","reset_die"],CustomNameVisible:1b}
summon area_effect_cloud -45 68 3 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["fighter_nameplate","reset_die"],CustomNameVisible:1b}
summon area_effect_cloud -45 68 -3 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["fighter_nameplate","reset_die"],CustomNameVisible:1b}
summon area_effect_cloud 37 68 3 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["fighter_nameplate","reset_die"],CustomNameVisible:1b}
summon area_effect_cloud 37 68 -3 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["fighter_nameplate","reset_die"],CustomNameVisible:1b}
summon area_effect_cloud 0 63.5 83.5 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["fighter_nameplate","reset_die","competitive_fighter_nameplate"],CustomNameVisible:0b}

##Menu nameplate text
summon area_effect_cloud 6 67.0 7 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["reset_die"],CustomNameVisible:1b,CustomName:'[{"text":"☀ ","color":"aqua","bold":false},{"text":"- ","color":"gray","bold":true},{"text":"Menu","color":"white","italic":false,"underlined": true},{"text":" -","color":"gray","bold":true},{"text":" ☀","color":"aqua","bold":false}]'}

##Cooldown objective for being invulnerable in the training area
scoreboard objectives add training_area dummy
scoreboard players add $buddy training_area 0

##lobby obj
scoreboard objectives add lobby dummy

##Use shield objective
scoreboard objectives add use_shield minecraft.used:minecraft.shield

##Shoot bow
scoreboard objectives add shoot_bow minecraft.used:minecraft.bow

scoreboard objectives add shoot_crossbow minecraft.used:minecraft.crossbow

##isFlying objective
scoreboard objectives add is_flying minecraft.custom:aviate_one_cm

##Throw trident obj
scoreboard objectives add throw_trident minecraft.used:minecraft.trident

##Bye team
team add bye
team modify bye color gray
team modify bye prefix [{"text":"-= ","color":"white","bold":true},{"text":"BYE ","bold":false,"color":"gray"}]

##Winner team
team add winner
team modify winner color gold
team modify winner prefix [{"text":"[","color":"white","bold":true},{"text":"🗡","bold":false,"color":"yellow"},{"text":"] ","color":"white","bold":true}]


##music objectives
scoreboard objectives add music_time dummy
scoreboard objectives add music_track dummy
scoreboard objectives add music_cooldown dummy
scoreboard objectives add previous_track dummy
scoreboard objectives add queued_track dummy

##statistics
scoreboard objectives add stats_played dummy
scoreboard objectives add stats_wins dummy
scoreboard objectives add stats_duels dummy 
scoreboard objectives add stats_d_wins dummy
scoreboard objectives add stats_kills dummy
scoreboard objectives add stats_deaths dummy
scoreboard objectives add stats_streak dummy


##handicap
scoreboard objectives add handicap dummy


##Bossbar
bossbar remove minecraft:lobby
bossbar add minecraft:lobby [{"text":"| ","obfuscated":true,"color":"gold"},{"text":"Celestial ","obfuscated":false,"bold":true,"color":"white"},{"text":"Champions ","obfuscated":false,"bold":true,"color":"aqua"},{"text":"- ","obfuscated":false,"color":"gray"},{"text":"By the ","obfuscated":false,"color":"white"},{"text":"Command ","obfuscated":false,"bold":true,"color":"aqua"},{"text":"Realm ","obfuscated":false,"bold":true,"color":"dark_aqua"},{"text": "Team","obfuscated":false,"color":"white"},{"text":" |","obfuscated":true,"color":"gold"}]
bossbar set minecraft:lobby style progress
bossbar set minecraft:lobby color blue
bossbar set minecraft:lobby max 1
bossbar set minecraft:lobby value 1
bossbar set minecraft:lobby players @a[tag=!playing,team=!spectator]

##Intro objective
scoreboard objectives add intro dummy


##Malice arrow id objective
scoreboard objectives add malice_arrow_id dummy

##Item timer objective
scoreboard objectives add item_spawn_timer dummy

##Drop item objective
scoreboard objectives add drop_item minecraft.custom:minecraft.drop

##Pickup poisonous potato objective
scoreboard objectives add pickup_potato minecraft.picked_up:poisonous_potato

##Poisonous potato objective
scoreboard objectives add poisonous_potato dummy

##Hunger objectives
scoreboard objectives add hunger dummy
scoreboard objectives add d_hunger food

##Eating cookie obj
scoreboard objectives add eat_cookie minecraft.used:minecraft.cookie

##Healing objective
scoreboard objectives add times_heal dummy

##Init functions from calverin's celebrations.
scoreboard objectives add soulVel dummy
scoreboard objectives add eating dummy
scoreboard objectives add wee minecraft.custom:minecraft.jump

##Celebration
scoreboard objectives add celebration dummy



###Lobby statues

##Clearing all statues
kill @e[tag=lobby_statue]

##New summons
summon armor_stand 24 68.0 83 {Tags:["lobby_statue"],Invulnerable:1b,Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:1}}],Rotation:[180.0f,0.0f]}
setblock 24 67 83 sea_lantern

summon armor_stand 17 68.0 83 {Tags:["lobby_statue"],Invulnerable:1b,Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:2}}],Rotation:[180.0f,0.0f]}
setblock 17 67 83 sea_lantern

summon armor_stand -17 68.0 83 {Tags:["lobby_statue"],Invulnerable:1b,Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:3}}],Rotation:[180.0f,0.0f]}
setblock -17 67 83 sea_lantern

summon armor_stand -24 68.0 83 {Tags:["lobby_statue"],Invulnerable:1b,Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:4}}],Rotation:[180.0f,0.0f]}
setblock -24 67 83 sea_lantern


##Non-stage statues
summon armor_stand 12 69.0 47 {Tags:["lobby_statue"],Invulnerable:1b,Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:5}}],Rotation:[90.0f,0.0f]}

summon armor_stand 12 68.0 42 {Tags:["lobby_statue"],Invulnerable:1b,Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:6}}],Rotation:[90.0f,0.0f]}

summon armor_stand 12 67.0 37 {Tags:["lobby_statue"],Invulnerable:1b,Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:7}}],Rotation:[90.0f,0.0f]}

summon armor_stand 12 66.0 32 {Tags:["lobby_statue"],Invulnerable:1b,Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:8}}],Rotation:[135.0f,0.0f]}

summon armor_stand 16 65.0 31 {Tags:["lobby_statue"],Invulnerable:1b,Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:11}}],Rotation:[180.0f,0.0f]}

summon armor_stand 20 65.0 30 {Tags:["lobby_statue"],Invulnerable:1b,Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:22}}],Rotation:[180.0f,0.0f]}

summon armor_stand -20 65.67 30 {Tags:["lobby_statue"],Invulnerable:1b,Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:23}}],Rotation:[180.0f,0.0f]}



summon armor_stand 12 68.0 52 {Tags:["lobby_statue"],Invulnerable:1b,Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:9}}],Rotation:[90.0f,0.0f]}

summon armor_stand 12 67.0 57 {Tags:["lobby_statue"],Invulnerable:1b,Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:10}}],Rotation:[90.0f,0.0f]}


summon armor_stand 12 66.0 62 {Tags:["lobby_statue"],Invulnerable:1b,Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:12}}],Rotation:[90.0f,0.0f]}




summon armor_stand -12 69.0 47 {Tags:["lobby_statue"],Invulnerable:1b,Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:13}}],Rotation:[-90.0f,0.0f]}

summon armor_stand -12 68.0 42 {Tags:["lobby_statue"],Invulnerable:1b,Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:14}}],Rotation:[-90.0f,0.0f]}

summon armor_stand -12 67.0 37 {Tags:["lobby_statue"],Invulnerable:1b,Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:15}}],Rotation:[-90.0f,0.0f]}

summon armor_stand -12 66.0 32 {Tags:["lobby_statue"],Invulnerable:1b,Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:16}}],Rotation:[-135.0f,0.0f]}

summon armor_stand -16 65.0 31 {Tags:["lobby_statue"],Invulnerable:1b,Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:20}}],Rotation:[180.0f,0.0f]}


summon armor_stand -12 68.0 52 {Tags:["lobby_statue"],Invulnerable:1b,Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:17}}],Rotation:[-90.0f,0.0f]}

summon armor_stand -12 67.0 57 {Tags:["lobby_statue"],Invulnerable:1b,Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:18}}],Rotation:[-90.0f,0.0f]}


summon armor_stand -12 66.0 62 {Tags:["lobby_statue"],Invulnerable:1b,Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:19}}],Rotation:[-90.0f,0.0f]}


##Sea lanterns
summon armor_stand 24 67.0 83 {Tags:["lobby_statue"],Invulnerable:1b,Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:21}}],Rotation:[180.0f,0.0f]}

summon armor_stand 17 67.0 83 {Tags:["lobby_statue"],Invulnerable:1b,Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:21}}],Rotation:[180.0f,0.0f]}

summon armor_stand -17 67.0 83 {Tags:["lobby_statue"],Invulnerable:1b,Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:21}}],Rotation:[180.0f,0.0f]}

summon armor_stand -24 67.0 83 {Tags:["lobby_statue"],Invulnerable:1b,Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:21}}],Rotation:[180.0f,0.0f]}



summon armor_stand 12 68.0 47 {Tags:["lobby_statue"],Invulnerable:1b,Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:21}}],Rotation:[90.0f,0.0f]}

summon armor_stand 12 67.0 42 {Tags:["lobby_statue"],Invulnerable:1b,Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:21}}],Rotation:[90.0f,0.0f]}

summon armor_stand 12 66.0 37 {Tags:["lobby_statue"],Invulnerable:1b,Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:21}}],Rotation:[90.0f,0.0f]}

summon armor_stand 12 65.0 32 {Tags:["lobby_statue"],Invulnerable:1b,Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:21}}],Rotation:[90.0f,0.0f]}

summon armor_stand 16 64.0 31 {Tags:["lobby_statue"],Invulnerable:1b,Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:21}}],Rotation:[180.0f,0.0f]}

summon armor_stand 20 64.0 30 {Tags:["lobby_statue"],Invulnerable:1b,Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:21}}],Rotation:[180.0f,0.0f]}


summon armor_stand 12 67.0 52 {Tags:["lobby_statue"],Invulnerable:1b,Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:21}}],Rotation:[90.0f,0.0f]}

summon armor_stand 12 66.0 57 {Tags:["lobby_statue"],Invulnerable:1b,Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:21}}],Rotation:[90.0f,0.0f]}


summon armor_stand 12 65.0 62 {Tags:["lobby_statue"],Invulnerable:1b,Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:21}}],Rotation:[90.0f,0.0f]}




summon armor_stand -12 68.0 47 {Tags:["lobby_statue"],Invulnerable:1b,Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:21}}],Rotation:[-90.0f,0.0f]}

summon armor_stand -12 67.0 42 {Tags:["lobby_statue"],Invulnerable:1b,Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:21}}],Rotation:[-90.0f,0.0f]}

summon armor_stand -12 66.0 37 {Tags:["lobby_statue"],Invulnerable:1b,Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:21}}],Rotation:[-90.0f,0.0f]}

summon armor_stand -12 65.0 32 {Tags:["lobby_statue"],Invulnerable:1b,Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:21}}],Rotation:[-90.0f,0.0f]}

summon armor_stand -16 64.0 31 {Tags:["lobby_statue"],Invulnerable:1b,Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:21}}],Rotation:[180.0f,0.0f]}

summon armor_stand -20 64.0 30 {Tags:["lobby_statue"],Invulnerable:1b,Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:21}}],Rotation:[180.0f,0.0f]}


summon armor_stand -12 67.0 52 {Tags:["lobby_statue"],Invulnerable:1b,Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:21}}],Rotation:[-90.0f,0.0f]}

summon armor_stand -12 66.0 57 {Tags:["lobby_statue"],Invulnerable:1b,Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:21}}],Rotation:[-90.0f,0.0f]}


summon armor_stand -12 65.0 62 {Tags:["lobby_statue"],Invulnerable:1b,Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:21}}],Rotation:[-90.0f,0.0f]}

##Statues for those without resource packs.
summon armor_stand 24.52 69.8 83.75 {NoBasePlate:1b,Rotation:[180f,0f],Small:1b,Tags:["lobby_statue"],Marker:1b,Invulnerable:1b,ShowArms:1b,Pose:{Head:[0.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f],RightArm:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f]},ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:6250335}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:7631988}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:11053224}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;412514837,-1382006246,-1848038761,768333445],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmVkYzFiNDdiNDhiNGRkZWVlMDFiZDY2YWRhY2M4M2JiNzRlMjg4OWQyMGE0ZGM5NDg1MWJhOWVlZTlmNTk4ZiJ9fX0="}]}}}}]}
summon armor_stand 17.52 69.8 83.75 {NoBasePlate:1b,Rotation:[180f,0f],Small:1b,Tags:["lobby_statue"],Marker:1b,Invulnerable:1b,ShowArms:1b,Pose:{Head:[0.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f],RightArm:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f]},ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:5066061}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:2894892}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:2894892}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1453981176,1841776957,-1391785721,-1500350959],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTNiYzhjMDg2MWVlYjM3NmE5YWZiMDM2ZjljOWE5YmQ0N2ExZmJhNDdlZjUzYzljYjIxNDJhMTZjYjI5ZmRlNSJ9fX0="}]}}}}]}
summon armor_stand -16.48 69.8 83.75 {NoBasePlate:1b,Rotation:[180f,0f],Small:1b,Tags:["lobby_statue"],Marker:1b,Invulnerable:1b,ShowArms:1b,Pose:{Head:[0.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f],RightArm:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f]},ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:9737364}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:7500402}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:7500402}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-35720104,-1645002509,-2005198352,-1527587433],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzllZDhhZDVlNmRiMGFlMGZkMzc5NmI5MGJmNmNjMzQ5YTRlN2RhYzdhOTA4NGUxNmVlOWMyMmY2YzhlMDAwNCJ9fX0="}]}}}}]}
summon armor_stand -23.48 69.8 83.75 {NoBasePlate:1b,Rotation:[180f,0f],Small:1b,Tags:["lobby_statue"],Marker:1b,Invulnerable:1b,ShowArms:1b,Pose:{Head:[0.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f],RightArm:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f]},ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:4144959}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:6184542}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:10526880}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-395930526,-1922939712,-2107351975,356959005],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTBhODkzMmIyN2Y4ZTg1YWJiYzhmYTM5MmRmY2E2ZTM2ZjVlNjI3NmZjNjg4MzMwODA3NTUxY2FmOWE2MjcyNCJ9fX0="}]}}}}]}



##cr side
summon armor_stand 12.75 70.8 47.48 {NoBasePlate:1b,Rotation:[90f,0f],Small:1b,Tags:["lobby_statue"],Marker:1b,Invulnerable:1b,ShowArms:1b,Pose:{Head:[0.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f],RightArm:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f]},ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:15459033}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:9407108}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:8232904}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1706158226,-2029172357,-1939623872,-874332322],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmQ1NDM4YjVlOWU2NzkyOWIxYWNjNThmMDMzNDI3ZDAzNmNmNTM3NjBmYWZlYTk5Y2Y1MzRlOWRkMWU1YjUyMSJ9fX0="}]}}}}]}
summon armor_stand 12.75 69.8 42.48 {NoBasePlate:1b,Rotation:[90f,0f],Small:1b,Tags:["lobby_statue"],Marker:1b,Invulnerable:1b,ShowArms:1b,Pose:{Head:[0.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f],RightArm:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f]},ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:10790052}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:4342338}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:7546663}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1736428236,-1425128944,-1611928863,226301027],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjk5ZDUxMTY2OWFjOWFhYzhhM2I0MjZlMWRiMTljMWQ5OTllMzQ2YzBiNjI2ZGFkZmE2OWNlZGM3OWQwYmUzMSJ9fX0="}]}}}}]}
summon armor_stand 12.75 68.8 37.48 {NoBasePlate:1b,Rotation:[90f,0f],Small:1b,Tags:["lobby_statue"],Marker:1b,Invulnerable:1b,ShowArms:1b,Pose:{Head:[0.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f],RightArm:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f]},ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:3355443}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:6422635}}},{id:"minecraft:elytra",Count:1b},{id:"minecraft:dragon_egg",Count:1b}]}
summon armor_stand 12.75 68.8 37.48 {NoBasePlate:1b,Rotation:[90f,0f],Small:1b,Tags:["lobby_statue"],Marker:1b,Invulnerable:1b,ShowArms:1b,Pose:{Head:[0.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f],RightArm:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f]},ArmorItems:[{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:3355443}}},{}]}

summon armor_stand 12.6825 67.8 32.69 {NoBasePlate:1b,Rotation:[135f,0f],Small:1b,Tags:["lobby_statue"],Marker:1b,Invulnerable:1b,ShowArms:1b,Pose:{Head:[0.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f],RightArm:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f]},ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:9531477}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:3697044}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16768614}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1260790714,831343279,-1820163656,708398762],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2U4NjMzYjA5YTc0MmZlOTgwNDYyY2ExZTc4ODUxMGUyMTIxYjIyMTcyNTJlNDdkM2JhODg0YTQ3ZmRmZmFlMiJ9fX0="}]}}}}]}
summon armor_stand 16.52 66.8 31.75 {NoBasePlate:1b,Rotation:[180f,0f],Small:1b,Tags:["lobby_statue"],Marker:1b,Invulnerable:1b,ShowArms:1b,Pose:{Head:[0.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f],RightArm:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f]},ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:3026478}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:14211288}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:3026478}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1513218681,1201357585,-1883355640,1244300213],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmUwY2Q4MTFmZWUwNjdkNmNjZDBmNTZiYzAzMjUxNDJlN2NjNDE0NzJhMGI1OWUzMWIyMDk0NDZmOTY5NzViNSJ9fX0="}]}}}}]}

summon armor_stand 20.52 66.8 30.75 {NoBasePlate:1b,Rotation:[180f,0f],Small:1b,Tags:["lobby_statue"],Marker:1b,Invulnerable:1b,ShowArms:1b,Pose:{Head:[0.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f],RightArm:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f]},ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:7490880}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:9464397}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:8746119}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1492141837,152390299,-1230096880,-2047988503],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDgyMTFjODM3ZjlhOTQwOTExM2JhYWZjMGFmOGVlYmM4YTM4MjllZTk2YzU0NTAwZjIyYjk4ZGFmOWRiZDNlOCJ9fX0="}]}}}}]}


summon armor_stand 12.75 69.8 52.48 {NoBasePlate:1b,Rotation:[90f,0f],Small:1b,Tags:["lobby_statue"],Marker:1b,Invulnerable:1b,ShowArms:1b,Pose:{Head:[0.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f],RightArm:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f]},ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:6504235}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:8203565}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:13741660}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;802386896,42614843,-1449392350,-1241965188],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmQ3YTUzYWI0Yjg3ZTQxZDA2MDk3ZDJlZDUyYjVmZDM3ZmY3ZjExYTYwNzgxOGQzMWE2YWViNmUxN2IxMWIyMiJ9fX0="}]}}}}]}
summon armor_stand 12.75 68.8 57.48 {NoBasePlate:1b,Rotation:[90f,0f],Small:1b,Tags:["lobby_statue"],Marker:1b,Invulnerable:1b,ShowArms:1b,Pose:{Head:[0.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f],RightArm:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f]},ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:7039851}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:6177334}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:5532232}}},{id:"minecraft:melon",Count:1b}]}
summon armor_stand 12.75 67.8 62.48 {NoBasePlate:1b,Rotation:[90f,0f],Small:1b,Tags:["lobby_statue"],Marker:1b,Invulnerable:1b,ShowArms:1b,Pose:{Head:[0.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f],RightArm:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f]},ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:4012341}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:8421504}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:3618615}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-112192907,354568066,-1867228452,-1978879938],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTBhZTA3Y2NlM2UxZjQ2ZTJhNTExMjY4OTEwMDAyMDQwZWE2Njc3MDFjYmNhYWI4YWI0ZDc4MWJkODJmMTM1MiJ9fX0="}]}}}}]}



##mob side\
summon armor_stand -11.75 70.8 47.52 {NoBasePlate:1b,Rotation:[-90f,0f],Small:1b,Tags:["lobby_statue"],Marker:1b,Invulnerable:1b,ShowArms:1b,Pose:{Head:[0.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f],RightArm:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f]},ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:7895160}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:5128890}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:50886}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1590716297,-948745208,-2049456831,-1974397505],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzk3MTVjNjhiNzgxYzBhZDRlYjE2ZjlkN2NmNDU5MGMzODUwMzQ5MGM5MDU0ZDE1MDhlMjMyZDI0YjBiYWJhOSJ9fX0="}]}}}}]}
summon armor_stand -11.75 69.8 42.52 {NoBasePlate:1b,Rotation:[-90f,0f],Small:1b,Tags:["lobby_statue"],Marker:1b,Invulnerable:1b,ShowArms:1b,Pose:{Head:[0.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f],RightArm:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f]},ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16777215}}},{id:"minecraft:iron_leggings",Count:1b},{id:"minecraft:iron_chestplate",Count:1b},{id:"minecraft:skeleton_skull",Count:1b}]}
summon armor_stand -11.75 68.8 37.52 {NoBasePlate:1b,Rotation:[-90f,0f],Small:1b,Tags:["lobby_statue"],Marker:1b,Invulnerable:1b,ShowArms:1b,Pose:{Head:[0.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f],RightArm:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f]},ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:6313032}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:9603455}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:6313032}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-209743874,1114458955,-1994741648,-1403044399],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjRmMTdmOTRkZTBmMDMxOTQxMWJhNGRlZDNjMjhjMzBlMGIxMzgxZGFmZWY4NWJiNDZlOGFmMjMxYTgwMGVhYyJ9fX0="}]}}}}]}

summon armor_stand -11.6825 67.8 32.69 {NoBasePlate:1b,Rotation:[-135f,0f],Small:1b,Tags:["lobby_statue"],Marker:1b,Invulnerable:1b,ShowArms:1b,Pose:{Head:[0.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f],RightArm:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f]},ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:6608977}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:14145495}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:6608977}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;842164681,-1493155682,-1360510585,-1329394081],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTI0Njg1ZGU5N2EzMzczNWE5NjNiZjdiMTY0YThlNzM3Njk3NGEzM2E4YjczMDIwNzZiOTRiYWUzMjE0NjBjZCJ9fX0="}]}}}}]}
summon armor_stand -15.48 66.8 31.75 {NoBasePlate:1b,Rotation:[180f,0f],Small:1b,Tags:["lobby_statue"],Marker:1b,Invulnerable:1b,ShowArms:1b,Pose:{Head:[0.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f],RightArm:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f]},ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:14728041}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:13882323}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16777215}}},{id:"minecraft:egg",Count:1b,tag:{CustomModelData:4}}]}


summon armor_stand -19.48 66.8 30.75 {NoBasePlate:1b,Rotation:[180f,0f],Small:1b,Tags:["lobby_statue"],Marker:1b,Invulnerable:1b,ShowArms:1b,Pose:{Head:[0.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f],RightArm:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f]},ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:7314826}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:14507302}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:7314826}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1711165194,-78298390,-1220763461,2031473736],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGMxNTFjOGM2YzQxOWU5OGZiYTI0MGExYzVkNDg0MjQ2NWQ2ZDEwYjMyOTc2N2E2ZmJhMmFkOTA4YWQ5MjIxYiJ9fX0="}]}}}}]}


summon armor_stand -11.75 69.8 52.52 {NoBasePlate:1b,Rotation:[-90f,0f],Small:1b,Tags:["lobby_statue"],Marker:1b,Invulnerable:1b,ShowArms:1b,Pose:{Head:[0.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f],RightArm:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f]},ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:1447446}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:2894892}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:1447446}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1564911024,-906279023,-1936070405,-810429957],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTU4MDhlNzA4ZTMzN2VkMGI5ZWI3MGNhM2M3NjA2NDdmODMyOTE5MTY4ZmIxMDU4NTdiMThhZGU2NGFhYzJlOCJ9fX0="}]}}}}]}
summon armor_stand -11.75 68.8 57.52 {NoBasePlate:1b,Rotation:[-90f,0f],Small:1b,Tags:["lobby_statue"],Marker:1b,Invulnerable:1b,ShowArms:1b,Pose:{Head:[0.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f],RightArm:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f]},ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:7586402}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:7586402}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:7586402}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1802906750,976834135,-1909287266,2099849256],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjkwMDM4MzA4MjY2NzY1ZGQxN2Y3ZDZlZjdmNDQzNDZiMmQ3NDVmYzRkZDdmNzlmOTU1YWQ3YWM5NTg3MzkxZCJ9fX0="}]}}}}]}
summon armor_stand -11.75 67.8 62.52 {NoBasePlate:1b,Rotation:[-90f,0f],Small:1b,Tags:["lobby_statue"],Marker:1b,Invulnerable:1b,ShowArms:1b,Pose:{Head:[0.0f,0.0f,0.0f],Body:[0.0f,0.0f,0.0f],RightArm:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f]},ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:6226433}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16553472}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16775239}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;643790533,-1896397495,-1697921292,1122999338],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWJiMzA5MzJlYmExNzk3ODZjYzNiZTc3YWZmMzQ4ZDJkNWRiMWM3Zjg3Y2U0ZjFjNGI0YTdkYWE3MzUxZGExNyJ9fX0="}]}}}}]}


##Description objectives
scoreboard objectives add item_id dummy

##lobby teams
team add teams_red
team add teams_blue
team add teams_yellow
team add teams_green
team add teams_cyan
team add teams_white
team add teams_gray
team add teams_orange
team add teams_pink
team add teams_purple

team modify teams_red color dark_red
team modify teams_blue color dark_blue
team modify teams_yellow color yellow
team modify teams_cyan color dark_aqua
team modify teams_white color white
team modify teams_gray color dark_gray
team modify teams_orange color gold
team modify teams_pink color light_purple
team modify teams_green color green
team modify teams_purple color dark_purple

##credits obj
scoreboard objectives add credits dummy

##CR Logo
kill @e[type=giant,tag=cr_logo]
summon minecraft:giant -102.0 78.00 1.66 {NoGravity:1b,NoAI:1b,HandItems:[{id:"minecraft:light_gray_stained_glass_pane",Count:1b,tag:{CustomModelData:2}}],Rotation:[95f],PersistenceRequired:1b,Tags:["cr_logo"],Invulnerable:1b}
effect give @e[type=giant,tag=cr_logo] invisibility 1000000 255 true


##Boost pad entities
kill @e[type=area_effect_cloud,tag=boost_pad]
summon area_effect_cloud 40 66 0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["boost_pad"]}
summon area_effect_cloud -48 66 0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["boost_pad"]}
summon area_effect_cloud -73 73 0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["boost_pad"]}
summon area_effect_cloud 0 83 -46 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["boost_pad"]}
summon area_effect_cloud 0 66 -25 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["boost_pad"]}

##Secret map
scoreboard players add $secret_map settings 0
scoreboard players add $random_map settings 0


team join teams_red Red:
team join teams_blue Blue:
team join teams_yellow Yellow:
team join teams_green Green:
team join teams_cyan Cyan:
team join teams_orange Orange:
team join teams_pink Pink:
team join teams_purple Purple:
team join teams_white White:
team join teams_gray Gray:

##death animations
scoreboard objectives add death_animation dummy

##Death pos objectives
scoreboard objectives add death_pos_0 dummy
scoreboard objectives add death_pos_1 dummy
scoreboard objectives add death_pos_2 dummy

##Completionist setup
function completionist:setup

team add spectator
team modify spectator color white
team modify spectator prefix [{"text":"[","color":"gray","bold":true},{"text":"Spectator","color":"white","bold":false},{"text":"] ","color":"gray","bold":true}]


##Tutorial
scoreboard objectives add tutorial dummy

#61a1a0


summon area_effect_cloud 4.5 87.5 -70 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["reset_die"],CustomNameVisible:1b,CustomName:'[{"text":"Every fighter has two weapons; a","color":"#78f4f3"}]'}
summon area_effect_cloud 4.5 87.25 -70 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["reset_die"],CustomNameVisible:1b,CustomName:'[{"text":"combo weapon and a knockback weapon.","color":"#00bbb9"}]'}
summon area_effect_cloud 4.5 87.0 -70 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["reset_die"],CustomNameVisible:1b,CustomName:'[{"text":"Hitting an opponent with your","color":"#78f4f3"}]'}
summon area_effect_cloud 4.5 86.75 -70 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["reset_die"],CustomNameVisible:1b,CustomName:'[{"text":"combo weapon will raise the","color":"#00bbb9"}]'}
summon area_effect_cloud 4.5 86.5 -70 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["reset_die"],CustomNameVisible:1b,CustomName:'[{"text":"knockback on your knockback weapon.","color":"#78f4f3"}]'}
summon area_effect_cloud 4.5 86.25 -70 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["reset_die"],CustomNameVisible:1b,CustomName:'[{"text":"After hitting someone with your","color":"#00bbb9"}]'}
summon area_effect_cloud 4.5 86.0 -70 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["reset_die"],CustomNameVisible:1b,CustomName:'[{"text":"knockback weapon, it will","color":"#78f4f3"}]'}
summon area_effect_cloud 4.5 85.75 -70 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["reset_die"],CustomNameVisible:1b,CustomName:'[{"text":"reset back to the base knockback.","color":"#00bbb9"}]'}
summon area_effect_cloud 4.5 85.5 -70 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["reset_die"],CustomNameVisible:1b,CustomName:'[{"text":"You can see your current","color":"#78f4f3"}]'}
summon area_effect_cloud 4.5 85.25 -70 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["reset_die"],CustomNameVisible:1b,CustomName:'[{"text":"knockback on the action bar.","color":"#00bbb9"}]'}

summon area_effect_cloud 4.5 87.5 -65 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["reset_die"],CustomNameVisible:1b,CustomName:'[{"text":"You have extra jumps that are","color":"#78f4f3"}]'}
summon area_effect_cloud 4.5 87.25 -65 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["reset_die"],CustomNameVisible:1b,CustomName:'[{"text":"activated by sneaking. The","color":"#00bbb9"}]'}
summon area_effect_cloud 4.5 87.0 -65 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["reset_die"],CustomNameVisible:1b,CustomName:'[{"text":"feather in your hotbar will","color":"#78f4f3"}]'}
summon area_effect_cloud 4.5 86.75 -65 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["reset_die"],CustomNameVisible:1b,CustomName:'[{"text":"indicate how many extra jumps","color":"#00bbb9"}]'}
summon area_effect_cloud 4.5 86.5 -65 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["reset_die"],CustomNameVisible:1b,CustomName:'[{"text":"you have left. They reset when","color":"#78f4f3"}]'}
summon area_effect_cloud 4.5 86.25 -65 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["reset_die"],CustomNameVisible:1b,CustomName:'[{"text":"you touch the ground.","color":"#00bbb9"}]'}
summon area_effect_cloud 4.5 86.0 -65 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["reset_die"],CustomNameVisible:1b,CustomName:'[{"text":"When hit, your damage ","color":"#78f4f3"}]'}
summon area_effect_cloud 4.5 85.75 -65 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["reset_die"],CustomNameVisible:1b,CustomName:'[{"text":"percentage goes up. As your percentage","color":"#00bbb9"}]'}
summon area_effect_cloud 4.5 85.5 -65 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["reset_die"],CustomNameVisible:1b,CustomName:'[{"text":"goes above 50 percent, your air","color":"#78f4f3"}]'}
summon area_effect_cloud 4.5 85.25 -65 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["reset_die"],CustomNameVisible:1b,CustomName:'[{"text":"jumps will become shorter.","color":"#00bbb9"}]'}
summon area_effect_cloud 4.5 85.0 -65 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["reset_die"],CustomNameVisible:1b,CustomName:'[{"text":" You can see your current damage","color":"#78f4f3"}]'}
summon area_effect_cloud 4.5 84.75 -65 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["reset_die"],CustomNameVisible:1b,CustomName:'[{"text":"percent on the action bar.","color":"#00bbb9"}]'}

summon area_effect_cloud 4.5 87.5 -60 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["reset_die"],CustomNameVisible:1b,CustomName:'[{"text":"All fighters have two abilities;","color":"#78f4f3"}]'}
summon area_effect_cloud 4.5 87.25 -60 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["reset_die"],CustomNameVisible:1b,CustomName:'[{"text":"the ground ability and the air ability.","color":"#00bbb9"}]'}
summon area_effect_cloud 4.5 87.0 -60 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["reset_die"],CustomNameVisible:1b,CustomName:'[{"text":"They are activated depending on","color":"#78f4f3"}]'}
summon area_effect_cloud 4.5 86.75 -60 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["reset_die"],CustomNameVisible:1b,CustomName:'[{"text":"whether you are on the ground","color":"#00bbb9"}]'}
summon area_effect_cloud 4.5 86.5 -60 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["reset_die"],CustomNameVisible:1b,CustomName:'[{"text":"or in the air, respectively.","color":"#78f4f3"}]'}
summon area_effect_cloud 4.5 86.25 -60 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["reset_die"],CustomNameVisible:1b,CustomName:'[{"text":"You can activate an ability","color":"#00bbb9"}]'}
summon area_effect_cloud 4.5 86.0 -60 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["reset_die"],CustomNameVisible:1b,CustomName:'[{"text":"by dropping or offhanding","color":"#78f4f3"}]'}
summon area_effect_cloud 4.5 85.75 -60 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["reset_die"],CustomNameVisible:1b,CustomName:'[{"text":"your weapons. You can see your","color":"#00bbb9"}]'}
summon area_effect_cloud 4.5 85.5 -60 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["reset_die"],CustomNameVisible:1b,CustomName:'[{"text":"ability cooldowns on the action bar.","color":"#78f4f3"}]'}
summon area_effect_cloud 4.5 85.25 -60 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["reset_die"],CustomNameVisible:1b,CustomName:'[{"text":"On the bridge, you can read about","color":"#00bbb9"}]'}
summon area_effect_cloud 4.5 85.0 -60 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["reset_die"],CustomNameVisible:1b,CustomName:'[{"text":"specific fighter\'s abilities.","color":"#78f4f3"}]'}

summon area_effect_cloud 4.5 86.5 -55 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["reset_die"],CustomNameVisible:1b,CustomName:'[{"text":"Following up on your hits after","color":"#78f4f3"}]'}
summon area_effect_cloud 4.5 86.25 -55 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["reset_die"],CustomNameVisible:1b,CustomName:'[{"text":"you\'ve knocked someone off is the best","color":"#00bbb9"}]'}
summon area_effect_cloud 4.5 86.0 -55 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["reset_die"],CustomNameVisible:1b,CustomName:'[{"text":"way to stop their recovery","color":"#78f4f3"}]'}
summon area_effect_cloud 4.5 85.75 -55 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["reset_die"],CustomNameVisible:1b,CustomName:'[{"text":"attempt and get a kill.","color":"#00bbb9"}]'}

summon area_effect_cloud 4.5 86.5 -50 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["reset_die"],CustomNameVisible:1b,CustomName:'[{"text":"The default fighter is Theo,","color":"#78f4f3"}]'}
summon area_effect_cloud 4.5 86.25 -50 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["reset_die"],CustomNameVisible:1b,CustomName:'[{"text":"but there are many more to choose","color":"#00bbb9"}]'}
summon area_effect_cloud 4.5 86.0 -50 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["reset_die"],CustomNameVisible:1b,CustomName:'[{"text":"from in the Fighter Selection chest.","color":"#78f4f3"}]'}
summon area_effect_cloud 4.5 85.75 -50 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["reset_die"],CustomNameVisible:1b,CustomName:'[{"text":"We also recommend messing","color":"#00bbb9"}]'}
summon area_effect_cloud 4.5 85.5 -50 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["reset_die"],CustomNameVisible:1b,CustomName:'[{"text":"around with the game settings,","color":"#78f4f3"}]'}
summon area_effect_cloud 4.5 85.25 -50 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["reset_die"],CustomNameVisible:1b,CustomName:'[{"text":"such as enabling items or","color":"#00bbb9"}]'}
summon area_effect_cloud 4.5 85.0 -50 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["reset_die"],CustomNameVisible:1b,CustomName:'[{"text":"changing the mode.","color":"#78f4f3"}]'}

summon area_effect_cloud 0 87 -48 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["reset_die","boost_pad_name_text"],CustomNameVisible:1b,CustomName:'[{"text":"☀ ","color":"aqua","bold":false},{"text":"- ","color":"gray","bold":true},{"text":"Boost Pad","color":"white","italic":false,"underlined": true},{"text":" -","color":"gray","bold":true},{"text":" ☀","color":"aqua","bold":false}]'}

## Tutorial teleporter

scoreboard objectives add particle_pos dummy

summon area_effect_cloud -5 66 7 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["tutorial_teleporter","reset_die"]}
scoreboard players set @e[type=area_effect_cloud,tag=tutorial_teleporter] particle_pos 0


##tutorial nameplate
summon area_effect_cloud -5 67 7 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["reset_die"],CustomNameVisible:1b,CustomName:'[{"text":"☀ ","color":"aqua","bold":false},{"text":"- ","color":"gray","bold":true},{"text":"Tutorial","color":"gold","italic":false,"underlined": true},{"text":" -","color":"gray","bold":true},{"text":" ☀","color":"aqua","bold":false}]'}



##spin aec

summon area_effect_cloud 0 0 0 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["spin","reset_die"]}

##objective for showing tutorial particle
scoreboard objectives add tutorial_pointer dummy

##objective for dropping book
scoreboard objectives add drop_ready_book minecraft.dropped:minecraft.knowledge_book

scoreboard objectives add prefix dummy


##Start button text
summon area_effect_cloud 0 68.5 27 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["reset_die","start_button_text"],CustomNameVisible:1b,CustomName:'[{"text":"- ","color":"gray"},{"text":"☀ ","color":"aqua"},{"text":"Start","color":"gold","bold":true},{"text":" ☀","color":"aqua"},{"text":" -","color":"gray"}]'}

scoreboard objectives add boost_pad_delay dummy

scoreboard objectives add drop_red_dye minecraft.dropped:minecraft.red_dye