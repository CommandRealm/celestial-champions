##Called when we jump
scoreboard players add $ej_jump tutorial 1


##applying motion
execute if score $ej_jump tutorial matches 1 run data modify entity @e[type=armor_stand,limit=1,tag=tutorial_extra_jumps] Motion[1] set value 1.5d
execute if score $ej_jump tutorial matches 2 run data modify entity @e[type=armor_stand,limit=1,tag=tutorial_extra_jumps] Motion[1] set value 1.125d
execute if score $ej_jump tutorial matches 3 run data modify entity @e[type=armor_stand,limit=1,tag=tutorial_extra_jumps] Motion[1] set value 0.75d


##Particles1
execute at @e[type=armor_stand,tag=tutorial_extra_jumps] run particle cloud ~ ~-0.75 ~ 0.25 0.2 0.25 0.05 50


##Sound (small_fall will pitch down with player's percentage)
execute if score $ej_jump tutorial matches 1 at @e[type=armor_stand,tag=tutorial_extra_jumps] run playsound minecraft:entity.player.small_fall master @a ~ ~ ~ 0.45 1.0
execute if score $ej_jump tutorial matches 2 at @e[type=armor_stand,tag=tutorial_extra_jumps] run playsound minecraft:entity.player.small_fall master @a ~ ~ ~ 0.45 0.85
execute if score $ej_jump tutorial matches 3 at @e[type=armor_stand,tag=tutorial_extra_jumps] run playsound minecraft:entity.player.small_fall master @a ~ ~ ~ 0.45 0.8

##Name
execute if score $ej_jump tutorial matches 2 run data modify entity @e[type=armor_stand,limit=1,tag=tutorial_extra_jumps] CustomName set value '[{"text":"75%","color":"red","bold":true}]'
execute if score $ej_jump tutorial matches 3 run data modify entity @e[type=armor_stand,limit=1,tag=tutorial_extra_jumps] CustomName set value '[{"text":"100%","color":"red","bold":true}]'


##Resetting timer
execute if score $ej tutorial matches 20.. run scoreboard players set $ej tutorial 1
execute if score $ej_jump tutorial matches 4.. run scoreboard players set $ej tutorial 0