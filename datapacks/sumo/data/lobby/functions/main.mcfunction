##Runs whenever someone is in the lobby

##Run pregame function when appropriate
execute if score $game state matches 0 run function lobby:pregame/main

##Run during-game function when appropriate
execute if score $game state matches 1 run function lobby:midgame/main


##Falling off system
execute as @a[x=40,y=66,z=0,distance=..500.0,gamemode=adventure] at @s run particle minecraft:end_rod ~ 40 ~ 5 0 5 0 20 force @s
execute as @a[x=40,y=66,z=0,distance=..500.0,gamemode=adventure] at @s if entity @s[y=30,distance=..10] run function lobby:fall_off

##Ender chest menus
execute as @a[gamemode=adventure,x=0,y=66,z=0,distance=..500,scores={open_echest=1..}] at @s run function lobby:chest_menu/open_chest

##Detecting clicks
execute as @a[gamemode=adventure,x=0,y=66,z=0,distance=..500] store result score @s chest_clear run clear @s #minecraft:chest_menu{clickable:1} 0
execute as @a[gamemode=adventure,x=0,y=66,z=0,distance=..500,scores={chest_clear=1..}] at @s run function lobby:chest_menu/check_click

##Detecting dropping items and putting in incorrect items (to the ender chest)
execute as @e[type=item,nbt={Item:{tag:{clickable:1}}}] at @s run function lobby:chest_menu/dropped_item

execute as @a[nbt={EnderItems:[{tag:{not_clickable:1}}]}] at @s run function lobby:chest_menu/reset_screen

execute as @a[nbt={Inventory:[{tag:{invalid_inventory_item:1}}]}] at @s run function lobby:chest_menu/invalid_inventory_item

execute as @e[type=item,nbt={Item:{tag:{invalid_inventory_item:1}}}] at @s run function lobby:chest_menu/dropped_item


##Socials
execute if block 5 65 8 minecraft:stone_button[powered=false] run schedule function lobby:socials/discord 2t
execute if block 5 65 9 minecraft:stone_button[powered=false] run schedule function lobby:socials/youtube 2t
execute if block 5 65 10 minecraft:stone_button[powered=false] run schedule function lobby:socials/pmc 2t
execute if block 5 65 11 minecraft:stone_button[powered=false] run schedule function lobby:socials/twitter 2t


##Boost pads
execute as @a[gamemode=adventure] at @s if entity @e[type=area_effect_cloud,distance=..2,tag=boost_pad] run function lobby:boost_pad/start_launch

##Calling main boost function
execute if entity @a[x=0,y=66,z=0,distance=..500,gamemode=spectator,tag=!playing] run function lobby:boost_pad/main
##Ending the boost pad
kill @e[type=armor_stand,tag=boost_pad_force_spectate,nbt={OnGround:1b}]

execute unless entity @a[x=0,y=66,z=0,distance=..500,gamemode=spectator,tag=!playing] if entity @e[type=armor_stand,tag=boost_pad_force_spectate] run function lobby:boost_pad/main




##Fighting area call
execute if entity @a[tag=is_fighter,tag=!playing] run function lobby:training_area/main

##Effect
effect give @a[tag=!playing,tag=!needs_costume,tag=!is_fighter,gamemode=adventure,predicate=minecraft:sprinting] speed 1 1 true
effect clear @a[tag=!playing,tag=!needs_costume,tag=!is_fighter,gamemode=adventure,predicate=!minecraft:sprinting] speed


###Fighter nameplate
scoreboard players remove $fighter_nameplate_time lobby 1
execute if score $fighter_nameplate_time lobby matches ..0 run function lobby:update_fighter_nameplate


##Particles

execute as @a[tag=!playing,x=0,y=66,z=0,distance=..500,gamemode=adventure] at @s run particle minecraft:firework ~ ~1 ~ 10 10 10 0.25 1 normal @s
execute as @a[tag=!playing,x=0,y=66,z=0,distance=..500,gamemode=adventure] at @s run particle minecraft:glow ~ ~1 ~ 12.5 12.5 12.5 0.25 3 normal @s

##Kill arrows near lobby
kill @e[type=arrow,x=0,y=66,z=0,distance=..500,nbt={inGround:1b}]


execute if entity @a[tag=intro_text_call] unless score $countdown pregame matches 0.. run function lobby:intro/main

##Kill things on death timer in lobby if there is no one who has the is_fighter tag
execute unless entity @a[tag=is_fighter,x=0,y=66,z=0,distance=..500] as @e[tag=on_death_timer,x=0,y=66,z=0,distance=..500,tag=!wand_item] at @s run function fighter:entity_death_timer_over


##Called to rotate the models
execute as @e[type=armor_stand,tag=model] at @s run tp @s ~ ~ ~ ~5 ~

##If we need the teams book
execute if score $teams settings matches 2.. run function lobby:teams/check_team_needs

##Credits function
execute if entity @a[x=-85,y=75,z=0,distance=..30] run function credits:main

##Tutorial function
execute if entity @a[x=0,y=82,z=-62,distance=..30] run function lobby:tutorial/main

##Weakness
effect give @a[tag=!is_fighter,gamemode=adventure,tag=!playing] weakness 1 255 true


##Advancements
advancement grant @a[x=-16,y=54,z=66,dx=30,dz=50,dy=25,advancements={advancements:custom/bridge=false},gamemode=adventure] only advancements:custom/bridge
advancement grant @a[x=-5,y=69,z=86,dz=5,dy=10,dx=10,tag=!playing,gamemode=adventure] only advancements:custom/cr
advancement grant @a[x=3,y=53,z=25,distance=..1,tag=!playing,nbt={OnGround:1b}] only advancements:custom/parkour
advancement grant @a[x=-11,y=66,z=107,dx=0,tag=!playing] only advancements:custom/secret

advancement grant @a[advancements={advancements:custom/all_lobby=false,advancements:custom/tutorial=true,advancements:custom/bridge=true,advancements:custom/cosmetics=true,advancements:custom/dummy=true,advancements:custom/cr=true,advancements:custom/socials=true,advancements:custom/parkour=true,advancements:custom/secret=true}] only advancements:custom/all_lobby
##

advancement grant @a[advancements={advancements:completionist/completionist=false,advancements:custom/all_games=true,advancements:custom/all_lobby=true,advancements:custom/all_kills=true,advancements:custom/all_characters=true}] only advancements:completionist/completionist


execute if entity @a[advancements={advancements:completionist/completionist=true},tag=!playing,tag=!is_fighter] run function completionist:completionist_helix


##If a player goes too far away from the lobby.
execute as @a[tag=!playing,tag=is_fighter,x=0,y=66,z=0,distance=200..] at @s run function lobby:fall_off



##Tutorial teleporter

particle falling_water -5 65 7 0.25 1 0.25 0.00 10


execute as @e[type=area_effect_cloud,tag=spin,limit=1] at @s positioned as @e[type=area_effect_cloud,tag=tutorial_teleporter] run particle soul_fire_flame ^ ^ ^-1 0 0 0 0.0 1

execute as @e[type=area_effect_cloud,tag=tutorial_teleporter,scores={particle_pos=0}] at @s at @s[y=64.5,distance=..1] run scoreboard players set @s particle_pos 1
execute as @e[type=area_effect_cloud,tag=tutorial_teleporter,scores={particle_pos=1}] at @s at @s[y=68.5,distance=..1] run scoreboard players set @s particle_pos 0
execute as @e[type=area_effect_cloud,tag=tutorial_teleporter,scores={particle_pos=0}] at @s run tp @s ~ ~-0.05 ~
execute as @e[type=area_effect_cloud,tag=tutorial_teleporter,scores={particle_pos=1}] at @s run tp @s ~ ~0.025 ~

##Turning spin
execute as @e[type=area_effect_cloud,tag=spin] at @s run tp @s ~ ~ ~ ~15 ~

##if someone has a tutorial pointer score
execute if entity @a[scores={tutorial_pointer=1..}] run function lobby:tutorial_pointer/main

##Teleport for tutorial
execute as @a[tag=!is_fighter,gamemode=adventure,tag=!playing,x=-5,y=65,z=7,distance=..1] at @s run function lobby:chest_menu/tutorial

##Dropping ready book.
execute as @a[x=0,y=66,z=0,distance=..500,scores={drop_ready_book=1..}] at @s run function lobby:drop_ready_book