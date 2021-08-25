##Block break for gracea particles and sounds

execute if data entity @s BlockState{Name:"minecraft:oak_planks"} run particle block oak_planks ~ ~ ~ 0.25 0.25 0.25 0.25 25
execute if data entity @s BlockState{Name:"minecraft:oak_trapdoor"} run particle block oak_trapdoor ~ ~ ~ 0.25 0.25 0.25 0.25 25
execute if data entity @s BlockState{Name:"minecraft:oak_log"} run particle block oak_log ~ ~ ~ 0.25 0.25 0.25 0.25 25

execute if data entity @s BlockState{Name:"minecraft:quartz_bricks"} run particle block quartz_bricks ~ ~ ~ 0.25 0.25 0.25 0.25 25
execute if data entity @s BlockState{Name:"minecraft:quartz_pillar"} run particle block quartz_pillar ~ ~ ~ 0.25 0.25 0.25 0.25 25
execute if data entity @s BlockState{Name:"minecraft:smooth_quartz_slab"} run particle block smooth_quartz_slab ~ ~ ~ 0.25 0.25 0.25 0.25 25
execute if data entity @s BlockState{Name:"minecraft:chiseled_quartz_block"} run particle block chiseled_quartz_block ~ ~ ~ 0.25 0.25 0.25 0.25 25
##sounds
execute if data entity @s BlockState{Name:"minecraft:oak_planks"} run playsound minecraft:block.wood.break master @a ~ ~ ~ 1 1
execute if data entity @s BlockState{Name:"minecraft:oak_trapdoor"} run playsound minecraft:block.wood.break master @a ~ ~ ~ 1 0
execute if data entity @s BlockState{Name:"minecraft:oak_log"} run playsound minecraft:block.wood.break master @a ~ ~ ~ 1 0.5

execute if data entity @s BlockState{Name:"minecraft:quartz_bricks"} run playsound minecraft:block.stone.break master @a ~ ~ ~ 1 0.5
execute if data entity @s BlockState{Name:"minecraft:quartz_pillar"} run playsound minecraft:block.metal.break master @a ~ ~ ~ 1 0.5
execute if data entity @s BlockState{Name:"minecraft:smooth_quartz_slab"} run playsound minecraft:block.metal.break master @a ~ ~ ~ 1 0.5
execute if data entity @s BlockState{Name:"minecraft:chiseled_quartz_block"} run playsound minecraft:block.stone.break master @a ~ ~ ~ 1 0.5