tag @a remove got_placement
scoreboard objectives remove fake_criteria
scoreboard objectives add fake_criteria dummy
scoreboard players set $check_place fake_criteria 0
execute as @a[tag=playing] at @s run scoreboard players operation @s fake_criteria = @s criteria
execute as @a[tag=playing] at @s run scoreboard players operation $check_place fake_criteria > @s criteria
execute as @a[tag=playing] at @s run scoreboard players operation @s fake_criteria -= $check_place fake_criteria
tellraw @a[tag=playing] {"text":"\n"}
tellraw @a [{"text":"Celestial ","color":"white","bold":true},{"text":"Champions","color":"aqua","bold":true}]

team join aqua @a[scores={fake_criteria=0},tag=playing]
execute as @a[scores={fake_criteria=0},tag=playing] run tellraw @a [{"selector":"@s"},{"text":" score: ","color":"aqua"},{"score":{"objective":"criteria","name":"@s"},"color":"aqua"}]

team join gray @a[tag=playing]
tag @a[scores={fake_criteria=0},tag=playing] add got_placement
scoreboard players set $check_place fake_criteria -1000
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_criteria = @s criteria
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation $check_place fake_criteria > @s criteria
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_criteria -= $check_place fake_criteria
execute as @a[scores={fake_criteria=0},tag=playing,tag=!got_placement] run tellraw @a [{"selector":"@s"},{"text":" score: ","color":"aqua"},{"score":{"objective":"criteria","name":"@s"},"color":"aqua"}]
tag @a[scores={fake_criteria=0},tag=playing] add got_placement
scoreboard players set $check_place fake_criteria -1000
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_criteria = @s criteria
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation $check_place fake_criteria > @s criteria
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_criteria -= $check_place fake_criteria
execute as @a[scores={fake_criteria=0},tag=playing,tag=!got_placement] run tellraw @a [{"selector":"@s"},{"text":" score: ","color":"aqua"},{"score":{"objective":"criteria","name":"@s"},"color":"aqua"}]
tag @a[scores={fake_criteria=0},tag=playing] add got_placement
scoreboard players set $check_place fake_criteria -1000
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_criteria = @s criteria
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation $check_place fake_criteria > @s criteria
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_criteria -= $check_place fake_criteria
execute as @a[scores={fake_criteria=0},tag=playing,tag=!got_placement] run tellraw @a [{"selector":"@s"},{"text":" score: ","color":"aqua"},{"score":{"objective":"criteria","name":"@s"},"color":"aqua"}]
tag @a[scores={fake_criteria=0},tag=playing] add got_placement
scoreboard players set $check_place fake_criteria -1000
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_criteria = @s criteria
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation $check_place fake_criteria > @s criteria
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_criteria -= $check_place fake_criteria
execute as @a[scores={fake_criteria=0},tag=playing,tag=!got_placement] run tellraw @a [{"selector":"@s"},{"text":" score: ","color":"aqua"},{"score":{"objective":"criteria","name":"@s"},"color":"aqua"}]
tag @a[scores={fake_criteria=0},tag=playing] add got_placement
scoreboard players set $check_place fake_criteria -1000
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_criteria = @s criteria
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation $check_place fake_criteria > @s criteria
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_criteria -= $check_place fake_criteria
execute as @a[scores={fake_criteria=0},tag=playing,tag=!got_placement] run tellraw @a [{"selector":"@s"},{"text":" score: ","color":"aqua"},{"score":{"objective":"criteria","name":"@s"},"color":"aqua"}]
tag @a[scores={fake_criteria=0},tag=playing] add got_placement
scoreboard players set $check_place fake_criteria -1000
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_criteria = @s criteria
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation $check_place fake_criteria > @s criteria
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_criteria -= $check_place fake_criteria
execute as @a[scores={fake_criteria=0},tag=playing,tag=!got_placement] run tellraw @a [{"selector":"@s"},{"text":" score: ","color":"aqua"},{"score":{"objective":"criteria","name":"@s"},"color":"aqua"}]
tag @a[scores={fake_criteria=0},tag=playing] add got_placement
scoreboard players set $check_place fake_criteria -1000
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_criteria = @s criteria
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation $check_place fake_criteria > @s criteria
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_criteria -= $check_place fake_criteria
execute as @a[scores={fake_criteria=0},tag=playing,tag=!got_placement] run tellraw @a [{"selector":"@s"},{"text":" score: ","color":"aqua"},{"score":{"objective":"criteria","name":"@s"},"color":"aqua"}]
tag @a[scores={fake_criteria=0},tag=playing] add got_placement
scoreboard players set $check_place fake_criteria -1000
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_criteria = @s criteria
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation $check_place fake_criteria > @s criteria
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_criteria -= $check_place fake_criteria
execute as @a[scores={fake_criteria=0},tag=playing,tag=!got_placement] run tellraw @a [{"selector":"@s"},{"text":" score: ","color":"aqua"},{"score":{"objective":"criteria","name":"@s"},"color":"aqua"}]
tag @a[scores={fake_criteria=0},tag=playing] add got_placement
scoreboard players set $check_place fake_criteria -1000
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_criteria = @s criteria
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation $check_place fake_criteria > @s criteria
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_criteria -= $check_place fake_criteria
execute as @a[scores={fake_criteria=0},tag=playing,tag=!got_placement] run tellraw @a [{"selector":"@s"},{"text":" score: ","color":"aqua"},{"score":{"objective":"criteria","name":"@s"},"color":"aqua"}]
tag @a[scores={fake_criteria=0},tag=playing] add got_placement
scoreboard players set $check_place fake_criteria -1000
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_criteria = @s criteria
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation $check_place fake_criteria > @s criteria
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_criteria -= $check_place fake_criteria
execute as @a[scores={fake_criteria=0},tag=playing,tag=!got_placement] run tellraw @a [{"selector":"@s"},{"text":" score: ","color":"aqua"},{"score":{"objective":"criteria","name":"@s"},"color":"aqua"}]
tag @a[scores={fake_criteria=0},tag=playing] add got_placement
scoreboard players set $check_place fake_criteria -1000
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_criteria = @s criteria
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation $check_place fake_criteria > @s criteria
execute as @a[tag=playing,tag=!got_placement] at @s run scoreboard players operation @s fake_criteria -= $check_place fake_criteria
execute as @a[scores={fake_criteria=0},tag=playing,tag=!got_placement] run tellraw @a [{"selector":"@s"},{"text":" score: ","color":"aqua"},{"score":{"objective":"criteria","name":"@s"},"color":"aqua"}]
tag @a remove got_placement


function end:players