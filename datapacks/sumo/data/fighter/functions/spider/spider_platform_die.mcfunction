##Called when the shulker platform dies

##giving back the tag
execute positioned ~ ~0.5 ~ run tag @a[tag=is_fighter,scores={fighter=4},nbt={OnGround:1b},gamemode=adventure,tag=!spawned_spider_shulker] add spawned_spider_shulker

##Particle
particle block cobweb ~ ~.25 ~ 0.25 0.25 0.25 0.25 100


##Sound
playsound minecraft:block.wool.break master @a ~ ~ ~ 1 1.2