##Displays titles and plays sounds


##Titles
execute if score $time game matches 48 run title @a[tag=playing] title [{"translate":"☀ ","color":"aqua","bold":false},{"translate":"3 . . . ","color":"#ff000c","bold":false},{"translate":"☀","color":"aqua"}]
execute if score $time game matches 68 run title @a[tag=playing] title [{"translate":"= ","color":"white","bold":true},{"translate":"2...","color":"#ff212b","bold":false},{"translate":" =","color":"white"}]
execute if score $time game matches 88 run title @a[tag=playing] title [{"translate":"- ","color":"aqua","bold":false},{"translate":"1","color":"#ff4750","bold":false},{"translate":" -","color":"aqua"}]
execute if score $time game matches 108 run title @a[tag=playing] title [{"translate":"☄ ","color":"#8a0007","bold":true},{"translate":"- ","color":"white","bold":false},{"translate":"Fight!","color":"#ff7d83","bold":false},{"translate":" -","color":"white","bold":false},{"translate":" ☄","color":"#8a0007"}]
execute if score $time game matches 108 as @a[tag=playing] at @s run playsound minecraft:announcer.fight master @s ~ ~ ~ 1 0.925


##Sounds

execute if score $time game matches 48 as @a[tag=playing] at @s run playsound minecraft:entity.blaze.hurt master @s ~ ~ ~ 100000 0.5
execute if score $time game matches 68 as @a[tag=playing] at @s run playsound minecraft:entity.blaze.hurt master @s ~ ~ ~ 100000 0.65
execute if score $time game matches 88 as @a[tag=playing] at @s run playsound minecraft:entity.blaze.hurt master @s ~ ~ ~ 100000 0.75
execute if score $time game matches 108 as @a[tag=playing] at @s run playsound minecraft:entity.blaze.hurt master @s ~ ~ ~ 100000 0.85
execute if score $time game matches 108 as @a[tag=playing] at @s run playsound minecraft:entity.blaze.death master @s ~ ~ ~ 100000 0.5

##