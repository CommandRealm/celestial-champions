##Function for ending the starting countdown (in duels mode)


##Title update
function game:starting_countdown/title


##Effects
effect clear @a[tag=playing] levitation
effect clear @a[tag=playing] weakness

##Cooldown scores
scoreboard players set @a[tag=playing] ability_timer 0
scoreboard players set @a[tag=playing] ability_state 0

##Setting arrow score if player is a ranged class.
scoreboard players set @a[scores={set_arrow_timer=1..},tag=playing] arrow_timer 1

##Dragon firework
scoreboard players set @a[scores={fighter=8},tag=playing] random_cooldown2 1

##Particles
execute as @a[tag=playing,gamemode=adventure] at @s run particle spit ~ ~ ~ 0.25 0.25 0.25 0.15 5


##Scoreboard resets
scoreboard players reset @a[tag=playing] extra_jump_sneak
scoreboard players set @a[tag=playing] extra_jump_cool 0

##Give players tag
tag @a[tag=playing] add is_fighter
scoreboard players set @a[tag=playing] duels_timer 2400
