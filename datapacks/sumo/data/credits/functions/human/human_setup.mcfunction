kill @e[type=armor_stand,tag=human]
summon armor_stand -92 75.25 -5 {Silent:1b,NoGravity:1b,ShowArms:1b,Invulnerable:1b,NoBasePlate:1b,Pose:{Body:[70f,0f,0f],Head:[62f,0f,120f],LeftArm:[270f,336f,0f],RightArm:[270f,25f,0f]},ArmorItems:[{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16777215}}},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1207597845,-1189524758,-2107647746,1646295333],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWQyZTY2NzljMTVhMTUxMDQ1ZjY1ZDY0MzE4MGE4OTdiNmY1MjFiNTJlMjE2MzA0YTgxYjMxNWM3NWEzYWFiYiJ9fX0="}]}}}}],DisabledSlots:4144959,Rotation:[-45f,0f],Tags:["human","show_details"],Marker:1}
summon armor_stand -91.95 75.8 -4.95 {Invisible:1b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:2763306}}},{id:"minecraft:leather_leggings",Count:1b},{},{}],Silent:1b,NoGravity:1b,Invulnerable:1b,NoBasePlate:1b,Pose:{Body:[200f,0f,180f],LeftLeg:[145f,0f,0f],RightLeg:[152f,0f,0f]},DisabledSlots:4144959,Rotation:[-45f,0f],Tags:["human"]}

##moving towards center
execute as @e[type=armor_stand,tag=human] at @s rotated -50 ~ run tp @s ^ ^ ^0.333333