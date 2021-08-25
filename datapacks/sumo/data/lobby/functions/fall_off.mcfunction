##Called when a player falls off

##death animation
execute if entity @s[tag=is_fighter] run function cosmetic:death_animation/die

##specific fighter functions
execute if entity @s[scores={fighter=15}] run function fighter:malice/die

##Death msg for if we were a fighter
function lobby:training_area/death_message

##Kill nearby spider shulker boxes
kill @e[tag=spider_platform,distance=..2]

##Tag
tag @s[tag=!no_redistribute] add temporary_tag

##This will put the player near where they fell off
execute positioned 0 66 0 facing entity @s eyes positioned ^ ^ ^35 run spreadplayers ~ ~ 0 15 false @r[tag=temporary_tag]

##Tps for if player is too close to the boost pad
execute at @s if entity @s[x=40,y=66,z=0,distance=..2.0] facing 0 70 0 anchored eyes run tp @s ^ ^ ^5
execute at @s if entity @s[x=-48,y=66,z=0,distance=..2.0] facing 0 70 0 anchored eyes run tp @s ^ ^ ^5

##Specific tp if we're a fighter
tp @s[tag=is_fighter,tag=!no_redistribute] 32 66 0 -90 0

##Remove tags
tag @s remove temporary_tag
tag @s remove needs_costume
tag @s remove is_fighter
tag @s remove no_redistribute

##(no_redistribute tag is to negate it if players are standing on the platform after being a fighter. Which is called by the check_fighter_position function)

##Clears
clear @s
effect clear @s

##Reset xp level
xp set @s 0 levels

