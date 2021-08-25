execute unless entity @s[tag=unlock_death_7] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","death_7"],Duration:1}
execute unless entity @s[tag=unlock_death_8] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","death_8"],Duration:1}
execute unless entity @s[tag=unlock_death_9] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","death_9"],Duration:1}

execute unless entity @s[tag=unlock_celebration_10] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","celebration_10"],Duration:1}
execute unless entity @s[tag=unlock_celebration_11] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","celebration_11"],Duration:1}
execute unless entity @s[tag=unlock_celebration_12] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","celebration_12"],Duration:1}
execute unless entity @s[tag=unlock_celebration_13] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","celebration_13"],Duration:1}
execute unless entity @s[tag=unlock_celebration_14] run summon area_effect_cloud 0 0 0 {Tags:["cosmetic_unlock","celebration_14"],Duration:1}


tag @e[type=area_effect_cloud,tag=cosmetic_unlock,sort=random,limit=1] add selected_unlock
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=death_7] run function cosmetic:death_7
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=death_8] run function cosmetic:death_8
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=death_9] run function cosmetic:death_9

execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=celebration_10] run function cosmetic:celebration_10
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=celebration_11] run function cosmetic:celebration_11
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=celebration_12] run function cosmetic:celebration_12
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=celebration_13] run function cosmetic:celebration_13
execute if entity @e[tag=selected_unlock,type=area_effect_cloud,tag=celebration_14] run function cosmetic:celebration_14


playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.20 1.85
kill @e[tag=cosmetic_unlock,type=area_effect_cloud]
