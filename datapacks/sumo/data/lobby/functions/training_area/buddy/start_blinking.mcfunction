##Called when the training buddy is not blinking but is starting to blink

##Replacing head

replaceitem entity @e[type=skeleton,tag=training_buddy] armor.head player_head{SkullOwner:{Id:[I;-1719488789,344541638,-1577434250,1302474876],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDRhYjVjOGQ4N2ZmNzIxNWEwYTRiZWYyNmU3NjIyMGRiNTAxYTZlNmE1NWI2M2MzZTllNTJlYWY3NjNmOGNiMyJ9fX0="}]}}}

##Random blink length

##Setting modulo score
scoreboard players set $mod random 2
##Calling random function
function random:random
##Adding two so it's not 0
scoreboard players add $rand random 4
##Copying that to our blink score
scoreboard players operation $blink_cooldown training_area = $rand random

scoreboard players set $blink_state training_area 1