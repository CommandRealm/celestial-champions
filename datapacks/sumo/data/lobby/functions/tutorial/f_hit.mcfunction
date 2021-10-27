
##sound and particles
execute at @e[type=armor_stand,tag=tutorial_follow_up_zombie] run playsound minecraft:entity.player.attack.knockback master @a ~ ~ ~
execute at @e[type=armor_stand,tag=tutorial_follow_up_zombie] run playsound minecraft:item.shield.block master @a ~ ~ ~ 0.667 1.25
execute at @e[type=armor_stand,tag=tutorial_follow_up_zombie] run particle crit ~ ~1 ~ 0.15 1 0.15 0.05 5

##applying motion
data modify entity @e[type=armor_stand,limit=1,tag=tutorial_follow_up_zombie] Motion[0] set value 0.75d
data modify entity @e[type=armor_stand,limit=1,tag=tutorial_follow_up_zombie] Motion[1] set value 0.4d
data modify entity @e[type=armor_stand,limit=1,tag=tutorial_follow_up_zombie] Motion[2] set value 1.0d
