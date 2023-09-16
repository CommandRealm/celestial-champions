##Called to update the bossbar

##Copying score
execute store result bossbar minecraft:game value run scoreboard players get $time criteria

##Math
scoreboard players operation $minute bossbar_time = $time criteria
scoreboard players operation $minute bossbar_time /= $minute number
scoreboard players operation $calculate bossbar_time = $minute bossbar_time
scoreboard players operation $calculate bossbar_time *= $minute number
scoreboard players operation $second bossbar_time = $time criteria
scoreboard players operation $second bossbar_time -= $calculate bossbar_time
scoreboard players operation $second bossbar_time /= $20 number
scoreboard players set $time bossbar_time 20

##Figuring out what color the bossbar should be
execute if score $minute bossbar_time matches 1.. run scoreboard players set $color bossbar_time 0
execute if score $second bossbar_time matches 31.. run scoreboard players set $color bossbar_time 0
execute if score $minute bossbar_time matches 0 if score $second bossbar_time matches ..30 run scoreboard players add $color bossbar_time 1
execute if score $color bossbar_time matches 3.. run scoreboard players set $color bossbar_time 1

##Display
execute if score $color bossbar_time matches 0 if score $second bossbar_time matches 10.. run bossbar set minecraft:game name [{"translate":"=","color":"aqua","bold":false},{"translate":"-","color":"white","bold":false},{"translate":"=","color":"aqua","bold":false},{"translate":" Time ","color":"aqua","bold":true},{"translate":"remaining: ","color":"white","bold":true},{"score":{"objective":"bossbar_time","name":"$minute"},"color":"aqua"},{"translate":":","color":"white"},{"score":{"objective":"bossbar_time","name":"$second"},"color":"aqua"},{"translate":" =","color":"aqua","bold":false},{"translate":"-","color":"white","bold":false},{"translate":"=","color":"aqua","bold":false}]
execute if score $color bossbar_time matches 0 if score $second bossbar_time matches ..9 run bossbar set minecraft:game name [{"translate":"=","color":"aqua","bold":false},{"translate":"-","color":"white","bold":false},{"translate":"=","color":"aqua","bold":false},{"translate":" Time ","color":"aqua","bold":true},{"translate":"remaining: ","color":"white","bold":true},{"score":{"objective":"bossbar_time","name":"$minute"},"color":"aqua"},{"translate":":","color":"white"},{"translate":"0","color":"aqua"},{"score":{"objective":"bossbar_time","name":"$second"},"color":"aqua"},{"translate":" =","color":"aqua","bold":false},{"translate":"-","color":"white","bold":false},{"translate":"=","color":"aqua","bold":false}]

execute if score $color bossbar_time matches 1 if score $second bossbar_time matches 10.. run bossbar set minecraft:game name [{"translate":"=","color":"aqua","bold":false},{"translate":"-","color":"white","bold":false},{"translate":"=","color":"aqua","bold":false},{"translate":" Time ","color":"red","bold":true},{"translate":"remaining: ","color":"dark_red","bold":true},{"score":{"objective":"bossbar_time","name":"$minute"},"color":"red"},{"translate":":","color":"white"},{"score":{"objective":"bossbar_time","name":"$second"},"color":"red"},{"translate":" =","color":"aqua","bold":false},{"translate":"-","color":"white","bold":false},{"translate":"=","color":"aqua","bold":false}]
execute if score $color bossbar_time matches 1 if score $second bossbar_time matches ..9 run bossbar set minecraft:game name [{"translate":"=","color":"aqua","bold":false},{"translate":"-","color":"white","bold":false},{"translate":"=","color":"aqua","bold":false},{"translate":" Time ","color":"red","bold":true},{"translate":"remaining: ","color":"dark_red","bold":true},{"score":{"objective":"bossbar_time","name":"$minute"},"color":"red"},{"translate":":","color":"white"},{"translate":"0","color":"red"},{"score":{"objective":"bossbar_time","name":"$second"},"color":"red"},{"translate":" =","color":"aqua","bold":false},{"translate":"-","color":"white","bold":false},{"translate":"=","color":"aqua","bold":false}]

execute if score $color bossbar_time matches 2 if score $second bossbar_time matches 10.. run bossbar set minecraft:game name [{"translate":"=","color":"aqua","bold":false},{"translate":"-","color":"white","bold":false},{"translate":"=","color":"aqua","bold":false},{"translate":" Time ","color":"#b13c41","bold":true},{"translate":"remaining: ","color":"#6f2a2d","bold":true},{"score":{"objective":"bossbar_time","name":"$minute"},"color":"#b13c41"},{"translate":":","color":"white"},{"score":{"objective":"bossbar_time","name":"$second"},"color":"#b13c41"},{"translate":" =","color":"aqua","bold":false},{"translate":"-","color":"white","bold":false},{"translate":"=","color":"aqua","bold":false}]
execute if score $color bossbar_time matches 2 if score $second bossbar_time matches ..9 run bossbar set minecraft:game name [{"translate":"=","color":"aqua","bold":false},{"translate":"-","color":"white","bold":false},{"translate":"=","color":"aqua","bold":false},{"translate":" Time ","color":"#b13c41","bold":true},{"translate":"remaining: ","color":"#6f2a2d","bold":true},{"score":{"objective":"bossbar_time","name":"$minute"},"color":"#b13c41"},{"translate":":","color":"white"},{"translate":"0","color":"#b13c41"},{"score":{"objective":"bossbar_time","name":"$second"},"color":"#b13c41"},{"translate":" =","color":"aqua","bold":false},{"translate":"-","color":"white","bold":false},{"translate":"=","color":"aqua","bold":false}]


