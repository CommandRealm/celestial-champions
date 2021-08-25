##Called when we hit the zombie
scoreboard players add $kb_hit tutorial 1

##sound and particles
playsound minecraft:entity.player.attack.knockback master @a 5 83 -70
execute if score $kb_hit tutorial matches 4 run playsound minecraft:item.shield.block master @a 5 83 -70 0.667 1.25
execute at @e[type=armor_stand,tag=tutorial_knockback_zombie] run particle crit ~ ~1 ~ 0.15 1 0.15 0.05 5

##applying motion
execute if score $kb_hit tutorial matches ..3 run data modify entity @e[type=armor_stand,limit=1,tag=tutorial_knockback_zombie] Motion[1] set value 0.25d

execute if score $kb_hit tutorial matches 4 run data modify entity @e[type=armor_stand,limit=1,tag=tutorial_knockback_zombie] Motion[1] set value 0.4d
execute if score $kb_hit tutorial matches 4 run data modify entity @e[type=armor_stand,limit=1,tag=tutorial_knockback_zombie] Motion[2] set value -1.5d
