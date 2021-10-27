##Function is meant to reset players and then generate their id score

##Reset
effect clear @a[tag=playing]
clear @a[tag=playing]
gamemode adventure @a[tag=playing]
tag @a remove slow_falling_until_landing

scoreboard players reset @a[tag=playing] death_cooldown
advancement revoke @a only advancements:damage/damage_dealt
scoreboard players reset @a[tag=playing] damage_taken

scoreboard players set @a[tag=playing] ability_state 0
scoreboard players set @a[tag=playing] extra_jump_time 0

##Give new effects
execute unless score $mode settings matches 3 run effect give @a[tag=playing] levitation 1000000 255 true
execute unless score $mode settings matches 3 run effect give @a[tag=playing] weakness 100000 255 true
effect give @a[tag=playing] instant_health 1 5 true

scoreboard players operation @a[tag=playing] lives = $lives settings

##ID generation
scoreboard objectives remove id
scoreboard objectives add id dummy

execute as @a[tag=playing] at @s run function game:generate_id

##Giving id tags
function game:assign_players_id_tags

##Setting arrow timer to -1 (Individual fighter stats will set it to be what it's supposed to be)
scoreboard players set @a[tag=playing] set_arrow_timer -1
scoreboard players set @a[tag=playing] arrow_timer -1


##Getting fighter stats
execute as @a[tag=playing] at @s run function fighter:get_stats



##Resetting Objectives
scoreboard players reset $time cooldown


##Resetting blink
execute as @a[tag=playing,tag=is_fighter] at @s run function fighter:costume/blink/stop_blinking
