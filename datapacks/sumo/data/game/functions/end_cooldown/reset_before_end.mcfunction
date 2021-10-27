##Called to reset the end cooldown.
setblock -3 67 80 minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"?",rotation:"NONE",posX:0,mode:"LOAD",posY:2,sizeX:7,posZ:0,integrity:1.0f,showair:0b,name:"minecraft:podium",sizeY:8,sizeZ:7,showboundingbox:0b}
setblock -3 66 80 redstone_block destroy
kill @e[tag=die]