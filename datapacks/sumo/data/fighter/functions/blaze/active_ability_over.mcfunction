##Called when Blaze's active ability is over

##An ability type score of 0 means it was a ground ability. 1 means air ability.



##Set up cooldown
scoreboard players set @s[scores={ability_type=1}] ability_timer 300

##particles and Sounds
execute if entity @s[scores={ability_type=1}] run particle smoke ~ ~ ~ 0 0 0 0.25 75
execute if entity @s[scores={ability_type=1}] run playsound minecraft:entity.blaze.hurt master @a ~ ~ ~ 1 0


##Change state
scoreboard players set @s ability_state 2