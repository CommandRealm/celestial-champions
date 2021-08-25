execute unless entity @s[tag=unlock_death_10] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","death_10"],Duration:1}
execute unless entity @s[tag=unlock_death_11] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","death_11"],Duration:1}

execute unless entity @s[tag=unlock_celebration_15] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","celebration_15"],Duration:1}
execute unless entity @s[tag=unlock_celebration_16] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","celebration_16"],Duration:1}
execute unless entity @s[tag=unlock_celebration_17] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","celebration_17"],Duration:1}



tag @e[type=area_effect_cloud,tag=cosmetic_unlock,sort=random,limit=1] add selected_unlock
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=death_10] run function cosmetic:death_10
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=death_11] run function cosmetic:death_11

execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=celebration_15] run function cosmetic:celebration_15
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=celebration_16] run function cosmetic:celebration_16
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=celebration_17] run function cosmetic:celebration_17

playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.20 1.6
kill @e[tag=cosmetic_unlock,type=area_effect_cloud]