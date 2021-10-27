##Called to make melon man do a ground pound

##Setting our ability to be inactive soon
scoreboard players set @s ability_timer 1

##Tag
tag @s add temporary_tag

##Stun
scoreboard players set @a[tag=is_fighter,gamemode=adventure,distance=..4,nbt={OnGround:1b},tag=!temporary_tag] stun 60
execute as @a[tag=is_fighter,gamemode=adventure,distance=..4,nbt={OnGround:1b},tag=!temporary_tag] at @s run function fighter:stun/start_stun


##Items
summon area_effect_cloud ~ ~ ~ {Tags:["needs_distribution"]}
summon area_effect_cloud ~ ~ ~ {Tags:["needs_distribution"]}
summon area_effect_cloud ~ ~ ~ {Tags:["needs_distribution"]}
summon area_effect_cloud ~ ~ ~ {Tags:["needs_distribution"]}
summon area_effect_cloud ~ ~ ~ {Tags:["needs_distribution"]}
summon area_effect_cloud ~ ~ ~ {Tags:["needs_distribution"]}
summon area_effect_cloud ~ ~ ~ {Tags:["needs_distribution"]}
summon area_effect_cloud ~ ~ ~ {Tags:["needs_distribution"]}
summon area_effect_cloud ~ ~ ~ {Tags:["needs_distribution"]}
summon area_effect_cloud ~ ~ ~ {Tags:["needs_distribution"]}
summon area_effect_cloud ~ ~ ~ {Tags:["needs_distribution"]}
summon area_effect_cloud ~ ~ ~ {Tags:["needs_distribution"]}
summon area_effect_cloud ~ ~ ~ {Tags:["needs_distribution"]}
summon area_effect_cloud ~ ~ ~ {Tags:["needs_distribution"]}
summon area_effect_cloud ~ ~ ~ {Tags:["needs_distribution"]}

##Spreadplayers
spreadplayers ~ ~ 0 2 false @e[type=area_effect_cloud,tag=needs_distribution]

##Summon items
execute if entity @s[scores={costume=0}] at @e[type=area_effect_cloud,tag=needs_distribution] run summon item ~ ~ ~ {Age:5980,Item:{id:"minecraft:melon_slice",Count:1b,tag:{id:9}},Tags:["needs_adjustments"],PickupDelay:1000s}
execute if entity @s[scores={costume=1}] at @e[type=area_effect_cloud,tag=needs_distribution] run summon item ~ ~ ~ {Age:5980,Item:{id:"minecraft:salmon",Count:1b,tag:{id:9}},Tags:["needs_adjustments"],PickupDelay:1000s}
execute if entity @s[scores={costume=2}] at @e[type=area_effect_cloud,tag=needs_distribution] run summon item ~ ~ ~ {Age:5980,Item:{id:"minecraft:wheat_seeds",Count:1b,tag:{id:9}},Tags:["needs_adjustments"],PickupDelay:1000s}
execute if entity @s[scores={costume=3}] at @e[type=area_effect_cloud,tag=needs_distribution] run summon item ~ ~ ~ {Age:5980,Item:{id:"minecraft:gold_nugget",Count:1b,tag:{id:9}},Tags:["needs_adjustments"],PickupDelay:1000s}
execute if entity @s[scores={costume=4}] at @e[type=area_effect_cloud,tag=needs_distribution] run summon item ~ ~ ~ {Age:5980,Item:{id:"minecraft:oak_leaves",Count:1b,tag:{id:9}},Tags:["needs_adjustments"],PickupDelay:1000s}
execute as @e[type=item,tag=needs_adjustments] at @s run function fighter:melon_man/adjust_ground_pound_item

##Remove tag
kill @e[type=area_effect_cloud,tag=needs_distribution]

##Particles
particle block dirt ~ ~ ~ 2 0.25 2 0.15 150
particle block grass ~ ~ ~ 2 0.25 2 0.1 50

##sound
playsound minecraft:block.grass.break master @a ~ ~ ~ 1 0
playsound minecraft:block.grass.break master @a ~ ~ ~ 1 0.6
playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1 0
playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1 0.6

##Remove tag
tag @s remove temporary_tag