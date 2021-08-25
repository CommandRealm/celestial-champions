##Runs when a player double jumps


##Score resets
scoreboard players reset @s extra_jump_sneak

##Levitation effect
execute if entity @s[scores={extra_jump_force=0}] run effect give @s levitation 10000 0 true
execute if entity @s[scores={extra_jump_force=1}] run effect give @s levitation 10000 1 true
execute if entity @s[scores={extra_jump_force=2}] run effect give @s levitation 10000 2 true
execute if entity @s[scores={extra_jump_force=3}] run effect give @s levitation 10000 3 true
execute if entity @s[scores={extra_jump_force=4}] run effect give @s levitation 10000 4 true
execute if entity @s[scores={extra_jump_force=5}] run effect give @s levitation 10000 5 true
execute if entity @s[scores={extra_jump_force=6}] run effect give @s levitation 10000 6 true
execute if entity @s[scores={extra_jump_force=7}] run effect give @s levitation 10000 7 true
execute if entity @s[scores={extra_jump_force=8}] run effect give @s levitation 10000 8 true
execute if entity @s[scores={extra_jump_force=9}] run effect give @s levitation 10000 9 true
execute if entity @s[scores={extra_jump_force=10}] run effect give @s levitation 10000 10 true
execute if entity @s[scores={extra_jump_force=11}] run effect give @s levitation 10000 11 true
execute if entity @s[scores={extra_jump_force=12}] run effect give @s levitation 10000 12 true
execute if entity @s[scores={extra_jump_force=13}] run effect give @s levitation 10000 13 true
execute if entity @s[scores={extra_jump_force=14}] run effect give @s levitation 10000 14 true
execute if entity @s[scores={extra_jump_force=15}] run effect give @s levitation 10000 15 true
execute if entity @s[scores={extra_jump_force=16}] run effect give @s levitation 10000 16 true
execute if entity @s[scores={extra_jump_force=17}] run effect give @s levitation 10000 17 true
execute if entity @s[scores={extra_jump_force=18}] run effect give @s levitation 10000 18 true
execute if entity @s[scores={extra_jump_force=19}] run effect give @s levitation 10000 19 true
execute if entity @s[scores={extra_jump_force=20}] run effect give @s levitation 10000 20 true
execute if entity @s[scores={extra_jump_force=21}] run effect give @s levitation 10000 21 true
execute if entity @s[scores={extra_jump_force=22}] run effect give @s levitation 10000 22 true
execute if entity @s[scores={extra_jump_force=23}] run effect give @s levitation 10000 23 true
execute if entity @s[scores={extra_jump_force=24}] run effect give @s levitation 10000 24 true
execute if entity @s[scores={extra_jump_force=25}] run effect give @s levitation 10000 25 true
execute if entity @s[scores={extra_jump_force=26}] run effect give @s levitation 10000 26 true
execute if entity @s[scores={extra_jump_force=27}] run effect give @s levitation 10000 27 true
execute if entity @s[scores={extra_jump_force=28}] run effect give @s levitation 10000 28 true
execute if entity @s[scores={extra_jump_force=29}] run effect give @s levitation 10000 29 true
execute if entity @s[scores={extra_jump_force=30}] run effect give @s levitation 10000 30 true
execute if entity @s[scores={extra_jump_force=31}] run effect give @s levitation 10000 31 true
execute if entity @s[scores={extra_jump_force=32}] run effect give @s levitation 10000 32 true
execute if entity @s[scores={extra_jump_force=33}] run effect give @s levitation 10000 33 true
execute if entity @s[scores={extra_jump_force=34}] run effect give @s levitation 10000 34 true
execute if entity @s[scores={extra_jump_force=35}] run effect give @s levitation 10000 35 true
execute if entity @s[scores={extra_jump_force=36}] run effect give @s levitation 10000 36 true
execute if entity @s[scores={extra_jump_force=37}] run effect give @s levitation 10000 37 true
execute if entity @s[scores={extra_jump_force=38}] run effect give @s levitation 10000 38 true
execute if entity @s[scores={extra_jump_force=39}] run effect give @s levitation 10000 39 true
execute if entity @s[scores={extra_jump_force=40}] run effect give @s levitation 10000 40 true

##Slow falling
effect give @s slow_falling 100000 255 true

##Scores and timers

##Removing the jump
scoreboard players remove @s extra_jumps 1


##Timer 
scoreboard players operation @s extra_jump_time = @s set_e_jump_time

##If damage percent is over 50% remove time from the jump
execute if entity @s[scores={damage_percent=50..}] run function fighter:extra_jump/percentage_removal

##Setting cooldown so you can't immediately jump again
scoreboard players operation @s extra_jump_cool = @s extra_jump_time


##Particles
particle cloud ~ ~-0.75 ~ 0.25 0.2 0.25 0.05 50


##Sound (small_fall will pitch down with player's percentage)
playsound minecraft:entity.player.small_fall master @s[scores={damage_percent=..49}] ~ ~ ~ 0.45 1.0
playsound minecraft:entity.player.small_fall master @s[scores={damage_percent=50..59}] ~ ~ ~ 0.45 0.95
playsound minecraft:entity.player.small_fall master @s[scores={damage_percent=60..69}] ~ ~ ~ 0.45 0.9
playsound minecraft:entity.player.small_fall master @s[scores={damage_percent=70..79}] ~ ~ ~ 0.45 0.85
playsound minecraft:entity.player.small_fall master @s[scores={damage_percent=80..89}] ~ ~ ~ 0.45 0.8
playsound minecraft:entity.player.small_fall master @s[scores={damage_percent=90..99}] ~ ~ ~ 0.45 0.75
playsound minecraft:entity.player.small_fall master @s[scores={damage_percent=100}] ~ ~ ~ 0.45 0.5
playsound minecraft:block.bone_block.break master @s ~ ~ ~ 0.35 0.5

##Reset if we're falling
execute if entity @s[tag=slow_falling_until_landing] run function game:landed