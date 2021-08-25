execute if entity @a[tag=winner,scores={celebration=0}] run function cosmetic:celebration/0default
execute if entity @a[tag=winner,scores={celebration=1}] run function cosmetic:celebration/1levitate
execute if entity @a[tag=winner,scores={celebration=2}] run function cosmetic:celebration/2bees
execute if entity @a[tag=winner,scores={celebration=3}] run function cosmetic:celebration/3anvil
execute if entity @a[tag=winner,scores={celebration=4}] run function cosmetic:celebration/4melon
execute if entity @a[tag=winner,scores={celebration=5}] run function cosmetic:celebration/5wee
execute if entity @a[tag=winner,scores={celebration=6}] run function cosmetic:celebration/6losers
execute if entity @a[tag=winner,scores={celebration=7}] run function cosmetic:celebration/7souls
execute if entity @a[tag=winner,scores={celebration=8}] run function cosmetic:celebration/8eggs
execute if entity @a[tag=winner,scores={celebration=9}] run function cosmetic:celebration/9campfire
execute if entity @a[tag=winner,scores={celebration=10}] run function cosmetic:celebration/10portal
execute if entity @a[tag=winner,scores={celebration=11}] run function cosmetic:celebration/11food
execute if entity @a[tag=winner,scores={celebration=12}] run function cosmetic:celebration/12balloons
execute if entity @a[tag=winner,scores={celebration=13}] run function cosmetic:celebration/13coaster
execute if entity @a[tag=winner,scores={celebration=14}] run function cosmetic:celebration/14uwa
execute if entity @a[tag=winner,scores={celebration=15}] run function cosmetic:celebration/15dance
execute if entity @a[tag=winner,scores={celebration=16}] run function cosmetic:celebration/16storm
execute if entity @a[tag=winner,scores={celebration=17}] run function cosmetic:celebration/17throne
execute if entity @a[tag=winner,scores={celebration=18}] run function cosmetic:celebration/18wand

execute if score $end cooldown matches 1 run setblock -3 67 80 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"?",rotation:"NONE",posX:0,mode:"LOAD",posY:2,sizeX:7,posZ:0,integrity:1.0f,showair:0b,name:"minecraft:podium",sizeY:8,sizeZ:7,showboundingbox:0b}
execute if score $end cooldown matches 1 run setblock -3 66 80 redstone_block destroy