##called to teleport the player to the tutorial

##tp
tp @s 0 83 -75 0 0

##sound/particle
execute at @s run particle firework ~ ~ ~ 0 0 0 0.25 50
execute at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 1

##tellraw
tellraw @s [{"text":"☀ ","color":"aqua","bold":false},{"text":"Teleported to the tutorial.","color":"white"}]