##set's Chicken's stats.


##Combo multipliers are divided by 100
scoreboard players set @s combo_multiplier 55

##Combo should always start at 0
scoreboard players set @s combo 0

##Starting knockback.
scoreboard players set @s base_knockback 2

##Addition decimal number of base knockback (100 = 1)
scoreboard players set @s base_kb_decimal 49

##Best knockback
scoreboard players set @s max_knockback 3

##Times hit before air jumps are as weak as they can be
scoreboard players set @s max_damage 20

##Should always start at 0
scoreboard players set @s times_hit 0

##This score will be copied to their extra jumps score when they touch the ground.
scoreboard players set @s set_extra_jumps 5

##Ticks they will by default have their air jumps for
scoreboard players set @s set_e_jump_time 6

##Levitation amplifier for extra jumps
scoreboard players set @s extra_jump_force 18

##Jump boost amplifier
scoreboard players set @s jump_force 3