##called to display a random death msg

##Joining red team
team join red

##Random number
scoreboard players set $mod random 10
function random:random

##msg
execute if score $rand random matches 0 run tellraw @a[tag=!playing,tag=is_fighter] [{"selector":"@s"},{"text":" fell off.","color":"gray"}]
execute if score $rand random matches 1 run tellraw @a[tag=!playing,tag=is_fighter] [{"selector":"@s"},{"text":" got knocked into oblivion.","color":"gray"}]
execute if score $rand random matches 2 run tellraw @a[tag=!playing,tag=is_fighter] [{"selector":"@s"},{"text":" picked the wrong character.","color":"gray"}]
execute if score $rand random matches 3 run tellraw @a[tag=!playing,tag=is_fighter] [{"selector":"@s"},{"text":" wasn't the best fighter.","color":"gray"}]
execute if score $rand random matches 4 run tellraw @a[tag=!playing,tag=is_fighter] [{"selector":"@s"},{"text":" forgot to use their extra jump.","color":"gray"}]
execute if score $rand random matches 5 run tellraw @a[tag=!playing,tag=is_fighter] [{"selector":"@s"},{"text":" missed the ground.","color":"gray"}]
execute if score $rand random matches 6 run tellraw @a[tag=!playing,tag=is_fighter] [{"selector":"@s"},{"text":" just plain died.","color":"gray"}]
execute if score $rand random matches 7 run tellraw @a[tag=!playing,tag=is_fighter] [{"selector":"@s"},{"text":" had a high percentage.","color":"gray"}]
execute if score $rand random matches 8 run tellraw @a[tag=!playing,tag=is_fighter] [{"selector":"@s"},{"text":" was scared of landing.","color":"gray"}]
execute if score $rand random matches 9 run tellraw @a[tag=!playing,tag=is_fighter] [{"selector":"@s"},{"text":" wanted to spectate.","color":"gray"}]

##Rejoining proper team
function general:rank

##Sound
execute as @a[tag=!playing,tag=is_fighter] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 0.5 0.75
playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 10000 0.75