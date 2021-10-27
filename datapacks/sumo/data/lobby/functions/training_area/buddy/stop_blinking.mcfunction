###Called to generate a random blink time

item replace entity @e[type=skeleton,tag=training_buddy] armor.head with player_head{SkullOwner:{Id:[I;67052722,2019248191,-1414515712,498644137],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGQ5Mjc5ODVhYTM1NjA5MWZmODY1OTYwOGNiMGFkNjZkNDA1MGUzYmIwODMyYjRmODFiZTEzYjgzNzlhMDkwNSJ9fX0="}]}}}

##setting modulo score
scoreboard players set $mod random 80
##generating a random number
function random:random
##Adding 60 ticks (This means that we will have a random number between three and seven seconds.)
scoreboard players add $rand random 60
##Copying that score to blink timer
scoreboard players operation $blink_cooldown training_area = $rand random

scoreboard players set $blink_state training_area 0