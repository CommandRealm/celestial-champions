##Called when an item spawn dies

##actual summon
function item:random_item

#Sound
playsound minecraft:entity.item.pickup master @a ~ ~ ~ 1 0
playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 1 0

##Particle
particle firework ~ ~ ~ 0 0 0 0.15 50