##Called when we jump

##applying motion
data modify entity @e[type=armor_stand,limit=1,tag=tutorial_abilities] Motion[1] set value 1.0d



##Particles1
execute at @e[type=armor_stand,tag=tutorial_abilities] run particle cloud ~ ~-0.75 ~ 0.25 0.2 0.25 0.05 50


##Sound (small_fall will pitch down with player's percentage)
execute at @e[type=armor_stand,tag=tutorial_abilities] run playsound minecraft:entity.player.small_fall master @a ~ ~ ~ 0.45 1.0