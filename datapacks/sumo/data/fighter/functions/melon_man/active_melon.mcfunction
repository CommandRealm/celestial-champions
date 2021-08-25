##Called when a melon is active.
execute as @e[type=zombie,tag=melon_man_melon] at @s run function fighter:melon_man/check_melon_position
execute as @e[type=zombie,tag=melon_man_melon,nbt={OnGround:1b},scores={death_timer=..98}] at @s run function fighter:melon_man/melon_explode