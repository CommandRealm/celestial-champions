##Called when the boost pad to the left is activated

##If we're a random fighter, randomize our fighter
execute if entity @s[tag=random_fighter] run function fighter:randomize_fighter

##Tag
tag @s add temporary_tag

##Summon armor stand
summon minecraft:armor_stand ~ ~ ~ {Tags:["boost_pad_force_spectate","needs_adjustments"],Rotation:[-270f,-10f],Invulnerable:1b,DisabledSlots:2039583,Invisible:0b,NoBasePlate:1b,OnGround:0b,ShowArms:1b,CustomNameVisible:1b}

##Giving armor stand our id
scoreboard players operation @e[type=armor_stand,tag=needs_adjustments,sort=nearest,limit=1] lobby_id = @s lobby_id

##Applying random pose
execute as @e[type=armor_stand,tag=needs_adjustments] at @s run function lobby:boost_pad/random_pose

##Giving ourselves a costume to be copied
tag @s add needs_costume
function fighter:costume/update_costume

##Copying armor
data modify entity @e[type=armor_stand,tag=needs_adjustments,sort=nearest,limit=1] ArmorItems[0] set from entity @s Inventory[{Slot:100b}]
data modify entity @e[type=armor_stand,tag=needs_adjustments,sort=nearest,limit=1] ArmorItems[1] set from entity @s Inventory[{Slot:101b}]
data modify entity @e[type=armor_stand,tag=needs_adjustments,sort=nearest,limit=1] ArmorItems[2] set from entity @s Inventory[{Slot:102b}]
data modify entity @e[type=armor_stand,tag=needs_adjustments,sort=nearest,limit=1] ArmorItems[3] set from entity @s Inventory[{Slot:103b}]

##Setting name
#Sign
setblock 0 55 0 air
setblock 0 55 0 oak_sign
data modify block 0 55 0 Text1 set value '[{"selector":"@p[tag=temporary_tag]"}]'

##Applying name to entity
data modify entity @e[type=armor_stand,tag=needs_adjustments,sort=nearest,limit=1] CustomName set from block 0 55 0 Text1

##Removing our costume
tag @s remove needs_costume
clear @s

##Particles
particle cloud ~-1.5 ~1 ~ 0.5 2 0.5 0.0 100

##Copying rotation
data modify entity @e[type=armor_stand,tag=needs_adjustments,sort=nearest,limit=1] Rotation[0] set from entity @s Rotation[0]

tp @s @e[type=armor_stand,tag=needs_adjustments,sort=nearest,limit=1]

##Disabled because it wasn't working:
##data modify entity @e[type=armor_stand,tag=needs_adjustments,sort=nearest,limit=1] Rotation[1] set from entity @s Rotation[1]


##Applying Motion (it's added after the tp because the tp cancels motion)
execute as @e[type=armor_stand,tag=needs_adjustments,sort=nearest,limit=1] at @s run data merge entity @s {Motion:[-3.0d,1.8d,0.0d],OnGround:0b}

##Tag removal
tag @e[type=armor_stand,tag=needs_adjustments,sort=nearest,limit=1] remove needs_adjustments


##Gamemode swap
gamemode spectator @s

##Tag removal
tag @s remove temporary_tag