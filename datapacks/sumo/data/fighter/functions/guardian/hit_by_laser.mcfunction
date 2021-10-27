##called by a player who is hit by the laser

scoreboard players add @s times_hit 10
execute if score @s times_hit > @s max_damage run scoreboard players operation @s times_hit = @s max_damage

effect give @s instant_damage 1 0 true

particle enchanted_hit ~ ~ ~ 0 0 0 2 50