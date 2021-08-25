##called when we're supposed to summon a death animation armor stand

##Summons
execute if score @s death_animation matches 0 at @e[type=area_effect_cloud,tag=mark_death_position,sort=nearest,limit=1] run summon armor_stand ~ ~ ~ {Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Pose:{LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},Marker:1b,Tags:["death_animation","on_death_timer","needs_death_timer"]}
execute if score @s death_animation matches 1 at @e[type=area_effect_cloud,tag=mark_death_position,sort=nearest,limit=1] run summon armor_stand ~ ~ ~ {Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Marker:1b,Tags:["death_animation","on_death_timer","needs_death_timer"],Pose:{LeftLeg:[271f,0f,0f],RightLeg:[271f,0f,0f],LeftArm:[327f,17f,0f],RightArm:[327f,343f,0f]}}
execute if score @s death_animation matches 2 at @e[type=area_effect_cloud,tag=mark_death_position,sort=nearest,limit=1] run summon armor_stand ~ ~ ~ {Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Marker:1b,Tags:["death_animation","on_death_timer","needs_death_timer"],Pose:{LeftLeg:[0f,0f,320f],RightLeg:[0f,0f,40f],LeftArm:[180f,0f,40f],RightArm:[180f,0f,320f]}}
execute if score @s death_animation matches 3 at @e[type=area_effect_cloud,tag=mark_death_position,sort=nearest,limit=1] run summon armor_stand ~ ~ ~ {Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Marker:1b,Tags:["death_animation","on_death_timer","needs_death_timer"],Pose:{LeftLeg:[20f,0f,0f],RightLeg:[335f,0f,0f],LeftArm:[320f,0f,0f],RightArm:[32f,0f,0f]}}
execute if score @s death_animation matches 4 at @e[type=area_effect_cloud,tag=mark_death_position,sort=nearest,limit=1] run summon armor_stand ~ ~ ~ {Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Marker:1b,Tags:["death_animation","on_death_timer","needs_death_timer"],Pose:{LeftLeg:[0f,0f,354f],RightLeg:[0f,0f,5f],LeftArm:[0f,0f,13f],RightArm:[180f,0f,0f]}}
execute if score @s death_animation matches 5 at @e[type=area_effect_cloud,tag=mark_death_position,sort=nearest,limit=1] run summon armor_stand ~ ~ ~ {Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Marker:1b,Tags:["death_animation","on_death_timer","needs_death_timer"],Pose:{LeftLeg:[0f,0f,279f],RightLeg:[0f,0f,84f],LeftArm:[0f,0f,320f],RightArm:[0f,0f,43f]}}
execute if score @s death_animation matches 6 at @e[type=area_effect_cloud,tag=mark_death_position,sort=nearest,limit=1] run summon armor_stand ~ ~ ~ {Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Marker:1b,Tags:["death_animation","on_death_timer","needs_death_timer"],Pose:{Head:[11f,18f,11f],LeftArm:[271f,0f,0f],RightArm:[271f,0f,0f]}}
execute if score @s death_animation matches 7 at @e[type=area_effect_cloud,tag=mark_death_position,sort=nearest,limit=1] run summon armor_stand ~ ~ ~ {Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Marker:1b,Tags:["death_animation","on_death_timer","needs_death_timer"],Pose:{LeftArm:[0f,0f,270f],RightArm:[0f,0f,90f]}}
execute if score @s death_animation matches 8 at @e[type=area_effect_cloud,tag=mark_death_position,sort=nearest,limit=1] run summon armor_stand ~ ~ ~ {Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Marker:1b,Tags:["death_animation","on_death_timer","needs_death_timer"],Pose:{Body:[4f,0f,0f],Head:[39f,0f,0f],LeftLeg:[29f,0f,0f],RightLeg:[53f,0f,0f],LeftArm:[93f,321f,268f],RightArm:[93f,50f,88f]}}

execute if score @s death_animation matches 9 at @e[type=area_effect_cloud,tag=mark_death_position,sort=nearest,limit=1] run summon armor_stand ~ ~ ~ {Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Marker:1b,Tags:["death_animation","on_death_timer","needs_death_timer"],Pose:{Head:[43f,0f,0f],LeftArm:[296f,0f,25f],RightArm:[267f,353f,28f]}}
execute if score @s death_animation matches 10 at @e[type=area_effect_cloud,tag=mark_death_position,sort=nearest,limit=1] run summon armor_stand ~ ~ ~ {Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Marker:1b,Tags:["death_animation","on_death_timer","needs_death_timer"],Pose:{Head:[29f,0f,0f],LeftArm:[246f,324f,42f],RightArm:[292f,331f,314f]}}
execute if score @s death_animation matches 11 at @e[type=area_effect_cloud,tag=mark_death_position,sort=nearest,limit=1] run summon armor_stand ~ ~ ~ {Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Marker:1b,Tags:["death_animation","on_death_timer","needs_death_timer"],Pose:{LeftArm:[180f,0f,20f],RightArm:[180f,0f,340f]},Small:1b}
execute if score @s death_animation matches 12 at @e[type=area_effect_cloud,tag=mark_death_position,sort=nearest,limit=1] run summon armor_stand ~ ~ ~ {Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Marker:1b,Tags:["death_animation","on_death_timer","needs_death_timer","beacon_death_animation_marker"],Pose:{LeftArm:[180f,0f,20f],RightArm:[180f,0f,340f]}}
execute if score @s death_animation matches 12 at @e[type=area_effect_cloud,tag=mark_death_position,sort=nearest,limit=1] run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["on_death_timer","needs_death_timer","beacon_death_animation"],Invulnerable:1b,Passengers:[{id:"minecraft:falling_block",Time:1,NoGravity:1b,Tags:["on_death_timer","needs_death_timer"],BlockState:{Name:"minecraft:beacon"}}]}



##Copying armor
function fighter:costume/update_costume
data modify entity @e[type=armor_stand,tag=needs_death_timer,sort=nearest,limit=1] ArmorItems[0] set from entity @s Inventory[{Slot:100b}]
data modify entity @e[type=armor_stand,tag=needs_death_timer,sort=nearest,limit=1] ArmorItems[1] set from entity @s Inventory[{Slot:101b}]
data modify entity @e[type=armor_stand,tag=needs_death_timer,sort=nearest,limit=1] ArmorItems[2] set from entity @s Inventory[{Slot:102b}]
data modify entity @e[type=armor_stand,tag=needs_death_timer,sort=nearest,limit=1] ArmorItems[3] set from entity @s Inventory[{Slot:103b}]
clear @s

##Death timer
scoreboard players set @e[type=armor_stand,tag=needs_death_timer] death_timer 50
tag @e[type=armor_stand,tag=needs_death_timer] remove needs_death_timer

##falling block death timer
scoreboard players set @e[type=falling_block,tag=needs_death_timer] death_timer 49
tag @e[type=falling_block,tag=needs_death_timer] remove needs_death_timer

##sound
playsound minecraft:entity.item.pickup master @a ~ ~ ~ 1 0