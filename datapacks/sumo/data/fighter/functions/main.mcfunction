##This function will call any abilities and character functions


##Will call the call_abilities function if necessary.
execute if entity @a[tag=is_fighter,gamemode=adventure] run function fighter:call_abilities

##Extra jumps
execute as @a[tag=is_fighter,nbt={OnGround:1b},gamemode=adventure] at @s unless entity @s[scores={extra_jump_time=1..}] unless score @s extra_jumps = @s set_extra_jumps run function fighter:extra_jump/touch_ground


##Will activate double jump if they have one to use, are sneaking, and haven't used one recently.
execute as @a[tag=is_fighter,scores={extra_jumps=1..,extra_jump_sneak=1..,extra_jump_cool=0},gamemode=adventure] at @s run function fighter:extra_jump/jump

##Resetting the sneak objective
scoreboard players reset @a[tag=is_fighter,scores={extra_jump_sneak=1..},gamemode=adventure] extra_jump_sneak

##Detecting if an extra jump is in progress
execute if entity @a[tag=is_fighter,scores={extra_jump_time=1..},gamemode=adventure] run function fighter:extra_jump/jump_in_progress

##Removing jump cooldown score
scoreboard players remove @a[scores={extra_jump_cool=1..},tag=is_fighter,gamemode=adventure] extra_jump_cool 1

##Combo meter:

execute as @a[tag=is_fighter,advancements={advancements:damage/damage_dealt=true},gamemode=adventure] at @s run function fighter:damage/damage_dealt

##Damage percentage

execute as @a[tag=is_fighter,scores={damage_taken=1..},gamemode=adventure] at @s run function fighter:damage/damage_taken

##Determining whether an ability when used will be air or ground
##Setting base values (use ability type 0 is ground, 1 is air)
execute as @a[tag=is_fighter,gamemode=adventure,nbt={OnGround:1b}] at @s run scoreboard players set @s use_ability_type 0
execute as @a[tag=is_fighter,gamemode=adventure,nbt={OnGround:1b}] at @s run scoreboard players set @s ability_type_d 0


##Setting delay score if player isn't on ground
scoreboard players set @a[tag=is_fighter,nbt={OnGround:0b},gamemode=adventure,scores={ability_type_d=0,use_ability_type=0}] ability_type_d 9
##Counting down ability type delay score
scoreboard players remove @a[scores={ability_type_d=1..}] ability_type_d 1
##Setting it to be an air ability if countdown hits 0
scoreboard players set @a[tag=is_fighter,nbt={OnGround:0b},gamemode=adventure,scores={use_ability_type=0,ability_type_d=0}] use_ability_type 1

##Abilities call:
execute as @a[tag=is_fighter,gamemode=adventure,scores={drop_ability=1..,ability_timer=1..}] at @s positioned ~ ~1 ~ if entity @e[type=item,distance=..5,nbt={Item:{tag:{Ability:1b}}}] positioned ~ ~-1 ~ run function fighter:ability/use_toggle
execute as @a[tag=is_fighter,gamemode=adventure,scores={drop_ability=1..,ability_timer=0}] at @s positioned ~ ~1 ~ if entity @e[type=item,distance=..5,nbt={Item:{tag:{Ability:1b}}}] positioned ~ ~-1 ~ run function fighter:ability/use_ability
scoreboard players reset @a[tag=is_fighter,scores={drop_ability=1..}] drop_ability
##Offhand ability detection
execute as @a[tag=is_fighter,gamemode=adventure,scores={ability_timer=1..},nbt={Inventory:[{Slot:-106b,tag:{Ability:1b}}]}] at @s run function fighter:ability/use_toggle
execute as @a[tag=is_fighter,gamemode=adventure,scores={ability_timer=0},nbt={Inventory:[{Slot:-106b,tag:{Ability:1b}}]}] at @s run function fighter:ability/use_ability

##Ability cooldowns
##Counting down how long the ability is active for
execute if entity @a[scores={ability_timer=1..},tag=is_fighter] run function fighter:ability/ability_cooldown

##Converting ability timers into seconds.
execute if entity @a[scores={ability_timer=1..},tag=is_fighter] run function fighter:ability/convert_timer_to_seconds


##When an inventory is changed
execute if entity @a[tag=is_fighter,advancements={fighter:inventory_changed=true}] run function fighter:check_inventory

##Gives players their weapons and an item that signifies their number of air jumps


##Items
execute if score $item_rate settings matches 1.. run function item:main



##Action bar titles

execute if entity @a[tag=is_fighter,tag=!slow_falling_until_landing,scores={damage_percent=..9},gamemode=adventure,tag=!action_bar_symbols] run function fighter:action_bar/0
execute if entity @a[tag=is_fighter,tag=!slow_falling_until_landing,scores={damage_percent=10..19},gamemode=adventure,tag=!action_bar_symbols] run function fighter:action_bar/1
execute if entity @a[tag=is_fighter,tag=!slow_falling_until_landing,scores={damage_percent=20..29},gamemode=adventure,tag=!action_bar_symbols] run function fighter:action_bar/2
execute if entity @a[tag=is_fighter,tag=!slow_falling_until_landing,scores={damage_percent=30..39},gamemode=adventure,tag=!action_bar_symbols] run function fighter:action_bar/3
execute if entity @a[tag=is_fighter,tag=!slow_falling_until_landing,scores={damage_percent=40..49},gamemode=adventure,tag=!action_bar_symbols] run function fighter:action_bar/4
execute if entity @a[tag=is_fighter,tag=!slow_falling_until_landing,scores={damage_percent=50..59},gamemode=adventure,tag=!action_bar_symbols] run function fighter:action_bar/5
execute if entity @a[tag=is_fighter,tag=!slow_falling_until_landing,scores={damage_percent=60..69},gamemode=adventure,tag=!action_bar_symbols] run function fighter:action_bar/6
execute if entity @a[tag=is_fighter,tag=!slow_falling_until_landing,scores={damage_percent=70..79},gamemode=adventure,tag=!action_bar_symbols] run function fighter:action_bar/7
execute if entity @a[tag=is_fighter,tag=!slow_falling_until_landing,scores={damage_percent=80..89},gamemode=adventure,tag=!action_bar_symbols] run function fighter:action_bar/8
execute if entity @a[tag=is_fighter,tag=!slow_falling_until_landing,scores={damage_percent=90..99},gamemode=adventure,tag=!action_bar_symbols] run function fighter:action_bar/9
execute if entity @a[tag=is_fighter,tag=!slow_falling_until_landing,scores={damage_percent=100..},gamemode=adventure,tag=!action_bar_symbols] run function fighter:action_bar/10

##Actionbar symbol call
execute if entity @a[tag=is_fighter,tag=action_bar_symbols] run function fighter:action_bar/symbols/main

##Running a function if someone has a damage timer
execute if entity @a[scores={damage_timer=1..},gamemode=adventure] run function fighter:damage/active_damage_timer

##Death timer
function fighter:death_timer

##Giving arrows

##Anyone with a set_arrow_timer score of more than 1 is a ranged class
execute if entity @a[tag=is_fighter,scores={set_arrow_timer=1..},gamemode=adventure] run function fighter:arrow/main

##If player is stunned
execute if entity @a[tag=is_fighter,gamemode=adventure,scores={stun=1..}] run function fighter:stun/main


##If player is fearful
execute if entity @a[tag=is_fighter,gamemode=adventure,scores={fear=1..}] run function fighter:fear/main




##Random cooldown objectives function call (The pause random cooldown tag is for things like drakier's elytra and the tag should be removed within the fighter's main functions.)
execute if entity @a[tag=is_fighter,gamemode=adventure,scores={random_cooldown=1..},tag=!pause_random_cooldown] run function fighter:random_cooldown/main

execute if entity @a[tag=is_fighter,gamemode=adventure,scores={random_cooldown2=1..},tag=!pause_random_cooldown2] run function fighter:random_cooldown2/main

execute if entity @a[tag=is_fighter,gamemode=adventure,scores={random_cooldown3=1..},tag=!pause_random_cooldown3] run function fighter:random_cooldown3/main

##Shoot bow function
execute as @a[scores={shoot_bow=1..},tag=is_fighter] at @s run function fighter:shoot_bow
execute as @a[scores={shoot_crossbow=1..},tag=is_fighter] at @s run function fighter:shoot_crossbow

##Fighter specific function calls

##Skeleton (Death timer is acting here as a delay, because in the first tick its summoned its technically on the ground)
execute if entity @a[tag=is_fighter,scores={fighter=2}] run function fighter:skeleton/main
##Creeper grenade
execute if entity @e[type=zombie,tag=creeper_grenade,scores={death_timer=..110}] run function fighter:creeper/active_grenade
##If player is zombie
execute if entity @a[tag=is_fighter,scores={fighter=1}] run function fighter:zombie/main
##If player is spider
execute if entity @a[tag=is_fighter,scores={fighter=4}] run function fighter:spider/main
##If player is chicken
execute if entity @a[tag=is_fighter,scores={fighter=5}] run function fighter:chicken/main
##If player is enderman
execute if entity @a[tag=is_fighter,scores={fighter=6}] run function fighter:enderman/main
##If player is incend
execute if entity @a[tag=is_fighter,scores={fighter=7}] run function fighter:incend/main
##If player is drakier
execute if entity @a[tag=is_fighter,scores={fighter=8}] run function fighter:drakier/main
##If player is callidus
execute if entity @a[tag=is_fighter,scores={fighter=10}] run function fighter:callidus/main
##If player is Gene
execute if entity @a[tag=is_fighter,scores={fighter=11}] run function fighter:gene/main
##If player is melon man
execute if entity @a[tag=is_fighter,scores={fighter=12}] run function fighter:melon_man/main
##If player is blaze
execute if entity @a[tag=is_fighter,scores={fighter=13}] run function fighter:blaze/main

##If player is slime
execute if entity @a[tag=is_fighter,scores={fighter=14}] run function fighter:slime/main

##If player is malice
execute if entity @a[tag=is_fighter,scores={fighter=15}] run function fighter:malice/main

##If player is arthor
execute if entity @a[tag=is_fighter,scores={fighter=16}] run function fighter:arthor/main

##If player is guardian
execute if entity @a[tag=is_fighter,scores={fighter=17}] run function fighter:guardian/main

##Entity kills
##Killing arrows
kill @e[type=arrow,nbt={inGround:1b}]

##Killing tridents
kill @e[type=trident,nbt={inGround:1b}]


##If a player has max combo, display particle
execute as @a[tag=is_fighter] at @s if score @s knockback = @s max_knockback run particle angry_villager ~ ~1.5 ~ 0.25 0.15 0.25 0.15 1 force @a[distance=0.001..]

##Resetting is_flying objectives
scoreboard players set @a[scores={is_flying=1..}] is_flying 0


##If there is a fishing bobber.
execute as @e[type=fishing_bobber,tag=!on_death_timer] at @s run function fighter:set_fishing_bobber_death_timer

##If there is an active death animation
execute if entity @e[type=armor_stand,tag=death_animation] run function cosmetic:death_animation/main


##Keeping track of death position.
execute as @a[tag=is_fighter,gamemode=adventure] at @s store result score @s death_pos_0 run data get entity @s Pos[0] 100
execute as @a[tag=is_fighter,gamemode=adventure] at @s store result score @s death_pos_1 run data get entity @s Pos[1] 100
execute as @a[tag=is_fighter,gamemode=adventure] at @s store result score @s death_pos_2 run data get entity @s Pos[2] 100